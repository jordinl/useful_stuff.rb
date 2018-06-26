module Capybara
  class Session
    def scroll_bottom
      evaluate_script('window.scrollTo(0, document.body.scrollHeight)')
    end

    def scroll_to(element)
      evaluate_script('arguments[0].scrollIntoView()', element)
    end
  end
end
