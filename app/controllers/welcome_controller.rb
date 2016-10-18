class WelcomeController < ApplicationController
  def index
    @welcome_message = 'Salutations!'
    # render plain: @welcome_message
  end

  def show
    @greetee = params[:name].capitalize
    # render plain: "Greetings!  Welcome to rails #{@greetee}!!!"
  end

  def lorem
    @times = params[:pgraphs_needed].to_i
    lore = {}
    lore["standard"] = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    @lorem = []
    if params[:lorem_type]
      if params[:lorem_type] == 'hipsum'
        if params[:pgraphs_needed]
          @times.times do
           @lorem << Hipster.possabilities.sample
         end
        else
          @lorem = Hipster.possabilities.sample
        end
       elsif params[:lorem_type] == 'samuel'
         if params[:pgraphs_needed]
           @times.times do
            @lorem << Samuel.possabilities.sample
          end
         else
           @lorem = Samuel.possabilities.sample
         end
      elsif params[:lorem_type] == 'futurama'
        if params[:pgraphs_needed]
          @times.times do
           @lorem << Futurama.possabilities.sample
         end
        else
          @lorem = Futurama.possabilities.sample
        end
      else
        @lorem = lore['standard']
      end
    else
      @lorem = "Please choose hipsum, samuel, or futurama!"
    end
  end
end
