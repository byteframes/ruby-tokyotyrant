
require 'pathname'
$root = Pathname(__FILE__).dirname

$:.unshift $root
$:.unshift $root.parent.join('ext').expand_path

require 'rubygems'
require 'fileutils'
require 'bundler/setup'
require 'tokyo_tyrant'
require 'tokyo_tyrant/balancer'

$root.class.glob('spec/*_spec.rb').each {|l| load l}

puts "\n#{Bacon.summary_on_exit}"

