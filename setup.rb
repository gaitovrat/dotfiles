#! /usr/bin/ruby

require 'fileutils'

system "brew bundle"

# Install zsh config
home = ENV['HOME'] + '/'
FileUtils.cp '.zshrc', home + '.zshrc'
