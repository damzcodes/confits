require 'rails/railtie'

module Confits
  class Rails
    class Railtie < ::Rails::Railtie
      generators do
        require 'confits/install_generator'
        require 'confits/example_generator'
      end
    end
  end
end