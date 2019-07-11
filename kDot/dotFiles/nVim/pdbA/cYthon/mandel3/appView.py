#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
"""
A simple app to show mandelbrot fractals.
"""

import time
import numpy as np
import wx

import mandelcy  # this is the cython module that does the real work.


class BitmapWindow(wx.Window):
    """
    A simple window to display a bitmap from a numpy array
    """

    def __init__(self, parent, bytearray, *args, **kwargs):
        wx.Window.__init__(self, parent, *args, **kwargs)

        self.bytearray = bytearray
        self.Bind(wx.EVT_PAINT, self.OnPaint)

    def OnPaint(self, evt):
        dc = wx.PaintDC(self)
        w, h = self.bytearray.shape[:2]
        bmp = wx.BitmapFromBuffer(w, h, self.bytearray)
        dc.DrawBitmap(bmp, 50, 0)


class DemoFrame(wx.Frame):
    def __init__(self, title="Mandelbrot Demo"):
        wx.Frame.__init__(
            self, None, -1, title
        )  #, size = (800,600), style=wx.DEFAULT_FRAME_STYLE|wx.NO_FULL_REPAINT_ON_RESIZE)

        # create the array and bitmap:
        self.bytearray = np.zeros((500, 500, 3), dtype=np.uint8) + 125

        self.BitmapWindow = BitmapWindow(
            self, self.bytearray, size=self.bytearray.shape[:2])

        sizer = wx.BoxSizer(wx.VERTICAL)
        sizer.Add(self.BitmapWindow, 0, wx.ALIGN_CENTER | wx.ALL, 10)
        # set up the buttons
        sizer.Add(self.SetUpTheButtons(), 0, wx.EXPAND)
        self.SetSizerAndFit(sizer)

        self.colours = make_palette()

    def SetUpTheButtons(self):
        RunButton = wx.Button(self, wx.NewId(), "Run")
        RunButton.Bind(wx.EVT_BUTTON, self.OnRun)

        self.IterSlider = wx.Slider(
            self,
            wx.ID_ANY,
            value=20,
            minValue=20,
            maxValue=10000,
            size=(250, -1),
            style=wx.SL_HORIZONTAL | wx.SL_AUTOTICKS | wx.SL_LABELS)

        QuitButton = wx.Button(self, wx.NewId(), "Quit")
        QuitButton.Bind(wx.EVT_BUTTON, self.OnQuit)

        self.Bind(wx.EVT_CLOSE, self.OnQuit)

        sizer = wx.BoxSizer(wx.HORIZONTAL)
        sizer.Add((1, 1), 1)
        sizer.Add(RunButton, 0, wx.ALIGN_CENTER | wx.ALL, 4)
        sizer.Add((1, 1), 1)
        sizer.Add(self.IterSlider, 0, wx.ALIGN_CENTER | wx.ALL, 4)
        sizer.Add((1, 1), 1)
        sizer.Add(QuitButton, 0, wx.ALIGN_CENTER | wx.ALL, 4)
        sizer.Add((1, 1), 1)
        return sizer

    def OnRun(self, Event):
        width, height = self.bytearray.shape[:2]

        min_x = -1.5
        max_x = 0
        min_y = -1.5
        # max_y is calulated from X, to keep it symetric

        nb_iterations = self.IterSlider.Value
        print "Calculating with %i interations:" % nb_iterations
        start = time.clock()
        mandelcy.create_fractal(min_x, max_x, min_y, nb_iterations,
                                self.colours, self.bytearray)
        print "it took %f seconds to run" % (time.clock() - start)
        self.Refresh()

    def OnStop(self, Event=None):
        self.Timer.Stop()

    def OnQuit(self, Event):
        self.Destroy()


def make_palette():
    '''sample coloring scheme for the fractal - feel free to experiment

        No need for this to be in Cython
    '''
    colours = []

    for i in range(0, 25):
        #colours.append('#%02x%02x%02x' % (i*10, i*8, 50 + i*8))
        colours.append((i * 10, i * 8, 50 + i * 8), )
    for i in range(25, 5, -1):
        #colours.append('#%02x%02x%02x' % (50 + i*8, 150+i*2,  i*10))
        colours.append((50 + i * 8, 150 + i * 2, i * 10), )
    for i in range(10, 2, -1):
        #colours.append('#00%02x30' % (i*15))
        colours.append((0, i * 15, 48), )
    return np.array(colours, dtype=np.uint8)


app = wx.PySimpleApp(0)
frame = DemoFrame()
frame.Show()
app.MainLoop()
