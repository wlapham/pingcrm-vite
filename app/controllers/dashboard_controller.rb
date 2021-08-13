class DashboardController < ApplicationController
  def index
    render inertia: 'Dashboard/Index', props: {
      repo: Settings.repo,
      release: Settings.release
    }
  end
end
