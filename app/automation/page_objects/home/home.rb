module Pages
  module Home 
    class Seralogix

      def welcome_label(selector)
        find('mat-toolbar > span.BodyText--medium')
      end	
    end
  end
end