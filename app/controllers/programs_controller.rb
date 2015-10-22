class ProgramsController < ApplicationController
  def index
    @programs = Program.all
  end

  def new
    @program = Program.new
  end

  def create
    program = Program.new(program_params)
    if program.save
      redirect_to programs_path
    else
      render :new
    end
  end

  private

  def program_params
    params.require(:program).permit(:title, :description, :start_date, :end_date, :application_deadline, :website, :school, :other_requirements)
  end
end