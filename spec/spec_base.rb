
require 'pathname'
$root = Pathname(__FILE__).dirname

$:.unshift $root
$:.unshift $root.parent.join('lib').expand_path

require 'rubygems'
require 'fileutils'
require 'bacon'
require 'helpers'

$root.class.glob('**/*_spec.rb').each {|l| load l}

puts "\n#{Bacon.summary_on_exit}"

