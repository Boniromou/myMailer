class UserMailer < ApplicationMailer
    # app/controllers/users_controller.rb
    def create
        @user = User.new(user_params)
    if @user.save
        MailWorker.perform_async(@user.id)
        redirect_to root_path, notice: "#{@user.username} 已註冊成功！"
        else
        @error_message = @user.errors.full_messages.to_sentence
        render :new
        end
    end
    
    ###  注意：perform 是實體方法，而 perform_async 類別方法
end
