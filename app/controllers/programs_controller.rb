class ProgramsController < ApplicationController
  def index
    @programs = Program.all
    respond_to do |format|
      format.html
      format.json
    end
  end
end