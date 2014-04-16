# /controllers/users_controller.rb

  def create
    @user = User.new(user_params)

    if @user.save
      UserMailer.signup_confirmation(@user).deliver
      session[:user_id] = @user.id
      flash[:notice] = "Thank you for signing up!"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end
