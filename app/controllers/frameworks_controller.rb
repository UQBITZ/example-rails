class FrameworksController < ApplicationController
  def index
    @frameworks = Framework.order(:name)
  end
end
