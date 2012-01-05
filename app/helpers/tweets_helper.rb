module TweetsHelper

   def check_login
     if user_signed_in?
       if current_user.id = user_id
         return true
       end
     end
     return false
   end
end
