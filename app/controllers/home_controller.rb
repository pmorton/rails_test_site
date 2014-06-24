class HomeController < ApplicationController
  def index
    @build = 'UNKNOWN'
    if File.exists?(File.join(Rails.root,'deploy','build_info.yml'))
      @build = YAML.load_file(File.join(Rails.root,'deploy','build_info.yml'))
    else
      @build = `git rev-parse HEAD`
    end
  end
end
