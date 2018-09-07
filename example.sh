#!/bin/bash

fn_upgrade () {
  sudo apt-get update && sudo apt-get dist-upgrade
}

fn_npm () {
  npm update -g
}

fn_apm () {
  apm update
}

fn_composer () {
  composer self-update --clean-backups
  composer global update --no-dev --optimize-autoloader
}

fn_packages () {
  fn_apm
  fn_npm
  fn_composer
}

fn_fish_completions () {
  echo "complete -c my-script -f -a '$(echo $(self_args))'" \
    > ~/.config/fish/completions/my-script.fish
}

source main.sh
