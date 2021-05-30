#! /usr/bin/ruby

require 'fileutils'

puts 'Bundle all brew dependencies'
puts ''
system 'brew bundle'

home = ENV['HOME'] + '/'
dir = __dir__ + '/'
new_line = "\n"

# Xcode first launch
puts 'Run xcode first launch'
puts ''
system 'sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer'
system 'sudo xcodebuild -runFirstLaunch'

# Install zsh config
print 'Link zsh config to ', home + '.zshrc', new_line 
puts ''
FileUtils.ln_s dir + '.zshrc', home + '.zshrc', force: true

# Install vim config
print 'Link vim(.vimrc) config to ', home + '.vimrc', new_line
puts ''
FileUtils.ln_s dir + 'vim/.vimrc', home + '.vimrc', force: true

print 'Link neovim(init.vim) config to ', home + '.config/nvim/init.vim', new_line
puts ''
FileUtils.mkdir_p home + '.config/nvim'
FileUtils.ln_s dir + 'vim/init.vim', home + '.config/nvim/init.vim', force: true
