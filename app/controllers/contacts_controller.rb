class ContactsController < ApplicationController
  def show
    @name = 'Mike'
    @location = 'USA'
    @people = ['Mike', 'John', 'Judy']
  end
end
