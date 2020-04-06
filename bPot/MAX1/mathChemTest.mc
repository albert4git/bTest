#! /bin/sh
#
# test.sh
# Copyright (C) 2020 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#


pwd
ls

integrate(x/(x^3 + 1), x);

diff(%, x);

ratsimp(%);

p: (x^3 + x^2)^2*(3*x^2 + 2*x);
p2: expand(p);

plot2d (sin(x), [x, -2*%pi, 2*%pi]);



a : matrix ([ 3] , [ 1]);
b : matrix ([ -1] , [ 4]);
if get ( ’ mathchem , ’ version ) = false then load ( mathchem ) $
plot_2Dvektor (a , b , a + b ) ;

plot_2Dvektor (a , b , a - b ) ;
plot_2Dvektor (a , b , 3* a +2* b ) ;
plot_2Dvektor (a , 2* a ) ;
plot_2Dvektor (a , -1* a ) ;
plot_2Dvektor (a , -a ) ;

a : matrix ([ 1] , [ 2] , [ 4]);
b : matrix ([ 0] , [ -2] , [ 7]);
c : matrix ([ 5] , [ 7] , [ -3]);
a.b;
b.a;
a .( b + c );
a.b + a.c;
2*( a . b );
(2* a ). b ;
a .(2* b );


if get ( ’ mathchem , ’ version ) = false then load ( mathchem ) $
a : matrix ([ 1] , [ 2] , [ 3]);
b : matrix ([ -2] , [ 0] , [ 7]);
plot_gerade (a , b , 3.5);
plot_gerade (a , b , -2.2);
plot_gerade (a , b , 0);

#============================================================

A : matrix ([1 , 2  , 2 , 3] ,
            [2 , -3 , 5 , 6] ,
            [3 , 0  , 2 , 1] ,
            [2 , -3 , 4 , 1]);

U1 : diagmatrix (4 , 1) $

U1 [3 , 3] : 1/3 $

U1;

U1.A;

#===========================================

determinant ( A );

rowop (A , 3 , 3 , 1 -(1/3));

rowswap (A , 2 , 4);

invert ( A );

a1 : col (A , 1);
a2 : col (A , 2);
a3 : col (A , 3);

load ( eigen );
transpose ( a1 ). a1 ;
transpose ( a2 ). a2 ;
transpose ( a3 ). a3 ;

B : transpose ( A );
B.A;
expand (B - invert ( A ));

#============================================================

B : matrix ([9 , 2 , 3] ,
        [1 , 3 , 6] ,
        [2 , 4 , 6]);

determinant ( B );

determinant ( A . B );

#============================================================

A : matrix ([1 , 2 , 3] ,
        [2 , -3 , 6] ,
        [3 , 0 , 1]);
if get ( ’ mathchem , ’ version ) = false then load ( mathchem ) $
UMAT3 (3 ,3, 1 , -3). A ;
UMAT3 (3 ,2, 1 , -2).%;
UMAT1 (3 ,2, -1/7) .%;
UMAT3 (3 ,3, 2 , 6) .%;
UMAT1 (3 ,3, -1/8) .%;
UMAT3 (3 ,1, 2 , -2).%;
UMAT3 (3 ,1, 3 , -3).%;
















#============================================================



#============================================================
