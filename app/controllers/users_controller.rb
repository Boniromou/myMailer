# app/controllers/users_controller.rb
def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_later
      redirect_to root_path, notice: "#{@user.username} 已註冊成功！"
    else
      @error_message = @user.errors.full_messages.to_sentence
      render :new
    end
end