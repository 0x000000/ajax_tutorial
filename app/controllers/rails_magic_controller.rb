# encoding: utf-8
class RailsMagicController < ApplicationController
  def link
  end

  def form
  end

  def delete_smth
    render nothing: true, status: 200
  end

  def create_smth
    render text: "Добры вечар!"
  end

  def play_with_request
    if request.xhr?
      render js: "alert('hello');"
    else

    end
  end
end
