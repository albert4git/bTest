call deoplete#sources#padawan#InstallServer()
call deoplete#sources#padawan#InstallServer()

Introduction		|deoplete-introduction|
Install			|deoplete-install|
Interface		|deoplete-interface|
  Options		  |deoplete-options|
  Variables		  |deoplete-variables|
  Key mappings		  |deoplete-key-mappings|
  Functions		  |deoplete-functions|
  Custom Functions	  |deoplete-custom-functions|
Examples		|deoplete-examples|
Sources			|deoplete-sources|
Create source		|deoplete-create-source|
  Source attributes       |deoplete-source-attributes|
  Candidate attributes    |deoplete-candidate-attributes|
Create filter		|deoplete-create-filter|
FILTERS			|deoplete-filters|
External sources	|deoplete-external-sources|
External plugins	|deoplete-external-plugins|
FAQ			|deoplete-faq|
Compatibility		|deoplete-compatibility|

==============================================================================
INTRODUCTION					*deoplete-introduction*

*deoplete* is the abbreviation of "dark powered neo-completion".  It
provides asynchronous keyword completion system in the
current buffer.

Note: deoplete may consume more memory than other plugins do.

Improvements in deoplete in comparison to |neocomplete|:

1. Real asynchronous completion behavior like |YouCompleteMe| by default.
2. Uses Python3 to implement sources.
3. Removes legacy interface.
4. Requires |+python3|.

==============================================================================
INSTALL							*deoplete-install*

Note: deoplete requires Neovim (0.3.0+) or Vim8 (latest is recommended) with
Python3.6.1+ and |+timers| enabled.

Please install nvim-yarp plugin for Vim8.
https://github.com/roxma/nvim-yarp

Please install vim-hug-neovim-rpc plugin for Vim8.
https://github.com/roxma/vim-hug-neovim-rpc

1. Extract the files and put them in your Neovim or .vim directory
   (usually `$XDG_CONFIG_HOME/nvim/`).
2. Call |deoplete#enable()| or set "let g:deoplete#enable_at_startup = 1" in
   your `init.vim`/`vimrc`
3. Execute the ":UpdateRemotePlugins" if Neovim.

If ":echo has('python3')" returns `1`, then you're done; otherwise, see below.

You can enable Python3 interface with pip: >

    pip3 install --user pynvim

Note: deoplete needs neovim-python ver.0.3.0+.
You need update neovim-python module.
>
    pip3 install --user --upgrade pynvim
<
If you want to read for Neovim-python/python3 interface install documentation,
you should read |provider-python| and the Wiki.
https://github.com/deoplete-plugins/deoplete-jedi/wiki/Setting-up-Python-for-Neovim

You can check the Python3 installation by using the |:checkhealth| command.

==============================================================================
INTERFACE						*deoplete-interface*

------------------------------------------------------------------------------
OPTIONS	 					*deoplete-options*

Options can be toggled through the use of |deoplete#custom#option()|.

For example:

>
    " Set a single option
    call deoplete#custom#option('auto_complete_delay', 200)

    " Pass a dictionary to set multiple options
    call deoplete#custom#option({
    \ 'auto_complete_delay': 200,
    \ 'smart_case': v:true,
    \ })
<

The set of available options follows.

					*deoplete-options-auto_complete*
auto_complete
		If it is False, automatic completion becomes invalid, but can
		use the manual completion by |deoplete#manual_complete()|.

		Default value: v:true

					*deoplete-options-auto_complete_delay*
auto_complete_delay
		Delay the completion after input in milliseconds.

		Default value: 0 (miliseconds)

					*deoplete-options-auto_refresh_delay*
auto_refresh_delay
		Delay the refresh when asynchronous.
		If it is less than equal 0, the feature is disabled.

		Default value: 20 (miliseconds)

						*deoplete-options-camel_case*
camel_case
		If it is True, lowercase letters are also matched with the
		corresponding uppercase ones.
		Ex: "foB" is matched with "FooBar" but not with "foobar".
		Note: This feature is only available in
		|deoplete-filter-matcher_fuzzy| or
		|deoplete-filter-matcher_full_fuzzy|.

		Default value: v:false

					*deoplete-options-candidate_marks*
candidate_marks
		The candidate additional marks.

		Default value: []
>
		call deoplete#custom#option('candidate_marks',
		      \ ['A', 'S', 'D', 'F', 'G'])
		inoremap <expr>A       deoplete#insert_candidate(0)
		inoremap <expr>S       deoplete#insert_candidate(1)
		inoremap <expr>D       deoplete#insert_candidate(2)
		inoremap <expr>F       deoplete#insert_candidate(3)
		inoremap <expr>G       deoplete#insert_candidate(4)
<
						*deoplete-options-ignore_case*
ignore_case
		If it is True, deoplete ignores case.

		Default value: same with your 'ignorecase' value

					*deoplete-options-ignore_sources*
ignore_sources
		It is a dictionary to decide ignore source names.
		The key is filetype and the value is source names list.

		Default value: {}

					*deoplete-options-keyword_patterns*
keyword_patterns
		It defines the keyword patterns for completion.
		This is appointed in regular expression string or list every
		file type.
		Note: It is Python3 regexp.  But "\k" is converted to
		'iskeyword' pattern.
>
		call deoplete#custom#option('keyword_patterns', {
		\ '_': '[a-zA-Z_]\k*',
		\ 'tex': '\\?[a-zA-Z_]\w*',
		\ 'ruby': '[a-zA-Z_]\w*[!?]?',
		\})
<
		Default value: {}

						*deoplete-options-max_list*
max_list
		Show up to this limit candidates.

		Default value: 500

					*deoplete-options-num_processes*
num_processes
		The number of processes used for the deoplete parallel
		feature.
		If it is 1, this feature is disabled.
		If it is less than or equal to 0, the number of processes is
		equal to that of sources.

		Default value: 4

					*deoplete-options-omni_patterns*
omni_patterns
		If omni_patterns is set, deoplete will call 'omnifunc'
		directly as soon as a pattern is matched.
		Note: This will disable deoplete filtering and combination of
		sources for those matches.  Suggested use is only for legacy
		omnifunc plugins which do not return all results when provided
		an empty base argument or moves the cursor in omnifunc.  See
		|complete-functions|

		If this pattern is not defined or empty for a filetype,
		deoplete does not call 'omnifunc'.

		Note: It is a Vim regexp.
>
		call deoplete#custom#option('omni_patterns', {
		\ 'java': '[^. *\t]\.\w*',
		\  'html': ['<', '</', '<[^>]*\s[[:alnum:]-]*'],
		\  'xhtml': ['<', '</', '<[^>]*\s[[:alnum:]-]*'],
		\  'xml': ['<', '</', '<[^>]*\s[[:alnum:]-]*'],
		\})
<
		Default value: {}

					*deoplete-options-on_insert_enter*
on_insert_enter
		Deoplete enables the auto completion on |InsertEnter| autocmd
		if this value is True.

		Default value: v:true

					*deoplete-options-on_text_changed_i*
on_text_changed_i
		Deoplete enables the auto completion on |TextChangedI| autocmd
		if this value is True.

		Default value: v:true

						*deoplete-options-profile*
profile
		If it is True, deoplete will print the time information to
		|deoplete#enable_logging()| logfile.
		Must be set in init.vim/vimrc before starting Neovim/Vim.
		Does not support command line.

		Default value: v:false

					*deoplete-options-prev_completion_mode*
prev_completion_mode
		It changes previous completion behavior.
		It reduces popup flicker.

		"filter": Filter previous completion
		"length": Filter previous completion like
		|deoplete-filter-matcher_length|.
		"mirror": Displays previous completion.  It is useful for
		deoplete-tabnine.
		otherwise: Disable previous completion feature.

		Default value: "filter"

					*deoplete-options-refresh_always*
refresh_always
		Deoplete refreshes the candidates automatically if this value
		is True.
		Note: It increases the screen flicker.

		Default value: v:true

					*deoplete-options-skip_multibyte*
skip_multibyte
		Deoplete skip multibyte text completion automatically if this
		value is True.

		Default value: v:false

						*deoplete-options-skip_chars*
skip_chars
		The list of skip characters in the auto completion.

		Default value: ['(', ')']

						*deoplete-options-smart_case*
smart_case
		When a capital letter is included in input, deoplete does
		not ignore the upper- and lowercase.

		Default value: same with your 'smartcase' value

					*deoplete-options-sources*
sources
		It is a dictionary to specify source names.  The key is
		filetype and the value is source names list.  If the key is
		"_", the value will be used for default filetypes.  For
		example, you can load some sources in C++ filetype.
		If the value is [], it will load all sources.

		Default value: {}
>
		" Example:
		call deoplete#custom#option('sources', {
		\ '_': ['buffer'],
		\ 'cpp': ['buffer', 'tag'],
		\})

					*deoplete-options-min_pattern_length*
min_pattern_length
		The default number of the input completion at the time of key
		input automatically.

		Note: You should change
		|deoplete-source-attribute-min_pattern_length|.

		Default: 2

						*deoplete-options-yarp*
yarp
		Use nvim-yarp library instead of neovim remote plugin feature.
		Note: nvim-yarp plugin is needed.
		https://github.com/roxma/nvim-yarp

		Default value: v:false

------------------------------------------------------------------------------
VARIABLES	 					*deoplete-variables*

						*g:deoplete#enable_at_startup*
g:deoplete#enable_at_startup
		Deoplete gets started automatically when Neovim/Vim starts if
		this value is 1.

		Default: 0
		Note: It means you cannot use deoplete unless you start it
		manually.

------------------------------------------------------------------------------
FUNCTIONS 						*deoplete-functions*

							*deoplete#disable()*
deoplete#disable()
		Disable deoplete auto completion.
		Note: It changes the global state.

							*deoplete#enable()*
deoplete#enable()
		Enable deoplete auto completion.
		Note: It changes the global state.
		Note: It does not work in lazy loading.  You should use
		|g:deoplete#enable_at_startup| instead.

						*deoplete#enable_logging()*
deoplete#enable_logging({level}, {logfile})
		Enable logging for debugging purposes.
		Set {level} to "DEBUG", "INFO", "WARNING", "ERROR", or
		"CRITICAL".
		{logfile} is the file where log messages are written.
		Messages are appended to this file.  Each log session will
		start with "--- Deoplete Log Start ---".
		Note: You must enable
		|deoplete-source-attribute-is_debug_enabled| to debug the
		sources.

						*deoplete#initialize()*
deoplete#initialize()
		Initialize deoplete and sources.
		Note: You should call it in |VimEnter| autocmd.
		User customization for deoplete must be set before
		initialization of deoplete.
						*deoplete#send_event()*
deoplete#send_event({event}, [{sources}])
		Call |deoplete-source-attribute-on_event| manually.
		{event} is event name.  {sources} are sources list.

							*deoplete#toggle()*
deoplete#toggle()
		Toggle deoplete auto completion.
		Note: It changes the global state.


CUSTOM FUNCTIONS 				*deoplete-custom-functions*

					*deoplete#custom#buffer_filter()*
deoplete#custom#buffer_filter({option-name}, {value})
deoplete#custom#buffer_filter({dict})
		The buffer local version of |deoplete#custom#filter()|.

					*deoplete#custom#buffer_option()*
deoplete#custom#buffer_option({option-name}, {value})
deoplete#custom#buffer_option({dict})
		The buffer local version of |deoplete#custom#option()|.

					*deoplete#custom#buffer_var()*
deoplete#custom#buffer_var({source-name}, {var-name}, {value})
deoplete#custom#buffer_var({source-name}, {dict})
		The buffer local version of |deoplete#custom#var()|.

						*deoplete#custom#filter()*
deoplete#custom#filter({filter-name}, {var-name}, {value})
deoplete#custom#filter({filter-name}, {dict})
		Set {filter-name} source specialized variable {variable-name}
		to {value}.  You may specify multiple sources with the
		separator "," in {filter-name}.
		If {dict} is available, the key is {option-name} and the value
		is {value}.

						*deoplete#custom#option()*
deoplete#custom#option({option-name}, {value})
deoplete#custom#option({dict})
		Set {option-name} option to {value}.
		If {dict} is available, the key is {option-name} and the value
		is {value}.

						*deoplete#custom#source()*
deoplete#custom#source({source-name}, {option-name}, {value})
deoplete#custom#source({source-name}, {dict})
		Set {source-name} source specialized {option-name}
		to {value}. You may specify multiple sources with
		separating "," in {source-name}.
		If {source-name} is "_", sources default option will be
		change.
		If {dict} is available, the key is {option-name} and the value
		is {value}.
		Note: You must call it before using deoplete.
>
		" Examples:

		" Use head matcher instead of fuzzy matcher
		call deoplete#custom#source('_',
		\ 'matchers', ['matcher_head'])

		" Use auto delimiter feature
		call deoplete#custom#source('_', 'converters',
		\ ['converter_auto_delimiter', 'remove_overlap'])

		call deoplete#custom#source('buffer',
		\ 'min_pattern_length', 9999)

		" Change the source rank
		call deoplete#custom#source('buffer', 'rank', 9999)

		" Enable buffer source in C/C++ files only.
		call deoplete#custom#source('buffer',
		\ 'filetypes', ['c', 'cpp'])

		" Disable the candidates in Comment/String syntaxes.
		call deoplete#custom#source('_',
		\ 'disabled_syntaxes', ['Comment', 'String'])

		" Change the truncate width.
		call deoplete#custom#source('javacomplete2',
		\ 'max_abbr_width', 20)
		call deoplete#custom#source('javacomplete2',
		\ 'max_menu_width', 80)

		" Disable the truncate feature.
		call deoplete#custom#source('javacomplete2',
		\ 'max_abbr_width', 0)
		call deoplete#custom#source('javacomplete2',
		\ 'max_menu_width', 0)

		" Change the source mark.
		call deoplete#custom#source('buffer', 'mark', '*')
		" Disable the source mark.
		call deoplete#custom#source('omni', 'mark', '')

		" Enable jedi source debug messages
		" call deoplete#custom#option('profile', v:true)
		" call deoplete#enable_logging('DEBUG', 'deoplete.log')
		" call deoplete#custom#source('jedi', 'is_debug_enabled', 1)
<
							*deoplete#custom#var()*
deoplete#custom#var({source-name}, {var-name}, {value})
deoplete#custom#var({source-name}, {dict})
		Set {source-name} source specialized variable {variable-name}
		to {value}.  You may specify multiple sources with the
		separator "," in {source-name}.
		If {dict} is available, the key is {option-name} and the value
		is {value}.

------------------------------------------------------------------------------
KEY MAPPINGS 					*deoplete-key-mappings*

						*deoplete#auto_complete()*
deoplete#auto_complete([{event}])
		It calls the auto completion of deoplete.  You can use it to
		call auto completion again.
		{event} is autocmd event name.  If it is omit, "Async" is
		used.

						*deoplete#close_popup()*
deoplete#close_popup()
		Insert candidate and close popup menu for deoplete.
		Note: It must be in |map-<expr>|.

					*deoplete#complete_common_string()*
deoplete#complete_common_string()
		complete common string in candidates.  It will be convenient
		when candidates have long common string.
		Note: It must be in |map-<expr>|.

						*deoplete#insert_candidate()*
deoplete#insert_candidate({number})
		Insert {number}th candidate.
		Note: It must be in |map-<expr>|.

						*deoplete#manual_complete()*
deoplete#manual_complete([{sources}])
		It calls the completion of deoplete.  You can use it with
		custom completion setups.
		You can provide a list of {sources}: It can be the name of a
		source or a list of sources name.
		Note: It blocks your Neovim/Vim.
		Note: It must be in |map-<expr>|.

		If you want to trigger deoplete manually, see also
		|deoplete-options-auto_complete|, which should be 1 then
		typically.
>
		inoremap <silent><expr> <TAB>
		\ pumvisible() ? "\<C-n>" :
		\ <SID>check_back_space() ? "\<TAB>" :
		\ deoplete#mappings#manual_complete()
		function! s:check_back_space() abort "{{{
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~ '\s'
		endfunction"}}}
<
					*deoplete#refresh()*
deoplete#refresh()
		Refresh the candidates.
		Note: It must be in |map-<expr>|.
>
		inoremap <expr><C-l>     deoplete#refresh()
<
				*deoplete#smart_close_popup()*
deoplete#smart_close_popup()
		Insert candidate and re-generate popup menu for deoplete.
		Note: It must be in |map-<expr>|.
>
		inoremap <expr><C-h>
		\ deoplete#smart_close_popup()."\<C-h>"
		inoremap <expr><BS>
		\ deoplete#smart_close_popup()."\<C-h>"
<
		Note: This mapping conflicts with |SuperTab| or |endwise|
		plugins.
		Note: This key mapping is for <C-h> or <BS> keymappings.

					*deoplete#undo_completion()*
deoplete#undo_completion()
		Undo inputted candidate.
		Note: It must be in |map-<expr>|.
>
		inoremap <expr><C-g>     deoplete#undo_completion()
<
==============================================================================
EXAMPLES						*deoplete-examples*
>
	" Use deoplete.
	let g:deoplete#enable_at_startup = 1
	" Use smartcase.
	call deoplete#custom#option('smart_case', v:true)

	" <CR>: close popup and save indent.
	inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
	function! s:my_cr_function() abort
	  return deoplete#close_popup() . "\<CR>"
	endfunction
<
==============================================================================
SOURCES							*deoplete-sources*

around						    *deoplete-source-around*
		This source collects candidates around the cursor, namely
		inside current buffer.  Plus, it searches keywords in
		|:changes| command output.  Therefore, this source provides
		the words that are in sight or the ones you've just typed
		somewhere else.

		Legend: You can see where the words came from. Next to the
		source mark [~] these suffixes are used:
		    A - above the cursor
		    B - below the cursor
		    C - in changes

		By default, around has a fixed range of looking for words
		20 lines above and below your cursor position. You are able
		to customize its settings through custom source variables.
		Note: There are no events for changing this. Configuration
		should be done before the source initializes.
>
		" Using custom variables to configure values
		" - range_above = Search for words N lines above.
		" - range_below = Search for words N lines below.
		" - mark_above = Mark shown for words N lines above.
		" - mark_below = Mark shown for words N lines below.
		" - mark_changes = Mark shown for words in the changelist.
		call deoplete#custom#var('around', {
		\   'range_above': 15,
		\   'range_below': 15,
		\   'mark_above': '[↑]',
		\   'mark_below': '[↓]',
		\   'mark_changes': '[*]',
		\})
<

		rank: 300

buffer						*deoplete-source-buffer*
		This source collects keywords from current buffer and the
		current tabpage windows buffers and the opened buffers which
		have same 'filetype'.

		Note: It does not collect keywords from not loaded buffer.
		For example, if you open file by "nvim A B".  A is already
		loaded, but B is not loaded.  So buffer source cannot collect
		the keywords in B until you switch to buffer B.

		Note: It takes time to get the candidates in the first time if
		you want to edit the large files (like Vim 22000 lines eval.c).

		rank: 100

		Source custom variables:
		require_same_filetype
				If it is False, deoplete collects keywords from
				buffers of any filetype
				(default: v:true)

dictionary					*deoplete-source-dictionary*
		This source collects |deoplete-options-keyword_patterns|
		keywords from 'dictionary'.
		Note: It uses buffer-local 'dictionary' set up.
		Note: It also supports directory.

		rank: 100
>
		" Examples:
		" Sample configuration for dictionary source with multiple
		" dictionary files.
		setlocal dictionary+=/usr/share/dict/words
		setlocal dictionary+=/usr/share/dict/american-english
		" Remove this if you'd like to use fuzzy search
		call deoplete#custom#source(
		\ 'dictionary', 'matchers', ['matcher_head'])
		" If dictionary is already sorted, no need to sort it again.
		call deoplete#custom#source(
		\ 'dictionary', 'sorters', [])
		" Do not complete too short words
		call deoplete#custom#source(
		\ 'dictionary', 'min_pattern_length', 4)
<
file							*deoplete-source-file*
		This source collects keywords from local files. Specifically,
		it completes file and directory names and paths, e.g.
		/usr/lib/share.

		rank: 150

		Source custom variables:
		enable_buffer_path
				If it is True, file source completes the files
				from the buffer path instead of the current
				directory.
				(default: v:true)

		force_completion_length
				The completion length if the input does not
				contain "/".
				If it is less than 0, it is disabled.
				(default: -1)

member						*deoplete-source-member*
		This source collects members from current buffer.

		rank: 100

		Source custom variables:
		prefix_patterns
				This dictionary records prefix patterns to
				member completion.  This is appointed in
				regular expression string or list every file
				type.  If this pattern is not defined or
				empty, deoplete does not complete member
				candidates.
				Note: It is Python3 regexp.
				(default: See in member.py)

omni							*deoplete-source-omni*
		This source collects keywords from 'omnifunc'.
		Note: It is not asynchronous.

		rank: 500

		Source custom variables:
		functions
				It defines a dictionary for omni completion
				with deoplete:
				- `keys` consist of filetypes;
				- `values` consist of either a string
				  containing a single omnifunc or a list with
				  omnifuncs to be used for each filetype.
				In case there is no omnifunc setting for the
				current filetype in the dictionary, deoplete
				will use the 'omnifunc' setting.
				Note: It supports context filetype feature
				instead of 'omnifunc'.  You can call the
				omnifunc in the embedded language.
				Note: For omnifunctions to work with deoplete,
				it's necessary to setup the "input_patterns"
				setting.
				(default: {})
>
		call deoplete#custom#source('omni', 'functions', {
		    \ 'ruby':  'rubycomplete#Complete',
		    \ 'javascript': ['tern#Complete', 'jspc#omni']
		    \})
<
		input_patterns
				This dictionary records keyword patterns to
				Omni completion.  This is appointed in regular
				expression string or list every file type.  If
				this pattern is not defined or empty, deoplete
				does not call 'omnifunc'.
				Note: Some omnifuncs which moves the cursor is
				not worked.  For example, htmlcomplete,
				phpcomplete, etc...
				Note: It is Python3 regexp.
				(default: See in omni.py)
>
		call deoplete#custom#var('omni', 'input_patterns', {
		    \ 'ruby': ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::'],
		    \ 'java': '[^. *\t]\.\w*',
		    \ 'php': '\w+|[^. \t]->\w*|\w+::\w*',
		    \})
<
tag							*deoplete-source-tag*
		It collects keywords from |ctags| files.
		Note: It only supports UTF-8 encoded tag file.

		rank: 100

==============================================================================
FILTERS							*deoplete-filters*

					*deoplete-filter-matcher_default*
Default matchers: ['matcher_fuzzy']

	You can change it by |deoplete#custom#source()|.

					*deoplete-filter-sorter_default*
Default sorters: ['sorter_rank'].

	You can change it by |deoplete#custom#source()|.

					*deoplete-filter-converter_default*
Default converters: ['converter_remove_overlap', 'converter_truncate_abbr',
                     'converter_truncate_menu'].

	You can change it by |deoplete#custom#source()|.

					*deoplete-filter-matcher_cpsm*
matcher_cpsm
		A matcher which filters the candidates using cpsm.
		It is like |deoplete-filter-matcher_full_fuzzy| but faster.
		It also sorts the candidates using cpsm.
		Note: cpsm plugin build/install is needed in 'runtimepath'.
		https://github.com/nixprime/cpsm
		Note: You must use Python3 support enabled cpsm. >
			$ PY3=ON ./install.sh
<
		Configuration example: >
>
		call deoplete#custom#source('_', 'matchers', ['matcher_cpsm'])
		call deoplete#custom#source('_', 'sorters', [])
<
					*deoplete-filter-matcher_full_fuzzy*
matcher_full_fuzzy
		Full fuzzy matching matcher.
		It accepts partial fuzzy matches like YouCompleteMe.

					*deoplete-filter-matcher_fuzzy*
matcher_fuzzy	Fuzzy matching matcher.

				    	*deoplete-filter-matcher_head*
matcher_head	Head matching matcher.

					*deoplete-filter-matcher_length*
matcher_length
		Length matching matcher.
		It removes candidates shorter than or equal to the user input.

			      		*deoplete-filter-sorter_rank*
sorter_rank	Matched rank order sorter.  The higher the head matched word
		or already typed word.

		      			*deoplete-filter-sorter_word*
sorter_word	Word order sorter.

			  		*deoplete-filter-converter_auto_delimiter*
converter_auto_delimiter
		It adds "delimiters" variable characters in a candidate's
		word if the candidate's abbr contains the delimiters.

		Filter custom variables:
		delimiters
				Delimiters list.
				(default: ['/'])

					*deoplete-filter-converter_reorder_attr*
converter_reorder_attr

		Reorder candidates by their attributes in the order specified.
		See `:help complete-items` for the structure of candidate
		objects.

		For instance, you can choose which types of candidates appear
		first in the suggestion according to their attributes.

>
		call deoplete#custom#filter('attrs_order', {
		\ 'javascript': {
		\    		'kind': [
		\			'Function',
		\			'Property'
		\			]
		\ },
		\})
<

		This says: For Javascript files, I want to reorder candidates:

		1. Candidates which have a "kind" attribute containing
		'Function' should appear first.
		2. Candidates which have a "kind" attribute containing
		'Property' should appear second.
		3. Any other candidates appear at the bottom, if there is
		space.

		Complete menu - before:

		__constructor__     [Constructor]
		length 		    [Property]
		from 		    [Function]
		toString 	    [Function]


		Complete menu - after:

		from 		    [Function]
		toString 	    [Function]
		length 		    [Property]
		__constructor__     [Constructor]


		Note: Attribute values are compiled to python regex
		expressions, so you can match 'Function' with "Func" or
		'static void* callback(unsigned *int number)' with "call".

		You can specify multiple attributes and they will be processed
		in order.

		Additionally, you can filter out unwanted candidates by
		prefixing an attribute value with '!'. This character is only
		a flag and will be stripped out before compiling the
		expression.

>
		call deoplete#custom#filter('attrs_order', {
		\ 'ruby': {
		\    		'kind': [
		\			'!Class',
		\			],
		\
		\		'abbr': [
		\			'ExtensionClass'
		\			]
		\ },
		\})
<

		The example above says: For Ruby files, I want to reorder the
		candidates:
		1. Candidates which have a 'kind' attribute containing 'Class'
		will be filtered out of the list.
		After they have been removed, proceed to the next attribute.
		2. Candidates which have a 'abbr' attribute containing
		'ExtensionClass' will be moved to the top of the list.
		3. Any other candidates appear at the bottom, if there is
		space.

		Filter custom variables:
		attrs_order
				It should received a dictionary with mappings
				from filetypes to attributes, following the
				attribute expression syntax explained above.
				(default: {})

				*deoplete-filter-converter_auto_paren*
converter_auto_paren
		It adds parentheses character in a candidate's word.
		It is useful if you use |neopairs| or |neosnippet|
		plugins.

				*deoplete-filter-converter_remove_overlap*
converter_remove_overlap
		It removes overlapped text in a candidate's word.

				*deoplete-filter-converter_remove_paren*
converter_remove_paren
		It removes parentheses character in a candidate's word.

				*deoplete-filter-converter_truncate_abbr*
converter_truncate_abbr
		It truncates a candidate's abbr by the current window width.

				*deoplete-filter-converter_truncate_kind*
converter_truncate_kind
		It truncates a candidate's kind by the current window width.

				*deoplete-filter-converter_truncate_info*
converter_truncate_info
		It truncates a candidate's info by the current window width.

				*deoplete-filter-converter_truncate_menu*
converter_truncate_menu
		It truncates a candidate's menu by the current window width.

==============================================================================
CREATE SOURCE					*deoplete-create-source*

To create source, you should read default sources implementation in
rplugin/python3/deoplete/source/*.py.

The files are automatically loaded and deoplete creates new Source class
object.
Source class must extend Base class in ".base".

Note: The sources must be written in Python3 language.

Note: If you call Vim functions in your source, it is not asynchronous.

------------------------------------------------------------------------------
SOURCE ATTRIBUTES				*deoplete-source-attributes*

					*deoplete-source-attribute-__init__*
__init__	(Function)
		Source constructor.  It is always called in initializing.  It
		must call super() constructor.  This function takes {self} and
		{vim} as its parameters.

						*deoplete-source-attribute-__*
__{name}	(Unspecified)			(Optional)
		Additional source information.
		Note: Recommend sources save variables instead of
		global variables.

					*deoplete-source-attribute-converters*
converters	(List[str])			(Optional)
		Source default converters list.

		Default: |deoplete-filter-converter_default|

					*deoplete-source-attribute-description*
description	(String)			(Optional)
		The description of a source.

				*deoplete-source-attribute-disabled_syntaxes*
disabled_syntaxes
		(List[str])			(Optional)
		Source disabled syntaxes list.

		Default: []
		Note: It means this feature is ignored.

					*deoplete-source-attribute-dup*
dup
		(Bool)			(Optional)
		The candidates will be added even when the same word is
		already present.

		Default: v:true if |deoplete-source-attribute-filetypes| is
		set.

					*deoplete-source-attribute-events*
events		(List[str])			(Optional)
		List of events for which |deoplete-source-attribute-on_event|
		should get called.

		Default: `None`
		Note: It means that `on_event` gets called for all events.

					*deoplete-source-attribute-filetypes*
filetypes	(List[str])			(Optional)
		Available filetype list.

		Default: []
		Note: It means this source available in all filetypes.

				*deoplete-source-attribute-gather_candidates*
gather_candidates
		(Function)			(Required)
		It is called to gather candidates.
		It takes {self} and {context} as its parameter and returns a
		list of {candidate}.
		If the error is occurred, it must return None.
		{candidate} must be String or Dictionary contains
		|deoplete-candidate-attributes|.
		Here, {context} is the context information when the source is
		called (|deoplete-notation-{context}|).
		Note: The source must not filter the candidates by user input.
		It is |deoplete-filters| work.  If the source filter the
		candidates, user cannot filter the candidates by fuzzy match.

			*deoplete-source-attribute-get_complete_position*
get_complete_position
		(Function)			(Optional)
		It is called to get complete position.
		It takes {self} and {context} as its parameter and returns
		complete position in current line.
		Here, {context} is the context information when the source is
		called (|deoplete-notation-{context}|).

		Default: position using |deoplete-options-keyword_patterns|.
		Note: If |deoplete-source-attribute-is_bytepos| is True, it
		must return byte position.

				*deoplete-source-attribute-input_pattern*
input_pattern
		(String)			(Optional)
		If it is matched with input, deoplete ignores
		|deoplete-source-attribute-min_pattern_length|.
		It is useful for omni function sources.
		Note: It is Python3 regexp.

		Default: ''
		Note: It means this feature is ignored.

				*deoplete-source-attribute-input_patterns*
input_patterns
		(Dictionary)			(Optional)
		The dictionary version of
		|deoplete-source-attribute-input_pattern|.
		A key is filetype and a value is input pattern.
		Note: It is Python3 regexp.

					*deoplete-source-attribute-is_bytepos*
is_bytepos
		(Bool)				(Optional)
		If it is True,
		|deoplete-source-attribute-get_complete_position|
		returns byteposition instead of character position.
		It is useful for Vim script to create sources because Vim
		script string uses byte position.  Python string uses
		character position.

		Default: False

				*deoplete-source-attribute-is_debug_enabled*
is_debug_enabled
		(Bool)				(Optional)
		If it is True, the debug log feature is enabled in the source.

		Default: False

					*deoplete-source-attribute-is_silent*
is_silent
		(Bool)				(Optional)
		If it is True, the source messages are disabled.

		Default: False

					*deoplete-source-attribute-is_volatile*
is_volatile
		(Bool)				(Optional)
		If it is True, the source depends on the user input. It means
		that if this flag is set to False, deoplete will cache
		gather_candidates results and will not call gather_candidates
		on each input change. Only on_post_filter method will be
		called on each input change (if implemented).

		Default: False

					*deoplete-source-attribute-mark*
mark		(String)			(Optional)
		The mark of a source.

					*deoplete-source-attribute-matchers*
matchers	(List[str])			(Optional)
		Source default matchers list.

		Default: |deoplete-filter-matcher_default|

					*deoplete-source-attribute-matcher_key*
matcher_key	(String)			(Optional)
		Matcher compare key instead of "word".
		If it is empty string, the feature is disabled.

		Default: ''

				*deoplete-source-attribute-max_abbr_width*
max_abbr_width
		(Integer)			(Optional)
		If the candidate abbr length exceeds the length it will be cut
		down.
		If it is less than or equal to 0, it will be disabled.

		Default: 80

				*deoplete-source-attribute-max_candidates*
max_candidates
		(Integer)			(Optional)
		If the candidates are more than it, deoplete will ignore the
		filtering.

		Default: 500

				*deoplete-source-attribute-max_kind_width*
max_kind_width
		(Integer)			(Optional)
		If the candidate kind length exceeds the length it will be cut
		down.
		If it is less than or equal to 0, it will be disabled.

		Default: 40

				*deoplete-source-attribute-max_info_width*
max_info_width
		(Integer)			(Optional)
		If the candidate info length exceeds the length it will be cut
		down.
		If it is less than or equal to 0, it will be disabled.

		Default: 200

				*deoplete-source-attribute-max_menu_width*
max_menu_width
		(Integer)			(Optional)
		If the candidate menu length exceeds the length it will be cut
		down.
		If it is less than or equal to 0, it will be disabled.

		Default: 40

				*deoplete-source-attribute-max_pattern_length*
max_pattern_length
		(Integer)			(Optional)
		Ignored pattern length for completion.
		It is useful to edit BASE64 files.

		Default: 80

				*deoplete-source-attribute-min_pattern_length*
min_pattern_length
		(Integer)			(Optional)
		Length of pattern required for completion.

		Default: 2

					*deoplete-source-attribute-name*
name		(String)			(Required)
		The unique name of a source.

					*deoplete-source-attribute-on_event*
on_event	(Function)			(Optional)
		Called for |InsertEnter|, |BufWritePost|, |BufReadPost| and
		||VimLeavePre| autocommands, through |deoplete#send_event()|.
		It is useful to make cache.
		It takes {self} and {context} as its parameter.
>
		" Example:
		def on_event(self, context):
		    if context['event'] == 'BufWritePost':
			# BufWritePost
			pass
		    else:
			pass
<
					*deoplete-source-attribute-on_init*
on_init		(Function)			(Optional)
		It will be called before the source attribute is called.
		It takes {self} and {context} as its parameter.
		It should be used to initialize the internal variables.

				*deoplete-source-attribute-on_post_filter*
on_post_filter
		(Function)			(Optional)
		It is called after the candidates are filtered.
		It takes {self} and {context} as its parameter and returns a
		list of {candidate}.

					*deoplete-source-attribute-rank*
rank		(Integer)			(Optional)
		Source priority.  Higher values imply higher priority.
		Note: It is high priority than match position.

		Default: 100

					*deoplete-source-attribute-sorters*
sorters		(List[str])			(Optional)
		Source default sorters list.

		If you omit it, |deoplete-filter-sorter_default| is
		used.

					*deoplete-source-attribute-vars*
vars		(Dictionary)			(Optional)
		List of source customization variables.

{context}					*deoplete-notation-{context}*
		A dictionary to give context information.
		The followings are the primary information.

		bufnr			(Integer)
			The current effective buffer number in event.
			Note: It may not be same with current buffer.

		candidates		(List[dict])
			The current candidates.

		complete_position	(Integer)
			The complete position of current source.

			" Example:
			pattern : r'fruits\.'

				  01234567
			input   : fruits.

			complete_position : 7

		complete_str		(String)
			The complete string of current source.

		event			(String)
			The current event name.

		filetype		(String)
			Current 'filetype'.

		filetypes		(List[str])
			It contains current 'filetype', same
			filetypes and composite filetypes.

		input			(String)
			The input string of the current line, namely the part
			before the cursor.

		is_async		(Bool)
			If the gather is asynchronous, the source must set
			it to "True". A typical strategy for an asynchronous
			gather_candidates method to use this flag is to
			set is_async flag to True while results are being
			produced in the background (optionally, returning them
			as they become ready). Once background processing
			has completed, is_async flag should be set to False
			indicating that this is the last portion of the
			candidates.

	The below is an example of async deoplete source.
	If "context['is_async']" is True, the gather_candidates is called
	repeatedly.
>
	from deoplete.base.source import Base

	class Source(Base):
	    def __init__(self, vim):
	        super().__init__(vim)
	        self.name = 'async'
	        self.mark = '[async]'
	        self.rank = 1000
	        self._count = 0

	    def gather_candidates(self, context):
	        self._count += 1
	        context['is_async'] = self._count < 10
	        return [context['input'] + str(self._count)]
<
		is_refresh		(Bool)
			If the input is changed, it will be "True".


------------------------------------------------------------------------------
CANDIDATE ATTRIBUTES			*deoplete-candidate-attributes*

					*deoplete-candidate-attribute-name*
word		(String)			(Required)
		The completion word of a candidate. It is used for matching
		inputs.

					*deoplete-candidate-attribute-abbr*
abbr		(String)			(Optional)
		The abbreviation of a candidate. It is displayed in popup
		window.

					*deoplete-candidate-attribute-kind*
kind		(String)			(Optional)
		The kind of a candidate. It is displayed in popup window.

					*deoplete-candidate-attribute-menu*
menu		(String)			(Optional)
		The menu information of a candidate. It is displayed in popup
		window.

					*deoplete-candidate-attribute-info*
info		(String)			(Optional)
		The preview information of a candidate. If 'completeopt'
		contains "preview", it will be displayed in |preview-window|.

					*deoplete-candidate-attribute-dup*
dup		(Integer)			(Optional)
		If it is non zero, the item will be displayed in the popup
		menu when an item with the same word is already present.

==============================================================================
CREATE FILTER					*deoplete-create-filter*

To create filter, you should read default filters implementation in
rplugin/python3/deoplete/filter/*.py.

The files are automatically loaded and deoplete creates new Filter class object.
Filter class must extend Base class in ".base".

Note: The filters must be written in Python3 language.

------------------------------------------------------------------------------
FILTER ATTRIBUTES				*deoplete-filter-attributes*

					*deoplete-filter-attribute-__init__*
__init__	(Function)
		Filter constructor.  It will be called in initializing.  It
		must call Base constructor.  This function takes {self} and
		{vim} as its parameters.

					*deoplete-filter-attribute-name*
name		(String)			(Required)
		The unique name of a filter.

					*deoplete-filter-attribute-filter*
filter
		(Function)			(Required)
		It is called to filter candidates.
		It takes {self} and {context} as its parameter and returns a
		list of {candidate}.
		{candidate} must be Dictionary which contains
		|deoplete-candidate-attributes|.
		Here, {context} is the context information when the source is
		called (|deoplete-notation-{context}|).

==============================================================================
EXTERNAL SOURCES				*deoplete-external-sources*

neco-vim: "vim" source for Vim script
https://github.com/Shougo/neco-vim

neosnippet: "neosnippet" source
https://github.com/Shougo/neosnippet.vim

neoinclude: "include" and "file/include" sources
https://github.com/Shougo/neoinclude.vim

neco-syntax: "syntax" source
https://github.com/Shougo/neco-syntax

vimshell: "vimshell" source for vimshell
https://github.com/Shougo/vimshell.vim

neco-ghc: "ghc" source for Haskell
https://github.com/eagletmt/neco-ghc

neco-look: "look" source to suggest words from sorted dictionary
https://github.com/ujihisa/neco-look

vim-racer: "racer" source for Rust
https://github.com/racer-rust/vim-racer

UltiSnips source: "ultisnips" source for UltiSnips
https://github.com/SirVer/ultisnips

clang-complete: "clang_complete" source for C/C++/Objective-C
https://github.com/Rip-Rip/clang_complete

deoplete-go: "go" source for Go
https://github.com/deoplete-plugins/deoplete-go

elixir.nvim: "elixir" source for Elixir
https://github.com/awetzel/elixir.nvim

deoplete-jedi: "jedi" source for Python
https://github.com/deoplete-plugins/deoplete-jedi

perlomni.vim: "PerlOmni" source for Perl
https://github.com/c9s/perlomni.vim

nvim-typescript: "typescript" source for typescript
https://github.com/mhartington/nvim-typescript

async-clj-omni: "async_clj" source for Clojure
https://github.com/SevereOverfl0w/async-clj-omni

deoplete-ternjs: "ternjs" source for JavaScript
https://github.com/carlitux/deoplete-ternjs

deoplete-swift: "swift" source for Swift
https://github.com/landaire/deoplete-swift

neovim-intellij-complete-deoplete: "intellij" source for Intellij IDE
https://github.com/vhakulinen/neovim-intellij-complete-deoplete

tmux-complete: "tmuxcomplete" source for tmux panes
https://github.com/wellle/tmux-complete.vim

deoplete-github: "github" source for "gitcommit" filetype
https://github.com/SevereOverfl0w/deoplete-github

deoplete-flow: "flow" source for JavaScript
https://github.com/steelsojka/deoplete-flow

deoplete-d: "d" source for D language
https://github.com/landaire/deoplete-d

deoplete-rtags: "rtags" source for "c", "cpp", "objc" and "objcpp" filetypes
https://github.com/LuXuryPro/deoplete-rtags

deoplete-solargraph "solargraph" source for Ruby language
https://github.com/uplus/deoplete-solargraph

deoplete-padawan: "padawan" source for padawan.php
https://github.com/pbogut/deoplete-padawan

webcomplete.vim: "webcomplete" source for browser opened pages
https://github.com/thalesmello/webcomplete.vim

deoplete-julia: "julia" source for Julia
https://github.com/JuliaEditorSupport/deoplete-julia

acid.nvim: "acid" source for Clojure
https://github.com/hkupty/acid.nvim

deoplete-omnisharp: "cs" source for C#
https://github.com/Robzz/deoplete-omnisharp/

deoplete-omnisharp: Improved version of deoplete-omnisharp
https://github.com/dimixar/deoplete-omnisharp/

deoplete-omnisharp: Embedded omnisharp server version of deoplete-omnisharp
https://github.com/cyansprite/deoplete-omnisharp

deoplete-hack: "hack" source for Hack and PHP
https://github.com/zefei/deoplete-hack

deoplete-laravel-plugin: "laravel-plugin" source for "php" and "blade"
filetypes
https://github.com/rafaelndev/deoplete-laravel-plugin

deoplete-zsh: "zsh" source for Zsh
https://github.com/deoplete-plugins/deoplete-zsh

deoplete-fish: "fish" source for fish shell
https://github.com/ponko2/deoplete-fish

deoplete-fsharp: "fsharp" source for F#
https://github.com/callmekohei/deoplete-fsharp

autocomplete-flow: "flow" source for JavaScript
https://github.com/wokalski/autocomplete-flow

deoplete-asm: "asm" source for Assembly Language
https://github.com/deoplete-plugins/deoplete-asm

deoplete-abook: "abook" source for abook contacts
https://github.com/fszymanski/deoplete-abook

deoplete-emoji: "emoji" source for emoji codes
https://github.com/fszymanski/deoplete-emoji

LanguageClient-neovim: "LanguageClient" source for Language Server
Protocol(LSP)
https://github.com/autozimu/LanguageClient-neovim

deoplete-vim-lsp: "lsp" source for vim-lsp
https://github.com/lighttiger2505/deoplete-vim-lsp

==============================================================================
EXTERNAL PLUGINS				*deoplete-external-plugins*

These are my recommended plugins for deoplete.

context_filetype.vim:
It adds the context filetype feature.
https://github.com/Shougo/context_filetype.vim

neopairs.vim:
It inserts the parentheses pairs automatically.
https://github.com/Shougo/neopairs.vim

echodoc.vim:
It prints the documentation you have completed.
https://github.com/Shougo/echodoc.vim

neoinclude.vim:
You can completes the candidates from the included files and included path.
https://github.com/Shougo/neoinclude.vim

FastFold:
Speed up the updating folds when you use auto completion plugins.
https://github.com/Konfekt/FastFold

						*deoplete-external-omnifuncs*

These are my recommended omnifuncs for deoplete.

phpcomplete: PHP omnifunc
https://github.com/shawncplus/phpcomplete.vim

phpcd.vim: another PHP omnifunc. Faster.
https://github.com/php-vim/phpcd.vim

==============================================================================
FREQUENTLY ASKED QUESTIONS (FAQ)			*deoplete-faq*

							*deoplete-faq-trouble*
1. Troubleshooting~

Q: deoplete does not work.

A: 1. Please update neovim to the latest version.

   2. Please update neovim python3 module to the latest version. >

       $ pip3 install --user pynvim --upgrade
<
   3. Please execute ":UpdateRemotePlugins" command manually if Neovim.

   4. Please install nvim-yarp plugin for Vim8.
   https://github.com/roxma/nvim-yarp

   5. Please install vim-hug-neovim-rpc plugin for Vim8.
   https://github.com/roxma/vim-hug-neovim-rpc

   6. Please check if Python3 interface works. You can check it by the command
       `:echo has('python3')` .

   https://github.com/neovim/neovim/wiki/FAQ#python-support-isnt-working

   7. You can test |deoplete-options-yarp| option for neovim.

   8. Please enable debug mode from command line and upload the log file. >

       $ export NVIM_PYTHON_LOG_FILE=/tmp/log
       $ export NVIM_PYTHON_LOG_LEVEL=DEBUG
       $ neovim
       ... Use deoplete
       $ cat /tmp/log_{PID}

Q: deoplete is slow.

A: Please change |deoplete-options-auto_complete_delay| value. It is a huge
   delay value intentionally. And some sources are slow. You should check
   which one is slow and consider disabling them.

Q: Deoplete popup is not displayed immediately.

A: Deoplete is initialized asynchronously. So it is a feature.

Q: Neovim startup is slow when |g:deoplete#enable_at_startup| is enabled.

A: If it is enabled, Neovim will enable and load deoplete in startup. It
   may be slow. You should use lazy load feature in plugin manager or use
   |:autocmd| to call |deoplete#enable()|. >

       " Enable deoplete when InsertEnter.
       let g:deoplete#enable_at_startup = 0
       autocmd InsertEnter * call deoplete#enable()
<
  And you should set |g:python3_host_prog| variable.  It reduces startuptime
  by almost 20 ms.

Q: deoplete cannot complete filename after "=".

A: 'isfname' contains "=".  You should remove it. >

       set isfname-==

Q: Deoplete does not work with vim-multiple-cursors.

A: You must disable deoplete when using vim-multiple-cursors. >

       function g:Multiple_cursors_before()
         call deoplete#custom#buffer_option('auto_complete', v:false)
       endfunction
       function g:Multiple_cursors_after()
         call deoplete#custom#buffer_option('auto_complete', v:true)
       endfunction

Q: I want to debug the sources.

A: Please enable logging feature like this. >

       call deoplete#custom#option('profile', v:true)
       call deoplete#enable_logging('DEBUG', 'deoplete.log')
       call deoplete#custom#source('jedi', 'is_debug_enabled', 1)

Q: "Channel id must be a positive integer" error.
https://github.com/Shougo/deoplete.nvim/issues/406

A: Your neovim or neovim-python module is too old.
Please update them to the latest version.

Q: "Broken pipe" error.
https://github.com/Shougo/deoplete.nvim/issues/653

A: Please test _main.py.
https://github.com/Shougo/deoplete.nvim/issues/635#issuecomment-363331278

Please test neovim-python module.
https://github.com/neovim/python-client#usage-through-the-python-repl

Q: "Cannot add child handler, the child watcher does not have a loop attached"
error.
https://github.com/Shougo/deoplete.nvim/issues/761

A: It is neovim-python package problem.
https://github.com/neovim/python-client/issues/324
https://github.com/neovim/python-client/issues/326

Note: You can disable parallel feature by |deoplete-options-num_processes|.
It is workaround. >

       call deoplete#custom#option('num_processes', 1)

Q: "[deoplete] neovim-python 0.3.0+ is required." error
https://github.com/Shougo/deoplete.nvim/issues/694

A: You must upgrade neovim-python client. >

       $ pip3 install --user pynvim --upgrade

							*deoplete-faq-config*
2. Configuration~

Q: I want to silence the |ins-completion-menu| messages in the command line
   such as "-- XXX completion (YYY)", "match 1 of 2", "The only match",
   "Pattern not found", "Back at original", etc.

A: You can disable the messages through the 'shortmess' option. >

       if has("patch-7.4.314")
         set shortmess+=c
       endif

Q: I want to use the auto select feature like |neocomplete|.

A: You can use it by the 'completeopt' option. >

       set completeopt+=noinsert

Q: How do I select one of the responses from the pop up? I assume this is
   really obvious, but I have not figured it out.

A: Please press <C-y> on the candidate.

Q: I want to close the preview window after completion is done.

A: >
        autocmd CompleteDone * silent! pclose!
<
Or
>
	autocmd InsertLeave * silent! pclose!
<

   Note: It conflicts with delimitMate.
   https://github.com/Shougo/deoplete.nvim/issues/234

Q: I want to disable the preview window feature.
   https://github.com/Shougo/deoplete.nvim/issues/298

A: >
       set completeopt-=preview

Q: I want to look selected function's arguments in deoplete. But I don't
   like preview window feature.

A: You can do it by |echodoc|.
   http://github.com/Shougo/echodoc.vim

Q: When I press enter, neovim closes the popup instead of inserting new line.

A: It is Vim/neovim's default behavior (feature.)  If you want to insert the
   new line, you should map <CR>. >

       inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
       function! s:my_cr_function() abort
         return deoplete#close_popup() . "\<CR>"
       endfunction

Q: I don't want to see the typed word in the completion menu.

A: You should add |deoplete-filter-matcher_length| to the matchers. >

        call deoplete#custom#source('_', 'matchers', ['matcher_fuzzy',
        \ 'matcher_length'])
<
   Note: Replace `'_'` with a specific source such as `'around'` if
         you want to keep seeing certain sources, e.g. snippets.

Q: How can I change the order of sources?

A: Change the rank of the sources as following, here illustrated for
   UltiSnips >

        call deoplete#custom#source('ultisnips', 'rank', 1000)

Q: How can I sort all entries alphabetically?

A: >
        call deoplete#custom#source('_', 'sorters', ['sorter_word'])

Q: I want to use head matcher instead of fuzzy matcher.

A: You can achieve this by following >

       call deoplete#custom#source('_', 'matchers', ['matcher_head'])

Q: I want to disable the buffer source.

A: You can use |deoplete-options-ignore_sources|. >

       call deoplete#custom#option('ignore_sources', {'_': ['buffer']})

Q: How to prevent auto bracket completion?
   https://github.com/Shougo/deoplete.nvim/issues/150

A: >
        call deoplete#custom#source('_', 'converters',
        \ ['converter_remove_paren'])

Q: The candidates are filtered by first character.
   https://github.com/Shougo/deoplete.nvim/issues/288

A: >
        call deoplete#custom#source('_', 'matchers', ['matcher_full_fuzzy'])

Q: I want to use the syntax files as a completion source

A: Please install |neco-syntax| plugin.
   https://github.com/Shougo/neco-syntax

Q: I want to complete the candidates from other files.
   https://github.com/Shougo/deoplete.nvim/issues/133

A: You must install |context_filetype| plugin.
   https://github.com/Shougo/context_filetype.vim
   And you must set |g:context_filetype#same_filetypes| variable.

Q: What is the difference of |deoplete-options-omni_patterns| and
   "input_patterns" in omni source?

A: |deoplete-options-omni_patterns| offers:
    - can call all omni functions
    - called by Vim
    - Vim regexp

   "input_patterns" offers:
    - cannot call some omni functions
    - can use deoplete features
    - called by deoplete
    - Python3 regexp

   You should use "input_patterns" if possible.

Q: Is there a way to control the colors used for popup menu using highlight
   groups?

A: Like this:
>
	highlight Pmenu ctermbg=8 guibg=#606060
	highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
	highlight PmenuSbar ctermbg=0 guibg=#d6d6d6
<
Q: What does each part of a line on the pop up mean?  For example I see:
   Bree pops up Breed [~] A. What do [~] and A stand for?

A: It is the source mark. [~] is from around source.  A is from
   |deoplete-source-around|.

Q: I want to use floating preview window feature with deoplete.

A: Please install float-preview.nvim plugin.
https://github.com/ncm2/float-preview.nvim

						    *deoplete-faq-ft-specific*
3. Filetype Specific Questions~

Q: I want to disable the auto completion for certain filetypes.

A: Please use |deoplete-options-auto_complete|. >

       autocmd FileType tex
       \ call deoplete#custom#buffer_option('auto_complete', v:false)

Q: I want to use C/C++ omni completion with deoplete.

A: You should use |deoplete-clangx|.

   https://github.com/Shougo/deoplete-clangx

Q: I want to use jedi-vim omni completion with deoplete.

A: You should install deoplete-jedi instead of jedi-vim.
   https://github.com/deoplete-plugins/deoplete-jedi

Q: I want to use JavaScript omnifunc.

A: Please set "input_patterns" manually. >

       call deoplete#custom#var('omni', 'input_patterns', {
       \ 'javascript': '[^. *\t]\.\w*',
       \ })

Q: I want to use "vim-lua-ftplugin".
   https://github.com/xolox/vim-lua-ftplugin

A: Please set the config as below.  >

       let g:lua_check_syntax = 0
       let g:lua_complete_omni = 1
       let g:lua_complete_dynamic = 0
       let g:lua_define_completion_mappings = 0

       call deoplete#custom#var('omni', 'functions', {
       \ 'lua': 'xolox#lua#omnifunc',
       \ })
       call deoplete#custom#var('omni', 'input_patterns', {
       \ 'lua': '\w+|\w+[.:]\w*',
       \ })

Q: I want to complete AAA using deoplete.

A: You can create the source for it. Why don't create the source if you need?

							*deoplete-faq-general*
4. General Questions~

Q: How to donate money to you?

A: I don't get the donation, but if you want to donate, please support neovim
project.  My plugins depends on neovim development.

https://salt.bountysource.com/teams/neovim

Q: What means "dark powered"?

A: I think text editor is everything in the world. I want to do everything in
   Vim(neovim) like Emacs. It is not allowed by |design-not| in Vim. It is not
   the light way to use Vim. So I have defined it as the dark way. I am the
   dark Vimmer. My plugins are dark powered.

Q: Is deoplete faster than neocomplete?

A: No. Deoplete is an asynchronous completion plugin. But it does not mean
   that it is faster than neocomplete. It can skip the completion if you input
   the characters too fast. I think it is great than the speed. You should use
   faster machine for deoplete.

Q: Is deoplete better than completor.vim?

A: Please see
   https://www.reddit.com/r/vim/comments/573e3d/completorvim_async_completion_framework_made_ease/

Q: Are there any plans to support GotoDefinition feature like YouCompleteMe?

A: https://github.com/deoplete-plugins/deoplete-jedi/issues/35

==============================================================================
COMPATIBILITY					*deoplete-compatibility*

2019.03.02
* Python 3.6.1+ is required.

2019.02.09
* deoplete-options-delimiters is removed.  Please use "delimiters" var in
  converter_auto_delimiter.

2018.12.24
* neovim-python 0.3.0+ is needed for asyncio feature.
* Change deoplete-options-num_processes default value in Windows.
* Remove "complete_method" option.

2018.12.10
* Remove async_timeout option.

2018.12.05
* Remove the default value of "deoplete-options-omni_patterns".

2018.11.18
* neovim 0.3.0+ is required.

2018.10.28
* Remove "deoplete-source-attribute-keyword_patterns".

2018.10.20
* Python 3.5+ is required.

2018.04.09
* Remove "g:deoplete#auto_complete_start_length" variable.
* Remove "g:deoplete#skip_chars" variable.
* Remove "g:deoplete#disable_auto_complete" variable.
* Remove "g:deoplete#complete_method" variable.
* Remove "g:deoplete#sources" variable.
* Remove "g:deoplete#keyword_patterns" variable.
* Remove "g:deoplete#omni_patterns" variable.
* Remove "g:deoplete#ignore_sources" variable.
* Remove "g:deoplete#ignore_case" variable.
* Remove "g:deoplete#smart_case" variable.
* Remove "g:deoplete#camel_case" variable.
* Remove "g:deoplete#enable_yarp" variable.
* Remove "g:deoplete#enable_refresh_always" variable.
* Remove "g:deoplete#enable_on_insert_enter" variable.
* Remove "g:deoplete#enable_profile" variable.
* Remove "g:deoplete#delimiters" variable.
* Remove "g:deoplete#max_list" variable.
* Remove "g:deoplete#auto_complete_delay" variable.
* Remove "g:deoplete#auto_refresh_delay" variable.
* Remove "g:deoplete#num_processes" variable.

2018.04.01
* Remove "g:deoplete#file#enable_buffer_path" variable.
* Remove "g:deoplete#max_abbr_width" and "g:deoplete#max_menu_width".
* Remove "g:deoplete#tag#cache_limit_size" variable.
* Remove "g:deoplete#buffer#require_same_filetype" variable.
* Remove "g:deoplete#member#prefix_patterns" variable.
* Remove "g:deoplete#omni#input_patterns" variable.
* Remove "g:deoplete#omni#functions" variable.

2018.03.18
* limit attribute in source is removed.
* neovim-python 0.2.4+ is needed for asyncio feature.

2017.12.04
* "debug_enabled" is deprecated.  Please use "is_debug_enabled" instead.

2017.07.22
* "deoplete#custom#set()" is deprecated.

==============================================================================
vim:tw=78:ts=8:ft=help:norl:noet:fen:noet: