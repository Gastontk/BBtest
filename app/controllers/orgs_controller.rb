class OrgsController < ApplicationController
  before_filter :authorize
  def new
  end

  def create
    @org = Org.new(org_params)
    @org.owner_id = current_user.id
    if @org.save
        redirect_to '/dashboard'
    else
      @orgs = Org.all
      render 'orgs/dashboard'
    end

    # if @org.save

    # render plain:  org_params
  end

  def show
    # render plain: params
    @org = Org.find_by_id(params[:id])

  end

  def add_group_to_user
  end

  def delete_group_from_user
  end

  def destroy
    @org = Org.find_by_id(params[:id])
    org_name = @org.name
    @org.destroy
    flash[:message] = "#{org_name} was deleted"
    redirect_to '/dashboard'
  end

  def dashboard
    # render plain: 'In Orgs dashboard'
    @orgs = Org.all
    @org = Org.new
  end

  def join_org
    # render plain: params
    @org = Org.find_by_id(params[:org_id])
    @org.users << current_user
    redirect_to '/dashboard'
  end

  def drop_org
    @org = Org.find_by_id(params[:org_id])
    @org.users.delete(current_user)
    redirect_to '/dashboard'
  end




  private
    def org_params
      params.require(:org).permit(:name, :description)
    end
end
