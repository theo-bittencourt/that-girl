class NewsletterUsersController < ApplicationController

  # POST /newsletter_users
  # POST /newsletter_users.json
  def create
    @newsletter_user = NewsletterUser.new(params[:newsletter_user])

    respond_to do |format|
      if @newsletter_user.save
        flash[:notice] = 'Seu email foi cadastrado com sucesso!'
        format.html { render 'show' }
        format.json { render json: @newsletter_user, status: :created, location: @newsletter_user }
        begin
          Mailing.notifies_admin(@newsletter_user).deliver
        rescue Exception => e
          logger.error e
        end
      else
        format.html { render action: "new" }
        format.json { render json: @newsletter_user.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /newsletter_users/1
  # DELETE /newsletter_users/1.json
  def destroy
    @newsletter_user = NewsletterUser.find(params[:id])
    @newsletter_user.destroy

    respond_to do |format|
      format.html { redirect_to newsletter_users_url }
      format.json { head :no_content }
    end
  end
end
