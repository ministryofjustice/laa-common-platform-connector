class HearingsController < ApplicationController
  def get
    hearing = Hearing.find(params[:id])
    if hearing
      render json: "{ 'hearing': #{hearing.to_json}, 'defendants': #{hearing.defendants.to_json}}"
    else
      render json: hearing.errors
    end
  end
end
