class ContentsController < ApplicationController
  def show
    @content = ContentFinder.find(params[:id])
    @content_presenter = ContentPresenter.new(@content)
    set_application_presenter
  end

  def index
    @contents = Content.all
    set_application_presenter
  end
end
