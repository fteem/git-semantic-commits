# Semantic Git commit messages

Inspired by Sparkbox's awesome article on [semantic commit messages](http://seesparkbox.com/foundry/semantic_commit_messages).

## What is this?
These are **very simple** custom git commands that enforce the git user to write better git commit messages. If still confused, read the article above.

## Installation:

1. Clone this repo, prefferably in your $HOME directory.
``` git clone https://github.com/fteem/git-semantic-commits ~/.git-semantic-commits ```

2. Add the folder to your $PATH.
  * if using Bash, open ```~/.bashrc``` with your favourite editor and add this line: <br/> ``` export PATH=$PATH:$HOME/.git-semantic-commits:$PATH ```
  * if using Zsh, open ```~/.zshrc``` with your favourite editor and add this line: <br/>  ``` export PATH=$PATH:$HOME/.git-semantic-commits:$PATH ```

    Tip: If you're using Cygwin, open it and type 'echo $USERPROFILE'. This will show you the location of the $HOME directory.

3. Save the file and source the changes in bashrc/zshrc: ```source ~/.bashrc``` or ```source ~/.zshrc```
4. Commit away!

## Usage

There are 8 new Git commands now.

New command -> what it does:
* ```git feat "commit-message-here"``` -> ```git commit -m 'feat: commit-message-here'```
* ```git docs "commit-message-here"``` -> ```git commit -m 'docs: commit-message-here'```
* ```git chore "commit-message-here"``` -> ```git commit -m 'chore: commit-message-here'```
* ```git fix "commit-message-here"``` -> ```git commit -m 'fix: commit-message-here'```
* ```git refactor "commit-message-here"``` -> ```git commit -m 'refactor: commit-message-here'```
* ```git style "commit-message-here"``` -> ```git commit -m 'style: commit-message-here'```
* ```git test "commit-message-here"``` -> ```git commit -m 'test: commit-message-here'```
* ```git localize "commit-message-here"``` -> ```git commit -m 'localize: commit-message-here'```

If you would still like to use your text editor for your commit messages
you can omit the message, and do your commit message in your editor.

* ```git feat``` -> ```git commit -m 'feat: ' -e```

## How to contribute
Open a pull request/issue or fork this repo and submit your changes via a pull request.
