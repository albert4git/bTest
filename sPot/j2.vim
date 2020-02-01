Default mappings:

  nmap <leader>jI <Plug>(JavaComplete-Imports-AddMissing)
  nmap <leader>jR <Plug>(JavaComplete-Imports-RemoveUnused)
  nmap <leader>ji <Plug>(JavaComplete-Imports-AddSmart)
  nmap <leader>jii <Plug>(JavaComplete-Imports-Add)

  imap <C-j>I <Plug>(JavaComplete-Imports-AddMissing)
  imap <C-j>R <Plug>(JavaComplete-Imports-RemoveUnused)
  imap <C-j>i <Plug>(JavaComplete-Imports-AddSmart)
  imap <C-j>ii <Plug>(JavaComplete-Imports-Add)

  nmap <leader>jM <Plug>(JavaComplete-Generate-AbstractMethods)

  imap <C-j>jM <Plug>(JavaComplete-Generate-AbstractMethods)

  nmap <leader>jA <Plug>(JavaComplete-Generate-Accessors)
  nmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
  nmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
  nmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
  nmap <leader>jts <Plug>(JavaComplete-Generate-ToString)
  nmap <leader>jeq <Plug>(JavaComplete-Generate-EqualsAndHashCode)
  nmap <leader>jc <Plug>(JavaComplete-Generate-Constructor)
  nmap <leader>jcc <Plug>(JavaComplete-Generate-DefaultConstructor)

  imap <C-j>s <Plug>(JavaComplete-Generate-AccessorSetter)
  imap <C-j>g <Plug>(JavaComplete-Generate-AccessorGetter)
  imap <C-j>a <Plug>(JavaComplete-Generate-AccessorSetterGetter)

  vmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
  vmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
  vmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)

  nmap <silent> <buffer> <leader>jn <Plug>(JavaComplete-Generate-NewClass)
  nmap <silent> <buffer> <leader>jN <Plug>(JavaComplete-Generate-ClassInFile)

The default mappings could be disabled with following setting:

let g:JavaComplete_EnableDefaultMappings = 0

Optional

g:JavaComplete_LibsPath - path to additional jar files. This path appends with your libraries specified in pom.xml. Here you can add, for example, your glassfish libs directory or your project libs. It will be automatically append your JRE home path.

g:JavaComplete_SourcesPath - path of additional sources. Don't try to add all sources you have, this will slow down the parsing process. Instead, add your project sources and necessary library sources. If you have compiled classes add them to the previous config (g:JavaComplete_LibsPath) instead. By default the plugin will search the src directory and add it automatically.

let g:JavaComplete_MavenRepositoryDisable = 1 - don't append classpath with libraries specified in pom.xml of your project. By default is 0.

let g:JavaComplete_UseFQN = 1 - use full qualified name in completions description. By default is 0.

let g:JavaComplete_PomPath = /path/to/pom.xml - set path to pom.xml explicitly. It will be set automatically, if pom.xml is in underlying path.

let g:JavaComplete_ClosingBrace = 1 - add close brace automatically, when complete method declaration. Disable if it conflicts with another plugins.

let g:JavaComplete_JavaviLogDirectory = '' - directory, where to write server logs.

let g:JavaComplete_JavaviLogLevel = 'debug' - enables server side logging (log4j logging levels).

let g:JavaComplete_BaseDir = '~/.your_cache_dir' - set the base cache directory of javacomplete2. By default it is ~/.cache.

let g:JavaComplete_ImportDefault = 0 - the default selection of import options. By default it is 0, which means automatically select first one. To make nothing on default set -1.

let g:JavaComplete_GradleExecutable = 'gradle' - use your own path to gradle executable file.

let g:JavaComplete_ImportSortType = 'jarName' - imports sorting type. Sorting can be by jar archives jarName or by package names packageName.

let g:JavaComplete_StaticImportsAtTop = 1 - imports sorting with static imports at the top. By default this is 0.

let g:JavaComplete_ImportOrder = ['java.', 'javax.', 'com.', 'org.', 'net.'] - Specifies the order of import groups, when use packageName sorting type. An import group is a list of individual import statements that all start with the same beginning of package name surrounded by blank lines above and below the group. A * indicates all packages not specified, for 'google style' import ordering, e.g. let g:JavaComplete_ImportOrder = ['com.google.', *, 'java.', 'javax.']

let g:JavaComplete_RegularClasses = ['java.lang.String', 'java.lang.Object'] - Regular class names that will be used automatically when you insert import. You can populate it with your custom classes, or it will be populated automatically when you choose any import option. List will be persisted, so it will be used next time you run the same project.

let g:JavaComplete_CustomTemplateDirectory = '~/jc_templates' - set directory that contains custom templates, for class creation. By default this options is null.

let g:JavaComplete_AutoStartServer = 0 - Disable automatic startup of server.

let g:JavaComplete_CompletionResultSort = 1 - Sort completion results alphabetically.

let g:JavaComplete_IgnoreErrorMsg = 1 - When it is greater than 0, the error message will be ignored. By default it is 0.

let g:JavaComplete_CheckServerVersionAtStartup = 0 - Check server version on startup. Can be disabled on slow start, or infinite recompilation. By default it is 1.

let g:JavaComplete_ExcludeClassRegex = 'lombok\(\.experimental\)\?\.var' - Exclude matching fully qualified class names from producing import statements.

let g:JavaComplete_SourceExclude = ['src/frontend'] - Exclude source directories. Accept absolute and relative values.
Commands

JCimportsAddMissing - add all missing 'imports';

JCimportsRemoveUnused - remove all unsused 'imports';

JCimportAdd - add 'import' for classname that is under cursor, or before it;

JCimportAddSmart - add 'import' for classname trying to guess variant without ask user to choose an option (it will ask on false guessing).

JCgenerateAbtractMethods - generate methods that need to be implemented;

JCgenerateAccessors - generate getters and setters for all fields;

JCgenerateAccessorSetter - generate setter for field under cursor;

JCgenerateAccessorGetter - generate getter for field under cursor;

JCgenerateAccessorSetterGetter - generate getter and setter for field under cursor;

JCgenerateToString - generate toString method;

JCgenerateEqualsAndHashCode - generate equals and hashCode methods;

JCgenerateConstructor - generate constructor with chosen fields;

JCgenerateConstructorDefault - generate default constructor;

JCclassNew - open prompt to enter class creation command;

JCclassInFile - open prompt to choose template that will be used for creation class boilerplate in current empty file;

JCserverShowPort - show port, through which vim plugin communicates with server;

JCserverShowPID - show server process identificator;

JCserverStart - start server manually;

JCserverTerminate - stop server manually;

JCserverCompile - compile server manually;

JCdebugEnableLogs - enable logs;

JCdebugDisableLogs - disable logs;

JCdebugGetLogContent - get debug logs;

JCcacheClear - clear cache manually.
