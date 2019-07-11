import vim

# not vim import * beacuse this instraction delete builtins function eval


def EvaluateCurrentLine(*args):
    cur_str = vim.current.line
    action, symb = None, None
    for i in args:
        if i in ["r", "p"]:
            action = i
        else:
            symb = i
            try:
                start = cur_str.rindex(symb) + len(symb)
            except:
                print("EvalExept")

                start = 0
                result = eval(cur_str[start:], globals())
                if action == "r":
                    vim.current.line = cur_str[:start] + str(result)
                else:
                    print(result)


import vim
import os.path
import os
fpath = vim.current.buffer.name
atime = os.path.getatime(fpath)
mtime = os.path.getmtime(fpath)
vim.command("w")
os.utime(fpath, (atime, mtime))
