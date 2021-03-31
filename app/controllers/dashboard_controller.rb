class DashboardController < ApplicationController
  def index
    render inertia: 'Dashboard/Index', props: {
      repo: Settings.repo,
      release: Settings.release
    }
  end

  def example_exception
    raise StandardError, 'This is an example exception'
  end
end
