class ProjectsController < ApplicationController
  def json_parser
  end

  def parse_json
    if params[:json_content][:content].blank?
      @response = "empty"
    else
      @response = JSON.parse(params[:json_content][:content]) rescue nil
    end
    respond_to do |format|
        format.js { render 'projects/parse_json'}
    end
  end
end
