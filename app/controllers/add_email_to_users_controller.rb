class AddEmailToUsersController < ApplicationController
  # GET /add_email_to_users
  # GET /add_email_to_users.json
  def index
    @add_email_to_users = AddEmailToUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @add_email_to_users }
    end
  end

  # GET /add_email_to_users/1
  # GET /add_email_to_users/1.json
  def show
    @add_email_to_user = AddEmailToUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @add_email_to_user }
    end
  end

  # GET /add_email_to_users/new
  # GET /add_email_to_users/new.json
  def new
    @add_email_to_user = AddEmailToUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @add_email_to_user }
    end
  end

  # GET /add_email_to_users/1/edit
  def edit
    @add_email_to_user = AddEmailToUser.find(params[:id])
  end

  # POST /add_email_to_users
  # POST /add_email_to_users.json
  def create
    @add_email_to_user = AddEmailToUser.new(params[:add_email_to_user])

    respond_to do |format|
      if @add_email_to_user.save
        format.html { redirect_to @add_email_to_user, notice: 'Add email to user was successfully created.' }
        format.json { render json: @add_email_to_user, status: :created, location: @add_email_to_user }
      else
        format.html { render action: "new" }
        format.json { render json: @add_email_to_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /add_email_to_users/1
  # PUT /add_email_to_users/1.json
  def update
    @add_email_to_user = AddEmailToUser.find(params[:id])

    respond_to do |format|
      if @add_email_to_user.update_attributes(params[:add_email_to_user])
        format.html { redirect_to @add_email_to_user, notice: 'Add email to user was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @add_email_to_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_email_to_users/1
  # DELETE /add_email_to_users/1.json
  def destroy
    @add_email_to_user = AddEmailToUser.find(params[:id])
    @add_email_to_user.destroy

    respond_to do |format|
      format.html { redirect_to add_email_to_users_url }
      format.json { head :ok }
    end
  end
end
