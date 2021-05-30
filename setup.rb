#! /usr/bin/ruby

require 'fileutils'

system "brew bundle"

home = ENV['HOME'] + '/'
dir = __dir__ + '/'

# Install zsh config
FileUtils.ln_s dir + '.zshrc', home + '.zshrc', force: true
