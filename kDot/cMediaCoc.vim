code hint window

Coc.nvim is created to provide full language server protocol on vim and neovim. It’s possible to create coc.nvim extension to enhance capability of coc.nvim, this post is made to help you understand why coc extensions are created and what benefits can you have with it.
Without extension, you only get partial support from language server.

    Language server extension of VSCode can provide lots of configurations, some used by language server and some are used by client for language server. Without extension for each language server it’s only possible to pass server configurations.
    Some features have to be implemented on the client. For example, eclipse.jdt.ls use jdt as uri schema of code from compressed jar file, your vim need to understand jdt schema to send correct request to server for document content. You can configure your vim to do this, but with coc-java it just works.
    Extensions can make use of custom language server request/notification easier, for example, coc-rls use custom notification from server to indicate the server status in your statusline.
    Sometimes we need some tweak of response from language server, for example, the completion items from json-languageservice would also have " at the beginning and end of complete items, but we don’t need them when " already exists. So coc-json fix it by use middleware feature of language client module. Note: this kind of issues exists because VSCode never insert text on navigation, but many vim users use <C-n> and <C-p> for navigation which would insert word of selected item and they would expected it just work without confirm completion.

Advantages of coc.nvim extensions.

If your requirement is quite simple, it would be most efficient to be implemented in viml, but if you have some knowledge with javascript/typescript and want to build something advanced, it would worth a try with coc.nvim extension. There are some unique benefits you can have compare to vim or python extension.

    Advanced async support. Like other neovim remote plugins, you can send notification to vim or your plugin to avoid block of code execution. With coc.nvim, you can also send async request to vim or send async request to node process. For example, CocRequestAsync() can be used to send async request to language server, it takes a callback function as argument for response from server. Coc vim sources also takes a callback for send completion response to node process of coc.nvim, so the completion implementation can use job feature of vim to avoid the block of vim.
    Optimized for performance. You can use document models of coc.nvim to get all buffer content and/or register for change events, no need for additional transform from vim. nvim.pauseNotification() and nvim.resumeNotification() can be used for reduce redraw when sequence of notifications are send to vim especially highlight commands. Those two methods are made to make nvim_call_atomic method easier to use.
    Use javascript module from node community. Which is the biggest one, but be careful to choose good modules.
    Use API of coc.nvim. There’s not only language server specific API provided, but also API for create completion sources and list sources.
    Compatible with both vim and neovim. Requirement of vim-node-rpc and python on vim8 was removed, coc.nvim can just work on vim8 and neovim. By using the Task and Terminal module of coc.nvim you can use job and terminal on vim without worry about the API difference on vim and neovim.
    More reliable. With the help of typescript, your code can be more stronger compare to viml or python which doesn’t have types.
    Easier for configuration. Same as VSCode, For most configurations, coc.nvim can watch for configuration change and adjust it’s behavior without restart vim or anything else.
    Faster reload. You can restart coc server by use :CocRestart command which would reload all extensions as well. Even better, you can specify g:coc_watch_extensions list in your vimrc and with watchman installed, your extension would be reloaded just after changed.
    Debug your extension. The easier way is use console.log in extension code, and then get the result from log of coc.nvim, use :CocOpenLog to get your log file. To debug in Chrome, you can addlet g:coc_node_args = ['--nolazy', '--inspect-brk=6045'] to your vimrc, then open chrome://inspect to get the debugger target.

Examples of none LSP extensions.

    coc-emmet completion of emmet.
    coc-highlight highlight document words and colors.
    coc-lists some common lists.
    coc-pairs insert pairs automatically like VSCode.
    coc-snippets snippets solution.
    coc-yank yank highlights and lists.
    coc-git git chunks, git status and some git lists.

Some of them are not quite featured so please read the documentation and make your choice.

Search coc.nvim on npm to get the full list.

A simple example of coc.nvim extension.

Let’s make a completion source of coc.nvim to get emails from lbdbq command.

First, find your config home by :echo coc#util#get_config_home() , it would be ~/.vim normally. Then navigate to that folder and run command mkdir coc-extensions && touch address.js to create your custom extensions folder and the file address.js .

In your address.js add code:

Note: all javascript files in coc-extensions folder would be loaded as extension of coc.nvim, it can’t support package.json right now.

Conclusion

By create coc extension, it’s now much easier to add powerful capabilities for both vim and neovim.

Next time, I will make an introduction to CocList feature, which is made to be fast and featured.
