class UsersController < ApplicationController
 

  def show
    @user = User.find_by_public_id(params[:public_id])
    
    if !@user.blank? 
        @user_workproducts = Workproduct.find(:all, :conditions => ["user_id = ?", @user.id])
    end
    
  end

end
