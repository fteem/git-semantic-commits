#!/bin/sh
CWD=`pwd`

# Register semantic commits scripts execution path
#
# $1 — shell configuraton file path
function register_path {
  PATH_LINE='export PATH=$PATH:'$CWD':$PATH'

  if [ -f $1 ]; then
    if ! grep -Fxq "$PATH_LINE" $1; then
      echo
      echo "Adding path to $1"
      echo $PATH_LINE >> $1
      source $1
    fi
  fi
}

# Register semantic commits git aliases
#
# $1 — git alias and semantic message prefix
# [$2] — (optional) custom semantic message prefix
function register_git_alias {
  if ! git config --global --get-all alias.$1 &>/dev/null; then
    if [[ -z $2 ]]; then
      git config --global alias.$1  '!f() { [[ -z "$GIT_PREFIX" ]] || cd "$GIT_PREFIX" && if [[ -z $1 ]]; then git commit -m "'$1': " -e; else git commit -m "'$1': $1"; fi }; f'
    else
      git config --global alias.$1  '!f() { [[ -z "$GIT_PREFIX" ]] || cd "$GIT_PREFIX" && if [[ -z $1 ]]; then git commit -m "'$2': " -e; else git commit -m "'$2': $1"; fi }; f'
    fi
  fi
}

# Check if command was finished successfully
#
# $1 — any shell command
function command_succes {
  command $1 >/dev/null 2>&1 && return 0 # true
  return 1 # false
}

if [[ -n $1 ]] && [[ $1 == '--scripts' ]]; then
  echo 'Installing scripts…'

  register_path ~/.bashrc
  register_path ~/.zshrc

  # git-extras chore/refactor compatibility (https://github.com/tj/git-extras)
  # Docs: https://github.com/tj/git-extras/blob/master/Commands.md#git-featurerefactorbugchore
  if command_succes 'git extras'; then
    extra_aliases=( 'ch' 'rf' )
    for extra_alias in "${extra_aliases[@]}"; do
      mv $CWD/.git-$extra_alias $CWD/git-$extra_alias
    done
  fi
else
  echo 'Installing git aliases…'

  semantic_aliases=( 'chore' 'docs' 'feat' 'fix' 'localize' 'chore' 'refactor' 'style' 'test' )

  for semantic_alias in "${semantic_aliases[@]}"; do
    register_git_alias $semantic_alias
  done

  # git-extras chore/refactor compatibility (https://github.com/tj/git-extras)
  # Docs: https://github.com/tj/git-extras/blob/master/Commands.md#git-featurerefactorbugchore
  if command_succes 'git extras'; then
    register_git_alias 'ch' 'chore'
    register_git_alias 'rf' 'refactor'
  fi
fi

echo
echo 'Done! Now you can use semantic commits.'
echo 'See: https://github.com/fteem/git-semantic-commits for more information.'
