#! /usr/bin/ruby

require 'fileutils'

puts 'Bundle all brew dependencies'
system 'brew bundle'

home = ENV['HOME'] + '/'
dir = __dir__ + '/'
new_line = "\n"

# Install zsh config
print 'Link zsh config to ', home + '.zshrc', new_line
FileUtils.ln_s dir + '.zshrc', home + '.zshrc', force: true
