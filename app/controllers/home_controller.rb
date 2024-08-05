class HomeController < ApplicationController
  def index   
    @heading = "Modern Interior "
    @paragraph = "Donec vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate velit imperdiet dolor tempor tristique."

  end
  def shop
     @heading = "Shop"
         @paragraph = "Donec vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate velit imperdiet dolor tempor tristique."

  end
  def about
    @heading = "About"
        @paragraph = "Donec vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate velit imperdiet dolor tempor tristique."
  end
  def contact
    @heading = "Contact"
        @paragraph = "Donec vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate velit imperdiet dolor tempor tristique."
  end
  def blog
    @heading = "Blog"
        @paragraph = "Donec vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate velit imperdiet dolor tempor tristique."
  end
  def service
    @heading = "Service"
        @paragraph = "Donec vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate velit imperdiet dolor tempor tristique."
  end
  def checkout
    @heading = "Checkout"
        @paragraph = "Donec vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate velit imperdiet dolor tempor tristique."
  end
  def cart
    @heading = "cart"
        @paragraph = "Donec vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate velit imperdiet dolor tempor tristique."
  end
  def thankyou
    @heading = "Thankyou"
        @paragraph = "You order was successfuly completed."
  end
end