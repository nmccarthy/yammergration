class PagesController < ApplicationController

  def home
  end

  def client_side_flow
    @yammergration_yammer_production_client_id = client_configurations('yammergration_yammer_production_client_id')
  end

  def client_side_flow_staging
    @yammergration_yammer_staging_client_id = client_configurations('yammergration_yammer_staging_client_id')
  end
  
  def client_side_flow_thunderdome
    @yammergration_yammer_staging_client_id = client_configurations('yammergration_yammer_staging_client_id')
  end

  def yammer_login
  end

  def login_success
    @user = User.find(params[:user_id])
  end
  
  def login_failure
  end

  def facebook_login
  end
  
  def box_login    
  end
  
  def log_in_with_yammer_button
    @yammergration_yammer_production_client_id = client_configurations('yammergration_yammer_production_client_id')
  end
  
  def log_in_with_yammer_button_staging
    @yammergration_yammer_staging_client_id = client_configurations('yammergration_yammer_staging_client_id')
  end
  
  def facebook_javascript_api
    @yammergration_facebook_client_id = client_configurations('yammergration_facebook_client_id')
    @yammergration_facebook_channel_url = '//' + client_configurations('yammergration_facebook_channel_domain') + '/channel.html'
    
  end
  
  def sandbox
    @graph = Koala::Facebook::API.new("AAACrYN1MIbgBALaoARTbi2ZA7ZA436VoQmwqOnWwhibSmqFmV49CxZCV3Vy0fuZAZAlZCMFMHEAoUWNJ97MDUuZARjnxrwZCrqbKT3ZBBZCZBQmqAZDZD") # 1.2beta and beyond
    @sandbox_results = @graph.get_connections("me", "checkins")
    @sandbox_results_another = @graph.get_object("144067155626960")
  end

end