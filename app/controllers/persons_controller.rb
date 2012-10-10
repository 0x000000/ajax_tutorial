class PersonsController < ApplicationController
  respond_to :html, :json

  def show
    @person = Person.first
    @person.touch

    respond_with(@person)
  end

  #def show
  #  @user = Person.first
  #  respond_with(@user) do |format|
  #    format.html { render }
  #    format.json { render json: @user }
  #  end
  #end
end
