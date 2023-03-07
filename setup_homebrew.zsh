#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
/usr/sbin/softwareupdate --install-rosetta --agree-to-license

# TODO: Keep an eye out for a different '--no-quarantine' solution.
# Currently, you can't do 'brew bundle --no-quarantine' as an option.
# export HOMEBREW_CASK_OPTS="--no-quarantine"
# https://github.com/Homebrew/homebrew-bundle/issues/474

brew bundle --verbose