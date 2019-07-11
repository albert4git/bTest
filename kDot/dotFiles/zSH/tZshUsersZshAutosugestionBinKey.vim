
### Key Bindings

This plugin provides a few widgets that you can use with `bindkey`:

1. `autosuggest-accept`: Accepts the current suggestion.
2. `autosuggest-execute`: Accepts and executes the current suggestion.
3. `autosuggest-clear`: Clears the current suggestion.
4. `autosuggest-fetch`: Fetches a suggestion (works even when suggestions are disabled).
5. `autosuggest-disable`: Disables suggestions.
6. `autosuggest-enable`: Re-enables suggestions.
7. `autosuggest-toggle`: Toggles between enabled/disabled suggestions.

For example, this would bind <kbd>ctrl</kbd> + <kbd>space</kbd> to accept the current suggestion.

```sh
bindkey '^ ' autosuggest-accept

#==========================================================================================

### Widget Mapping

This plugin works by triggering custom behavior when certain [zle widgets](http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Zle-Widgets) are invoked. You can add and remove widgets from these arrays to change the behavior of this plugin:

- `ZSH_AUTOSUGGEST_CLEAR_WIDGETS`: Widgets in this array will clear the suggestion when invoked.
- `ZSH_AUTOSUGGEST_ACCEPT_WIDGETS`: Widgets in this array will accept the suggestion when invoked.
- `ZSH_AUTOSUGGEST_EXECUTE_WIDGETS`: Widgets in this array will execute the suggestion when invoked.
- `ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS`: Widgets in this array will partially accept the suggestion when invoked.
- `ZSH_AUTOSUGGEST_IGNORE_WIDGETS`: Widgets in this array will not trigger any custom behavior.

Widgets that modify the buffer and are not found in any of these arrays will fetch a new suggestion after they are invoked.

**Note:** A widget shouldn't belong to more than one of the above arrays.
