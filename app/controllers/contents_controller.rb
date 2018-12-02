class ContentsController < ApplicationController
  def show
    @content = Content.find(params[:id])
    @content_presenter = ContentPresenter.new(@content)
  end
end
