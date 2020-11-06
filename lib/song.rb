require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramble'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramble
  attr_accessor :name, :artist

  @@songs = []

  def self.all
    @@songs
  end
end
