#!/bin/bash

NC='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'

#=============================| HELPERS |================================================

function msg::info()
{
  LABEL_INFO="\n\033[0;38;5;227;48;5;38m 👉 INFO  ${NC}"
  echo -e "\n${LABEL_INFO} $1\n"
}

function msg::error()
{
  LABEL_ERROR="\n\033[048;5;9m ❌ ERROR ${NC}"
  echo -e "\n${LABEL_ERROR} $1\n"
}

function throwException()
{
  msg::error "$1"
  exit 1;
}

function checkDependencies()
{
  if [[ ! -f "./package.json" ]]; then
    throwException "Error could not find ${RED}package.json${NC} in dir. Aborting!"
  fi

  if ! node --version >/dev/null 2>&1; then
    throwException "${RED}NodeJS${NC} is required. Aborting!"
  fi

  if ! vsce --version >/dev/null 2>&1; then
    throwException "${RED}VSCE${NC} is required. Aborting!"
  fi
}

# @See: https://stackoverflow.com/a/24319367
function isVersionValid()
{
  if [ $# -eq 0 ]; then
    throwException "You must inform a version!"
  fi

  if [[ ! $1 =~ ^[0-9]+\.[0-9]+ ]]; then
    throwException "Invalid '${RED}($1)${NC}' version provided. Aborting!"
  fi
}

function getVersionFromPackageJson()
{
  VERSION=$(node -p "require('./package.json').version") 

  isVersionValid "$VERSION"
  echo "$VERSION"
}

# @See https://stackoverflow.com/a/73710486
function incrementVersion()
{
  if [ $# -eq 0 ]; then
    throwException "You must inform a version!"
  fi

  isVersionValid "$1"

  NEXT_VERSION=$(echo "$1" | awk -F. -v OFS=. '{$NF += 1 ; print}')
  
  isVersionValid "$NEXT_VERSION"

  echo "$NEXT_VERSION"
}

function updagreToVersion()
{
  if [ $# -eq 0 ]; then
    throwException "You must inform a version!"
  fi

  isVersionValid "$1"

  VERSION_STRING='"version": '

  sed -i '' "s/\($VERSION_STRING\).*/\1\"$1\",/" package.json
}

function addChangelog()
{
  if [ $# -eq 0 ]; then
    throwException "You must inform a version!"
  fi

  if [[ ! -f "./CHANGELOG.md" ]]; then
    touch ./CHANGELOG.md
  fi

  isVersionValid "$1"

  sed -i "" -e $'4 a\\\n'"## [$1]" CHANGELOG.md
  sed -i "" -e $'5 a\\\n' CHANGELOG.md
  sed -i "" -e $'6 a\\\n'"- my change here" CHANGELOG.md
  sed -i "" -e $'7 a\\\n' CHANGELOG.md
}

compileExtension()
{
  if ls ./*.vsix >/dev/null 2>&1; then
    rm ./*.vsix
  fi
  
  msg::info compiling...

  vsce package
}

#=================================| Script |=============================================

checkDependencies

VERSION=$(getVersionFromPackageJson)

echo -e "Current version ${YELLOW}${VERSION}${NC}. Would you like to ${GREEN}[B]${NC}ump or ${GREEN}[E]${NC}nter a custom version?"
read -rn1 CHOICE 

case "$CHOICE" in
  [bB])
    UPDATE_TO=$(incrementVersion "$VERSION") 
  ;;
  [eE])
    echo -e "Enter the new version:"
    read -r UPDATE_TO
  ;;
  *)
    throwException "Invalid choice. Aborting!"
  ;;
esac

updagreToVersion "$UPDATE_TO"

VERSION=$(getVersionFromPackageJson)

msg::info "Upgraded to ${GREEN}${VERSION}${NC}."

addChangelog "$VERSION"

echo -e "Proceed to compile? ${GREEN}[y/N]${NC}"
read -rn1 ANSWER 

case "$ANSWER" in
    [yY][eE][sS]|[yY]) 
    compileExtension
  ;;
  *)
    throwException "Invalid choice. Aborting!"
  ;;
esac
