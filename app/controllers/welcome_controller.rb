class WelcomeController < ApplicationController
  def index
    @welcome_message = 'Salutations!'
    render plain: @welcome_message
  end

  def show
    @greetee = params[:name].capitalize
    render plain: "Greetings!  Welcome to rails #{@greetee}!!!"
  end

  def lorem
    if params[:lorem_type]
      if params[:lorem_type].casecmp('hipsum').zero?
        render plain: 'XOXO irony butcher esse, ugh nihil post-ironic pork belly exercitation williamsburg tattooed. In YOLO health goth, hammock kombucha letterpress sriracha vaporware heirloom. Cornhole minim aliquip everyday carry semiotics. Iceland lomo brooklyn, delectus ethical godard lo-fi mustache shabby chic wayfarers irure bushwick fixie microdosing. Keytar retro tumblr before they sold out qui, adipisicing chambray. Vegan do aliquip lyft. Actually lyft thundercats, DIY semiotics paleo pug fam craft beer ut anim coloring book.'
      elsif params[:lorem_type].casecmp('samuel').zero?
        render plain: "You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I don't know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that I'm breaking now. We said we'd say it was the snow that killed the other two, but it wasn't. Nature is lethal but it doesn't hold a candle to man."
      elsif params[:lorem_type].casecmp('futurama').zero?
        render plain: "Just once I'd like to eat dinner with a celebrity who isn't bound and gagged. Really?! Kif, I have mated with a woman. Inform the men. Yes, I saw. You were doing well, until everyone died. I don't know what you did, Fry, but once again, you screwed up! Now all the planets are gonna start cracking wise about our mamas."
      end
    else
      render plain: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    end
  end
end
