class FollowingsController < ApplicationController


  def index
    if !user_signed_in? && params[:id] == nil
      session[:return_to] = new_follow_path
      redirect_to(new_user_session_path)
      return
    elsif user_signed_in?
      user_id = current_user.id
    else
      user_id =   params[:id]
    end
    @followings = Following.find_all_by_user_id(user_id)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @followings }
    end
  end

  def show
    @followings = Following.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @followings }
    end
  end

  def create

    if user_signed_in?
      @following = Following.new()
      @following.user_id = current_user.id
      @following.follow_user_id =params[:follow_user_id]
    else
      session[:return_to] = request.url
      redirect_to new_user_session_path
      return
    end

    respond_to do |format|
      if @following.save
        format.html { redirect_to @following, notice: 'Follow was successfully created.' }
        format.json { render json: @following, status: :created, location: @following }
      else
        format.html { render action: "new" }
        format.json { render json: @following.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
  end

  def new
    if !user_signed_in?
      redirect_to(new_user_session_path)
      return
    end

    @followings = Following.new()

    respond_to do |format|

        format.html
        format.json  { render json: @followings }
    end
  end

end
