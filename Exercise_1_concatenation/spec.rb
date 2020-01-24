# Use TDD principles to build out name functionality for a Person.
# Here are the requirements:
# - Add a method to return the full name as a string. A full name includes
#   first, middle, and last name. If the middle name is missing, there shouldn't
#   have extra spaces.
# - Add a method to return a full name with a middle initial. If the middle name
#   is missing, there shouldn't be extra spaces or a period.
# - Add a method to return all initials. If the middle name is missing, the
#   initials should only have two characters.
#
# We've already sketched out the spec descriptions for the #full_name. Try
# building the specs for that method, watch them fail, then write the code to
# make them pass. Then move on to the other two methods, but this time you'll
# create the descriptions to match the requirements above.
require 'rspec/autorun'

class Person
  attr_reader :first_name, :middle_name, :last_name

  def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  # implement your behavior here
  def full_name
    f_name = [first_name, middle_name, last_name]
    f_name.compact.join(' ')
  end

  def full_name_with_middle_initial
    initial = middle_name.split('').first
    f_name = [first_name, initial, last_name]
    f_name.compact.join(' ')
  end
end

RSpec.describe Person do
  describe '#full_name' do
    it 'concatenates first name middle name and last name' do
      person = Person.new(first_name: 'Daniel', middle_name: 'Rodriguez', last_name: 'Romero')

      expect(person.full_name).to eq('Daniel Rodriguez Romero')
    end

    it 'does not add extra spaces if middle name is missing' do
      person = Person.new(first_name: 'Daniel', last_name: 'Romero')

    expect(person.full_name).to eq('Daniel Romero')
    end
  end

  describe "#full_name_with_middle_initial" do
    it 'Add a method to return a full name with a middle initial' do
      person = Person.new(first_name: 'Daniel', middle_name: 'Rodriguez', last_name: 'Romero')
      expect(person.full_name_with_middle_initial).to eq('Daniel R Romero')
    end



  describe "#initials"
  end
end
