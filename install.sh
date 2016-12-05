#!/bin/sh

if [[ -n $1 ]] && [[ $1 == '--scripts' ]]; then
  echo '💡  Installing scripts…'

  PATH_LINE='export PATH=$PATH:$HOME/.git-semantic-commits:$PATH'
  BASHRC=~/.bashrc
  ZSHRC=~/.zshrc

  if [ -f $BASHRC ]; then
    if ! grep -Fxq "$PATH_LINE" $BASHRC
    then
      echo
      echo "📝  Adding path to $BASHRC"
      echo $PATH_LINE >> $BASHRC
      source $BASHRC
    fi
  fi

  if [ -f $ZSHRC ]; then
    if ! grep -Fxq "$PATH_LINE" $ZSHRC
    then
      echo
      echo "📝  Adding path to $ZSHRC"
      echo $PATH_LINE >> $ZSHRC
      source $ZSHRC
    fi
  fi
else
  echo '💡  Installing git aliases…'

  # git-extras/chore compatibility https://goo.gl/oZUN3V
  if ! git config --global --get-all alias.ch &>/dev/null; then
    git config --global alias.ch '!f() { [[ -z "$GIT_PREFIX" ]] || cd "$GIT_PREFIX" && if [[ -z $1 ]]; then git commit -m "chore: " -e; else git commit -m "chore: $1"; fi }; f'
  fi

  if ! git config --global --get-all alias.chore &>/dev/null; then
    git config --global alias.chore '!f() { [[ -z "$GIT_PREFIX" ]] || cd "$GIT_PREFIX" && if [[ -z $1 ]]; then git commit -m "chore: " -e; else git commit -m "chore: $1"; fi }; f'
  fi

  if ! git config --global --get-all alias.docs &>/dev/null; then
    git config --global alias.docs '!f() { [[ -z "$GIT_PREFIX" ]] || cd "$GIT_PREFIX" && if [[ -z $1 ]]; then git commit -m "docs: " -e; else git commit -m "docs: $1"; fi }; f'
  fi

  if ! git config --global --get-all alias.feat &>/dev/null; then
    git config --global alias.feat '!f() { [[ -z "$GIT_PREFIX" ]] || cd "$GIT_PREFIX" && if [[ -z $1 ]]; then git commit -m "feat: " -e; else git commit -m "feat: $1"; fi }; f'
  fi

  if ! git config --global --get-all alias.fix &>/dev/null; then
    git config --global alias.fix '!f() { [[ -z "$GIT_PREFIX" ]] || cd "$GIT_PREFIX" && if [[ -z $1 ]]; then git commit -m "fix: " -e; else git commit -m "fix: $1"; fi }; f'
  fi

  if ! git config --global --get-all alias.localize &>/dev/null; then
    git config --global alias.localize '!f() { [[ -z "$GIT_PREFIX" ]] || cd "$GIT_PREFIX" && if [[ -z $1 ]]; then git commit -m "localize: " -e; else git commit -m "localize: $1"; fi }; f'
  fi

  # git-extras/refactor compatibility https://goo.gl/FIvSyo
  if ! git config --global --get-all alias.rf &>/dev/null; then
    git config --global alias.rf '!f() { [[ -z "$GIT_PREFIX" ]] || cd "$GIT_PREFIX" && if [[ -z $1 ]]; then git commit -m "refactor: " -e; else git commit -m "refactor: $1"; fi }; f'
  fi

  if ! git config --global --get-all alias.refactor &>/dev/null; then
    git config --global alias.refactor '!f() { [[ -z "$GIT_PREFIX" ]] || cd "$GIT_PREFIX" && if [[ -z $1 ]]; then git commit -m "refactor: " -e; else git commit -m "refactor: $1"; fi }; f'
  fi

  if ! git config --global --get-all alias.style &>/dev/null; then
    git config --global alias.style '!f() { [[ -z "$GIT_PREFIX" ]] || cd "$GIT_PREFIX" && if [[ -z $1 ]]; then git commit -m "style: " -e; else git commit -m "style: $1"; fi }; f'
  fi

  if ! git config --global --get-all alias.test &>/dev/null; then
    git config --global alias.test '!f() { [[ -z "$GIT_PREFIX" ]] || cd "$GIT_PREFIX" && if [[ -z $1 ]]; then git commit -m "test: " -e; else git commit -m "test: $1"; fi }; f'
  fi
fi

echo
echo '✅  Done! Now you can use semantic commits.'
echo 'ℹ️  See: https://git.io/v1luX for more information'
