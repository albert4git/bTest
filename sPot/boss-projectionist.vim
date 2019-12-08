I have tried the following for a php filetype:

let g:deoplete#omni#functions.php = {}
let g:deoplete#omni#functions.php = 'minisnip#complete'

But that yielded no results :(

I have written a deoplete source for vim-minisnip myself but I'm in favour of using the vanilla vim 'minisnip#complete' approach instead (one less plugin is a win for me)





I’ll admit it, I’m a Vim addict. I started using Vim while programming Ruby on Rails and quickly got hooked on vim-rails’ project navigation shortcuts. Commands like :A (meaning “alternate ”) to jump between a Ruby file and its spec were huge timesavers. There were also other cool commands to jump to a specific type of file.

:Econtroller - Jump to controller
:Emodel - Jump to model
:Emigration - Jump to migration
:Einitializer - Jump to initializer

In the past year, my day job has helped me venture beyond Ruby into Elixir and Angular. It’s fun getting to work in these new languages and frameworks, but I sorely missed my shortcuts to jump around projects. Fortunately, Tim Pope has written vim-projectionist to tackle just this problem.
Quick install

I use vim-plug to manage my dotfiles, but any Vim plugin manager will do. If you happen to be using vim-plug, all you have to do is add

Plug 'tpope/vim-projectionist'

to your .vimrc, then open Vim and run :BundleInstall.
Your first .projections.json

To try out vim-projectionist let’s clone the angular.js repo and open it up in vim. As you look around, notice that for almost every file in the src/ folder, there’s a matching spec file in the test/ directory.

src/ngMock/angular-mocks.js
test/ngMock/angular-mocksSpec.js

Since we know this is the pattern of how files are named in this project, let’s create a .projections.json file in the root of the project that allows use :A to toggle between the src file and its corresponding test.

{
  "src/*.js": {
    "alternate": "test/{}Spec.js"
  },
  "test/*Spec.js": {
    "alternate": "src/{}.js"
  }
}

Now open up src/ngMock/angular-mocks.js and type :A to watch it switch to test/ngMock/angular-mocksSpec.js. Type :A again and you should be switched back to the original file.

Here’s how it works.

    "src/*.js" uses the * to capture the string between src/and .js. In the src/ngMock/angular-mocks.js example, the * captures ngMock/angular-mocks.
    "alternate": "test/{}Spec.js" specifies the file to switch to when using :A. {} is replaced with the value captured in Step 1. If the captured value was ngMock/angular-mocks then the alternate file would be test/ngMock/angular-mocksSpec.js.
    To be able to switch back from the test file to the src file, we have to define the reverse association with a "test/*Spec.js" section.

More advanced example

Now that you have made your first .projections.json file, let’s try some more advanced features. For this example, clone the hex-web elixir project and open it up in vim. Take a look around and notice for every file in the web folder, there is usually a matching file in the test folder.

web/controllers/dashboard_controller.ex
test/controllers/dashboard_controller_test.exs

We can use this pattern to build a basic .projections.json file.

{
  "web/*.ex": {
    "alternate": "test/{}_test.exs"
  },
  "test/*_test.exs": {
    "alternate": "web/{}.ex"
  }
}

Now open up web/controllers/api/docs_controller.ex and type :A to watch it switch to test/controllers/api_docs_controller_test.exs. Type :A again and you should be switched back to the original controller file.

Now, let’s make it so we can jump to the controllers using an :Econtroller shortcut like we could in vim-rails. Reopen the .projections.json, and add the following section:

{
  "web/controllers/*_controller.ex": {
    "type": "controller"
  },
  "web/*.ex": {
    "alternate": "test/{}_test.exs"
  },
  "test/*_test.exs": {
    "alternate": "web/{}.ex"
  }
}

Now type the:Econtroller api/ command and hit Tab to see your options. Projectionist will show you all of the possible controllers that match what you’ve typed so far.

:Econtroller api/
api/docs        api/key         api/package     api/retirement
api/index       api/owner       api/release     api/user
:Econtroller api/

You can tab through all of the available options and hit enter to open. Once it’s open you can use :A to switch to the test file and :A again to switch back. You can also use the following variations of the :Econtroller command to control how the file is opened.

:Econtroller - Open the controller in the current window
:Tcontroller - Open the controller in a new tab
:Vcontroller - Open the controller in a vertical split
:Scontroller - Open the controller in a horizontal split

You can add as many of these “type” definitions to your .projections.json as you like. For example, the following section would add the :Emodel, :Tmodel, :Vmodel, and :Smodel commands.

{
  "web/models/*.ex": {
    "type": "model"
  },
  /* Rest of the .projections.json file */
}

Takeways

These are just a few of the features offered by vim-projectionist. Other features include using templates for new files and transforming the path captured by * . Run :help projectionist to see the full documentation.

Provided a project has a standard structure, you can easily build a .projections.json file that allows you to quickly navigate a new repo. I’m definitely indebted to Tim Pope for putting this plugin together, and can’t fathom the amount of time it’s saved me.

Thanks so much for reading this post and please follow my blog or share this article if you found it helpful.


"--------------------------------------------------------------------------------- 

SETUP                                           *projectionist-setup*

Projections are maps from file names and globs to sets of properties
describing the file.  The simplest way to define them is to create a
".projections.json" in the root of the project.  Here's a simple example for a
Maven project:
>
    {
      "src/main/java/*.java": {
        "alternate": "src/test/java/{}.java",
        "type": "source"
      },
      "src/test/java/*.java": {
        "alternate": "src/main/java/{}.java",
        "type": "test"
      },
      "*.java": {"dispatch": "javac {file}"},
      "*": {"make": "mvn"}
    }
<
In property values, "{}" will be replaced by the portion of the glob matched
by the "*".  You can also chain one or more transformations inside the braces
separated by bars, e.g. "{dot|hyphenate}".  The complete list of available
transformations is as follows:

Name            Behavior ~
dot             / to .
underscore      / to _
backslash       / to \
colons          / to ::
hyphenate       _ to -
blank           _ and - to space
uppercase       uppercase
camelcase       foo_bar/baz_quux to fooBar/bazQuux
snakecase       FooBar/bazQuux to foo_bar/baz_quux
capitalize      capitalize first letter and each letter after a slash
dirname         remove last slash separated component
basename        remove all but last slash separated component
singular        singularize
plural          pluralize
file            absolute path to file
project         absolute path to project
open            literal {
close           literal }
nothing         empty string
vim             no-op (include to specify other implementations should ignore)

From a globbing perspective, "*" is actually a stand in for "**/*".  For
advanced cases, you can include both globs explicitly: "test/**/test_*.rb".
When expanding with {}, the ** and * portions are joined with a slash.  If
necessary, the dirname and basename expansions can be used to split the value
back apart.

The full list of available properties in a projection is as follows:

						*projectionist-alternate*
"alternate" ~
        Determines the destination of the |projectionist-:A| command.  If this
        is a list, the first readable file will be used.  Will also be used as
        a default for |projectionist-related|.
						*projectionist-console*
"console" ~
        Command to run to start a REPL or other interactive shell.  Will be
        defined as :Console.  This is useful to set from a "*" projection or
        on a simple file glob like "*.js".  Will also be used as a default for
        "start".  Expansions are shell escaped.
						*projectionist-dispatch*
"dispatch" ~
        Default task to use for |:Dispatch| in dispatch.vim.  If not provided,
        the option for any existing alternate file is used instead.
        Expansions are shell escaped.
						*projectionist-make*
"make" ~
        Sets 'makeprg'.  Also loads a |:compiler| plugin if one is available
        matching the executable name.  This is useful to set from a "*"
        projection.  Expansions are shell escaped.
						*projectionist-path*
"path" ~
        Additional directories to prepend to 'path'.  Can be relative to the
        project root or absolute.  This is useful to set on a simple file glob
        like "*.js".
						*projectionist-related*
"related" ~
        Indicates one or more files to search when a navigation command is
        called without an argument, to find a default destination.  Related
        files are searched recursively.
						*projectionist-start*
"start" ~
        Command to run to "boot" the project.  Examples include `lein run`,
        `rails server`, and `foreman start`.  It will be used as a default
        task for |:Start| in dispatch.vim.  This is useful to set from a "*"
        projection.  Expansions are shell escaped.
						*projectionist-template*
"template" ~
        Array of lines to use when creating a new file.
						*projectionist-type*
"type" ~
        Declares the type of file and navigation command it belongs to.  If
        this option is provided for a literal filename rather than a glob, it
        is used as the default destination of the navigation command when no
        argument is given.

                                                *g:projectionist_heuristics*
In addition to ".projections.json", projections can be defined globally
through use of the |projectionist-autocmds| API or through the variable
g:projectionist_heuristics, a |Dictionary| mapping between a string describing
the root of the project and a set of projections.  The keys of the dictionary
are files and directories that can be found in the root of a project, with &
separating multiple requirements and | separating multiple alternatives.  You
can also prefix a file or directory with ! to forbid rather than require its
presence.

In the example below, the first key requires a directory named
lib/heroku/ and a file named init.rb, and the second requires a directory
named etc/rbenv.d/ or one or more files matching the glob bin/rbenv-*.
>
    let g:projectionist_heuristics = {
          \ "lib/heroku/&init.rb": {
          \   "lib/heroku/command/*.rb": {"type": "command"}
          \ },
          \ "etc/rbenv.d/|bin/rbenv-*": {
          \   "bin/rbenv-*": {"type": "command"},
          \   "etc/rbenv.d/*.bash": {"type": "hook"}
          \ }}

Note the use of VimScript |line-continuation|.

COMMANDS                                        *projectionist-commands*

In addition to any navigation commands provided by your projections (which
take the form :Efoo, :Sfoo, :Vfoo, :Tfoo, and :Dfoo), the following commands
are available.

                                                *projectionist-:A*
:A                      Edit the alternate file for the current buffer, as
                        defined by the "alternate" key.

:A {file}               Edit {file} relative to the innermost root.
                                                *projectionist-:AS*
:AS [file]              Like :A, but open in a split.
                                                *projectionist-:AV*
:AV [file]              Like :A, but open in a vertical split.
                                                *projectionist-:AT*
:AT [file]              Like :A, but open in a tab.

                                                *projectionist-:AD*
:AD                     Replace the contents of the buffer with the new file
                        template.

:AD {file}              Like :A, but |:read| the file into the current buffer.

                                                *projectionist-:Pcd*
                                                *projectionist-:Cd*
:Pcd                     |:cd| to the innermost root.

:Pcd {path}              |:cd| to {path} in the innermost root.

                                                *projectionist-:Plcd*
                                                *projectionist-:Lcd*
:Plcd [path]             Like :Pcd, but use |:lcd|.

                                                *projectionist-:ProjectDo*
:ProjectDo {cmd}        Change directory to the project root, execute the
                        given command, and change back.  This won't work if
                        {cmd} leaves the focus in a different window.  Tab
                        complete will erroneously reflect the current working
                        directory, not the project root.

AUTOCOMMANDS                                    *projectionist-autocmds*

Projectionist.vim dispatches a |User| *ProjectionistDetect* event when
searching for projections for a buffer.  You can call *projectionist#append()*
to register projections for the file found in *g:projectionist_file* .
>
    autocmd User ProjectionistDetect
          \ if SomeCondition(g:projectionist_file) |
          \   call projectionist#append(root, projections) |
          \ endif
<
The |User| *ProjectionistActivate* event is triggered when one or more sets of
projections are found.  You can call *projectionist#query()* to retrieve an
array of pairs of project roots and values for a given key.  Since typically
you only care about the first (most precisely targeted) value, the following
pattern may prove useful:
>
    autocmd User ProjectionistActivate call s:activate()

    function! s:activate() abort
      for [root, value] in projectionist#query('wrap')
        let &l:textwidth = value
        break
      endfor
    endfunction
<
You can also call *projectionist#path()* to get the root of the innermost set
of projections, which is useful for implementing commands like
|projectionist-:Pcd|.

"--------------------------------------------------------------------------------- 
The Problem

While developing ruby on rails applications, which I’ve been doing for ten years, I’ve relied on the powerful and popular rails.vim written by tpope. I like that rails.vim makes me decide what I want before going and getting it (so I don’t sit and stare at a list of files) and another part is the built-in templates for new files that rails.vim provides. For example, :Emodel user! will generate a blank ActiveRecord model class that inherits from ActiveRecord::Base.

I’ve been developing react-native apps for some time now, and I’ve been relying on vim’s built-in :e command combined with tab-completing directories and files. This has been tedious, to say the least. I wished I had the familiar navigation and new-file templates from rails.vim. I recalled, though, that rails.vim had been rewritten some time ago and vim-projectionist had come out of the refactoring.
The Solution

I installed vim-projectionist, created a .projections.json in the project root, and set up some simple file navigations with ease. When I got to writing templates, however, I had some issues with curly braces. The line import React, { Component } from 'react-native';, as an example, would fail to be imported into the template. This is because vim-projectionist uses curly braces to denote placeholders and Component is not a valid placeholder. To output curly braces in your template, you’ll need to use the {open} and {close} placeholders.

vim-projectionist supports easy navigation to and from test files and to “alternate” and “related” files. I haven’t yet decided how I’d like to use those, so I’m leaving those sections empty until I’ve decided on a sensical set of defaults.

Here’s what I’ve got so far for my react-native `.projections.json` file:

{
  "app/actions/*.js": {
    "type": "action"
  },
  "app/containers/*.js": {
    "type": "container",
    "template": [
      "import React, {open} Component {close} from 'react';\n",
      "export default class {capitalize} extends Component {",
      "  render () {",
      "    return (",
      "    );",
      "  };",
      "}",
      "",
      "export default connect(",
      "  state => ({open}state: state{close}),",
      "  dispatch => ({open}actions: bindActionCreators(actions, dispatch){close})",
      ")({capitalize});"
    ]
  },
  "app/components/*.js": {
    "type": "component",
    "template": [
      "import React, {open} Component {close} from 'react';\n",
      "export default class \{} extends Component {",
      "  render () {",
      "    return (",
      "    );",
      "  };",
      "}"
    ]
  },
  "app/reducers/*.js": {
    "type": "reducer"
  },
  "package.json": {
    "type": "package"
  },
  "app/services/*Service.js": {
    "type": "service"
  },
  "app/styles/*.js": {
    "type": "style",
    "template": [
      "import {open} Platform, StyleSheet {close} from 'react-native';",
      "import COLORS from '../config/Colors';",
      "import FONTS from '../config/Fonts';\n",
      "export default StyleSheet.create({",
      "});"
    ]
  },
  "app/Store.js": {
    "type": "store"
  },
  "app/Root.js": {
    "type": "root"
  }
}

Reference

vim-projectionist supports the following placeholders. With the exception of {open} and {close}, which output curly braces, the ones you’ll be most interested in are case transformations. You can always see all the available transformations inside your vim session with
:let g:projectionist_transformations.

{dot}
{underscore}
{backslash}
{colons}
{hyphenate}
{blank}
{uppercase}
{camelcase}
{capitalize} — aliased as \{}
{snakecase}
{dirname}
{basename}
{singular}
{plural}
{open}
{close}

"--------------------------------------------------------------------------------- 
Navigation with vim-projectionist
German Velasco
November 18, 2019

    vim elixir phoenix 

If you came to Elixir from Rails-land, you might miss the navigation that came with vim-rails. If you’re not familiar with it, vim-rails creates commands like :A, :AV, :AS, and :AT to quickly toggle between a source file and its test file and commands like :Econtroller, :Emodel, and :Eview to edit files based on their type.

The good news is that the same person who made vim-rails also made vim-projectionist (thanks Tim Pope). And with it, we can supercharge our navigation in Elixir and Phoenix just like we had in Rails with vim-rails.
Projecting Back to the Future

The easiest way to use vim-projectionist is to set up projections in a .projections.json file at the root of your project. This is a basic file for Elixir projections:

{
  "lib/*.ex": {
    "alternate": "test/{}_test.exs",
    "type": "source"
  },
  "test/*_test.exs": {
    "alternate": "lib/{}.ex",
    "type": "test"
  }
}

With this configuration, projectionist allows us to alternate between test and source files using :A, and it can open that alternate file in a separate pane with :AS or :AV, or if you’re a tabs person, in a separate tab with :AT. Note that we define the "alternate" both ways so that both the source and test files have alternates.

If you’re wondering how it works, projectionist is grabbing any directory and files matched by * — from a globbing perspective it acts like **/* — and expanding it with {}. So the alternate of lib/project/sample.ex is test/project/sample_test.exs (and vice versa).

With that simple configuration, projectionist also defines two :E commands based on the "type":

    :Esource project/sample will open lib/project/sample.ex, and
    :Etest project/sample will open test/project/sample_test.exs.

Pretty neat, right? But wait! There’s more.
Templating

Projectionist has another really interesting feature — defining templates to use when creating files. Add the following templates to each projection:

{
  "lib/*.ex": {
    "alternate": "test/{}_test.exs",
    "type": "source",
+   "template": [
+     "defmodule {camelcase|capitalize|dot} do",
+     "end"
+   ]
  },
  "test/*_test.exs": {
    "alternate": "lib/{}.ex",
    "type": "test",
+   "template": [
+     "defmodule {camelcase|capitalize|dot}Test do",
+     "  use ExUnit.Case, async: true",
+     "",
+     "  alias {camelcase|capitalize|dot}",
+     "end"
+   ]
  }
}

The "template" key takes an array of strings to use as the template. In them, projectionist allows us to define a series of transformations that will act upon whatever is captured by *. We use {camelcase|capitalize|dot}, so if * captures project/super_random, projectionist will do the following transformations:

    camelcase: project/super_random -> project/superRandom,
    capitalize: project/superRandom -> Project/SuperRandom,
    dot: Project/SuperRandom -> Project.SuperRandom

Example workflow

Let’s put it all together in a sample MiddleEarth project.

We can create a new file via :Esource middle_earth/minas_tirith. It will create a file lib/middle_earth/minas_tirith.ex with this template:

defmodule MiddleEarth.MinasTirith do
end

We can then create a test file by attempting to navigate to the (non-existing) alternate file. Typing :A will give us something like this:

Create alternate file?
1 /dev/middle_earth/test/middle_earth/minas_tirith_test.exs
Type number and <Enter> or click with mouse (empty cancels):

Typing 1 and <Enter> will create the test file test/middle_earth/minas_tirith_test.exs with this template:

defmodule MiddleEarth.MinasTirithTest do
  use ExUnit.Case, async: true

  alias MiddleEarth.MinasTirith
end

Here it is in gif form:

gif of the flow we just talked about

Very cool, right? But wait. There’s more.
Supercharge Phoenix Navigation

That simple configuration works for Elixir projects. And since Phoenix projects (beginning with Phoenix 1.3) have their files under lib/, it also works okay for Phoenix projects.

But without further changes, creating a Phoenix controller or a Phoenix channel will gives us an extra Controllers or Channels namespace in our modules because of the directory structure. For example, creating lib/project_web/controllers/user_controller.ex will create a module ProjectWeb.Controllers.UserController instead of the desired ProjectWeb.UserController.

It would also be nice to have controller-specific templates that include use ProjectWeb, :controller in controllers and use ProjectWeb.ConnCase in controller tests (since we always need those use declarations). And, it would be extra nice to have access to an :Econtroller command.

We can make that happen by adding Phoenix-specific projections to our .projections.json file. Start with controllers:

{
  "lib/**/controllers/*_controller.ex": {
    "type": "controller",
    "alternate": "test/{dirname}/controllers/{basename}_controller_test.exs",
    "template": [
      "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}Controller do",
      "  use {dirname|camelcase|capitalize}, :controller",
      "end"
    ]
  },
  "test/**/controllers/*_controller_test.exs": {
    "alternate": "lib/{dirname}/controllers/{basename}_controller.ex",
    "type": "test",
    "template": [
      "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}ControllerTest do",
      "  use {dirname|camelcase|capitalize}.ConnCase, async: true",
      "end"
    ]
  },
  # ... other projections
}

Note that these projections no longer use the single * matcher for globbing. They use ** and * separately. And instead of simply using {} in alternate files, they explicitly use {dirname} and {basename}.

Why the change? Here’s what the projectionist documentation says:

    For advanced cases, you can include both globs explicitly: "test/**/test_*.rb". When expanding with {}, the ** and * portions are joined with a slash. If necessary, the dirname and basename expansions can be used to split the value back apart.

Controller templates

By separating the globbing, we are able to create templates that do not include the extra Controllers namespace even though the path includes /controllers.

We get the project name with **, and we get the file name after /controllers with *_controller.ex. We then generate the namespace ProjectWeb by grabbing dirname (i.e. project_web) and putting it through a series of transformations. Similarly, we generate the rest of the module’s name by using basename, putting it through a series of transformations, and appending either Controller or ControllerTest.

We are also able to create more helpful controller templates since the projections are specific to controllers. Note the inclusion of " use {dirname|camelcase|capitalize}, :controller" and " use {dirname|camelcase|capitalize}.ConnCase, async: true" in our templates. Our controllers will now automatically include use ProjectWeb, :controller and our controller tests will automatically include use ProjectWeb.ConnCase, async: true.
:Econtroller command

Finally, we set the "type": "controller". That gives us the :Econtroller command. We can now create a controller with :Econtroller project_web/user. And for existing controllers, projectionist has smart tab completion. So typing :Econtroller user and hitting tab should expand to :Econtroller project_web/user or give us more options if there are multiple matches.

For example, in the MiddleEarth project we can edit the default PageController that ships with Phoenix by using :Econtroller page along with tab completion. And we can create a new MinasMorgul controller and controller test with our fantastic templates by typing :Econtroller middle_earth_web/minas_morgul and then going to its alternate file.

gif of using :Econtroller to open page controller
Projecting All the Things

I think you get the gist of it, so I will not go through all the projections. But just like we added the projections for the controllers, we can do the same for views, channels, and even feature tests if you frequently write those.

Below I included a sample file to get you started with controllers, views, channels, and feature tests. Take a look at it. If you prefer it in github-gist form, here’s a link to one. The best thing is that if my sample file does not fit your needs, you can always adjust it!

If you find any improvements, I would love to hear about them. I’m always looking for better ways to navigate files.

{
  "lib/**/views/*_view.ex": {
    "type": "view",
    "alternate": "test/{dirname}/views/{basename}_view_test.exs",
    "template": [
      "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}View do",
      "  use {dirname|camelcase|capitalize}, :view",
      "end"
    ]
  },
  "test/**/views/*_view_test.exs": {
    "alternate": "lib/{dirname}/views/{basename}_view.ex",
    "type": "test",
    "template": [
      "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}ViewTest do",
      "  use ExUnit.Case, async: true",
      "",
      "  alias {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}View",
      "end"
    ]
  },
  "lib/**/controllers/*_controller.ex": {
    "type": "controller",
    "alternate": "test/{dirname}/controllers/{basename}_controller_test.exs",
    "template": [
      "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}Controller do",
      "  use {dirname|camelcase|capitalize}, :controller",
      "end"
    ]
  },
  "test/**/controllers/*_controller_test.exs": {
    "alternate": "lib/{dirname}/controllers/{basename}_controller.ex",
    "type": "test",
    "template": [
      "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}ControllerTest do",
      "  use {dirname|camelcase|capitalize}.ConnCase, async: true",
      "end"
    ]
  },
  "lib/**/channels/*_channel.ex": {
    "type": "channel",
    "alternate": "test/{dirname}/channels/{basename}_channel_test.exs",
    "template": [
      "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}Channel do",
      "  use {dirname|camelcase|capitalize}, :channel",
      "end"
    ]
  },
  "test/**/channels/*_channel_test.exs": {
    "alternate": "lib/{dirname}/channels/{basename}_channel.ex",
    "type": "test",
    "template": [
      "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}ChannelTest do",
      "  use {dirname|camelcase|capitalize}.ChannelCase, async: true",
      "",
      "  alias {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}Channel",
      "end"
    ]
  },
  "test/**/features/*_test.exs": {
    "type": "feature",
    "template": [
      "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}Test do",
      "  use {dirname|camelcase|capitalize}.FeatureCase, async: true",
      "end"
    ]
  },
  "lib/*.ex": {
    "alternate": "test/{}_test.exs",
    "type": "source",
    "template": [
      "defmodule {camelcase|capitalize|dot} do",
      "end"
    ]
  },
  "test/*_test.exs": {
    "alternate": "lib/{}.ex",
    "type": "test",
    "template": [
      "defmodule {camelcase|capitalize|dot}Test do",
      "  use ExUnit.Case, async: true",
      "",
      "  alias {camelcase|capitalize|dot}",
      "end"
    ]
  }
}

If you enjoyed this post, you might also like:
"--------------------------------------------------------------------------------- 
It cannot work like a.vim before you do some step below

    You can add a .projections.json for this project and write

{
    "src/*.c" : {"alternate":"include/{}.h"},
    "include/*.h" : {"alternate":"src/{}.c"}
}

    If you tired of writing every project a .projections.json file, you can set a default behavior in vimrc

  let g:projectionist_heuristics = {
      \   "*" : {
      \       "*.c": { "alternate": "{}.h" },
      \       "*.h": { "alternate": "{}.c" }
      \   }
      \ }

key * here is used for choosing which project do you want to use this settings, it means every project will use .h file as .c's alternate file.

    If you group all your cpp projects in a dirctory for example "$HOME/MyCppProjects/...", the following settings may be better

  let g:projectionist_heuristics = {
      \   "MyCProjects/" : {
      \       "*.c": { "alternate": "{}.h" },
      \       "*.h": { "alternate": "{}.c" }
      \   },
      \   "MyCppProjects/" : {
      \       "*.cpp": { "alternate": "{}.h" },
      \       "*.h": { "alternate": "{}.cpp" }
      \   },
      \ }

or you can set g:projectionist_heuristics by different file types(I have not try but I think it may be ok).

"--------------------------------------------------------------------------------- 


"--------------------------------------------------------------------------------- 


"--------------------------------------------------------------------------------- 


"--------------------------------------------------------------------------------- 


"--------------------------------------------------------------------------------- 


"--------------------------------------------------------------------------------- 


"--------------------------------------------------------------------------------- 
