# Semantic Git commit messages

Inspired by Sparkbox's awesome article on [semantic commit messages](http://seesparkbox.com/foundry/semantic_commit_messages).

## What is this?
These are **very simple** custom git commands that enforce the git user to write better git commit messages. If still confused, read the article above.

## Installation:

Install with [Antigen](https://github.com/zsh-users/antigen): antigen bundle alexrochas/git-semantic-commits

Or if you feel like doing it the old-fashioned way:

```shell
mkdir -p ~/src
git clone git://github.com/alexrochas/git-semantic-commits.git ~/src/git-semantic-commits
print 'source ~/src/git-semantic-commits/git-semantic-commits.plugin.zsh' >> ~/.zshrc
```

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
