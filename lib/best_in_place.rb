require "best_in_place/helper"

module BestInPlace
<<<<<<< HEAD
  autoload :TestHelpers, "best_in_place/test_helpers"
end

ActionView::Base.send(:include, BestInPlace::BestInPlaceHelpers)
=======
  require "best_in_place/helpers"

  class Engine < ::Rails::Engine
    initializer "setup for rails" do
      ActionView::Base.send(:include, BestInPlace::Helpers)
    end
  end
end
>>>>>>> indrekj/master
