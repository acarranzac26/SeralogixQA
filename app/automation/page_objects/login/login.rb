module Pages
  module Login 
    class Seralogix

      def principal_investigator(user, password)
        fill_in('mat-input-1', :with => user)
        fill_in('mat-input-2', :with => password)
        click_on('sign-in-btn')	
      end	
    end
  end
end
