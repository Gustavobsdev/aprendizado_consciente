class ApplicationController < ActionController::Base
  def set_application_presenter
    @application_presenter = ApplicationPresenter.new(content: @content)
  end
end
