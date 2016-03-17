## npm-scripts-exec

npm-scripts-exec is a handy utility to make your life as a nodejs developer easier, by exposing npm scripts as normal shell commands.

![npm-scripts-exec demo](preview.gif)

Let's say you have the command `test-command` in the scripts object in the `package.json` of your project.
If you want to run this command, you would have to write `npm run test-command`.

What npm-scripts-exec does, is that it looks for the command like your shell usually does, and then checks `package.json` for that command.

So now you can just run `test-command` in your terminal directly, and it'll run `npm run test-command` for you!

Simple made easy.

## Installation

Supports the following shells:

* Bash (version 4 and above)
* Zsh
* Your favorite shell, if you add support for `command_not_found_handle`/`command_not_found_handler` and add it :)

Fork the repository or download just the file you need. Then run `source bash.sh` / `source zsh.sh` depending on which shell you use.

You can also add that line to your `.bashrc`/`.zshrc` so it'll be there always.
