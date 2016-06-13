require 'classes/EvernoteUtils'

class Notebook < ActiveRecord::Base
  has_many :notes
end
