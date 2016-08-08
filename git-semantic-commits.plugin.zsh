#!/bin/bash

function git-chore {
  if [ -z "$1" ]
    then
      git commit -m 'chore: ' -e
    else
      git commit -m "chore: $1"
  fi
}

function git-docs {
  if [ -z "$1" ]
    then
      git commit -m 'docs: ' -e
    else
      git commit -m "docs: $1"
  fi
}

function git-feat {
  if [ -z "$1" ]
    then
      git commit -m 'feat: ' -e
    else
      git commit -m "feat: $1"
  fi
}

function git-fix {
  if [ -z "$1" ]
    then
      git commit -m 'fix: ' -e
    else
      git commit -m "fix: $1"
  fi
}

function git-localize {
  if [ -z "$1" ]
    then
      git commit -m 'localize: ' -e
    else
      git commit -m "localize: $1"
  fi
}

function git-refactor {
  if [ -z "$1" ]
    then
      git commit -m 'refactor: ' -e
    else
      git commit -m "refactor: $1"
  fi
}

function git-style {
  if [ -z "$1" ]
    then
      git commit -m 'style: ' -e
    else
      git commit -m "style: $1"
  fi
}

function git-test {
  if [ -z "$1" ]
    then
      git commit -m 'test: ' -e
    else
      git commit -m "test: $1"
  fi
}
