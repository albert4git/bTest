import vim
from itertools import dropwhile


def python_input(message='input'):
    vim.command('call inputsave()')
    vim.command("let user_input = input('" + message + ": ')")
    vim.command('call inputrestore()')
    return vim.eval('user_input')


def wrap_with():
    the_chars = {
        "[": "]",
        "['": "']",
        '["': '"]',
        "(": ")",
        "('": "')",
        '("': '")',
        "": ")"
    }
    the_word = vim.eval('expand("<cword>")')
    current_line = vim.current.line
    wrap_name = python_input("Wrap with")
    cursor_pos = vim.current.window.cursor
    open_char_gen = dropwhile(lambda x: x not in ["[", "(", "'", '"'],
                              wrap_name)
    open_char = "".join(open_char_gen)
    courtesy_opener = "" if open_char else "("
    vim.current.buffer[cursor_pos[0] - 1] = current_line.replace(
        the_word, "{}{}{}{}".format(wrap_name, courtesy_opener, the_word,
                                    the_chars[open_char]))
