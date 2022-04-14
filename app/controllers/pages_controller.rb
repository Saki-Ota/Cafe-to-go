class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  def home
    @cafes = Cafe.all
  end
end
