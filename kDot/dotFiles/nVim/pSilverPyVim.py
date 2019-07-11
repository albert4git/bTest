import vim


def python_input(message='input'):
    vim.command('call inputsave()')
    vim.command("let user_input = input('" + message + ": ')")
    vim.command('call inputrestore()')
    return vim.eval('user_input')


def silver_search():
    search_args = python_input("Search For")
    if search_args:
        vim.command('silent grep! "{}"'.format(search_args))
        vim.command('redraw!')
        vim.command('redrawstatus!')
        vim.command('copen')


silver_search()
