class WelcomeController < ApplicationController
  def index
    @welcome_message = 'Salutations!'
  end

  def show
    @greetee = params[:name].capitalize
  end

  def lorem
    @times = params[:pgraphs_needed].to_i
    lore = {}
    lore["standard"] = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    if params[:lorem_type]
      if params[:lorem_type] == 'hipsum'
        @lorem = Hipster.possabilities.sample
      elsif params[:lorem_type] == 'samuel'
        @lorem = Samuel.possabilities.sample
      elsif params[:lorem_type] == 'futurama'
        @lorem = Futurama.possabilities.sample
      else
        @lorem = lore['standard']
      end
    else
      @lorem = "Please choose hipsum, samuel, or futurama!"
    end
  end
end
