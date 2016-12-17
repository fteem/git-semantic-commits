# Semantic Git commit messages

Inspired by Sparkbox's awesome article on [semantic commit messages](http://seesparkbox.com/foundry/semantic_commit_messages).

## What is this?
These are **very simple** custom git commands that enforce the git user to write better git commit messages. If still confused, read the article above.

## Installation:

1. Clone this repo, preferably in your $HOME directory. ```git clone https://github.com/fteem/git-semantic-commits ~/.git-semantic-commits```

  Tip: If you're using Cygwin, open it and type 'echo $USERPROFILE'. This will show you the location of the $HOME directory.

2. Install it as a set of bash scripts or git aliases:
  * bash scripts: ```cd ~/.git-semantic-commits && ./install.sh --scripts```
  * git aliases ```cd ~/.git-semantic-commits && ./install.sh```

  Tip: Installation script is idempotent and could be harmlessly executed multiple times. It adds bash scripts to the PATH in your `~/.bashrc` or `~/.zshrc` files or adds git aliases to the `~/.gitconfig` file respectively (without any duplication).

3. Commit away!

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

Aliases for those who use [git-extras](https://github.com/tj/git-extras) (will be installed only if you have `git-extras`):

* ```git rf "commit-message-here"``` -> ```git commit -m 'refactor: commit-message-here'```
* ```git ch "commit-message-here"``` -> ```git commit -m 'chore: commit-message-here'```

## How to contribute
Open a pull request/issue or fork this repo and submit your changes via a pull request.
