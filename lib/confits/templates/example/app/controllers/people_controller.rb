class PeopleController < ApplicationController
  def new
    @person = People.new
  end

  def create
    @person = People.new(people_params)

    if @person.save
      redirect_to new_people_path, notice: 'Your name has been added'
    else
      render :new
    end
  end

  private

  def people_params
    params.require(:people.permit(:name)
  end
end