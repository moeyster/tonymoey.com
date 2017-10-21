class ProjectsController < ApplicationController
  def json_parser
  end

  def parse_json
    @resume = JSON.parse(params[:json_content][:content])

    respond_to do |format|
        format.js { render 'projects/parse_json'}
    end
  end
end
