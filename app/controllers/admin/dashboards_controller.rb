class Admin::DashboardsController < AdminController
  before_filter :store_location, only: [:index]

  def index
  end
end
