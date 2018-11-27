class SubsController < ApplicationController
  # skinny controllers, fat models
  # controller should be as slim as possible
    # d.r.y and only worry about actions
    # CRUD, Create Read Update Delete

    # index @ppl = Person.all
    # show @person = Person.find(params[:id])
    # new @person = Person.new
    # create @person = Person.create(ppl_params)
    # edit @person = Person.find(params[:id])
    # update @person = Person.find(params[:id]).update(ppl_params)
    # delete @person = Person.find(params[:id]).destroy

    # callbacks
    # before_action, called before entering a method
    # after_action, called after entering a method
    # skip_before_action, skip the before action
    # skip_after_action, skip the after action

    # before_action :method_to_call, (only/except): [:index, :show]

  # Model, all logic code
    # ordering, printing

  before_action :set_sub, only: [:show, :update, :edit, :destroy]
  # before_action :set_sub, except: [:index, :new, :create]

  #TODO anything that needs to be done
  #FIXME fix any bugs or errors
  #OPTIMIZE refactor - make better make more efficient

  #TODO fill out index views
  #FIXME page not loading
  #OPTIMIZE change the color of the text
    # in the terminal, type bundle exec rake notes

  def index
    @subs = Sub.all
    # render a webpage/views
    # views/subs/index.html.erb

    # default render html
    # render return json, xml redirect
  end

  def show
    # default renders show views/subs/show.html.erb
  end

  # get
  def new
    #creates a sub in memory
    @sub = Sub.new
    #renders the sub form
    render partial: "form"
  end

  # post
  def create
    @sub = Sub.create(sub_params)
    if @sub.save
      redirect_to root_path
    else
      render :new
    end

  end

  # get
  def edit
    # render the edit form
    render partial: "form"
    # render 'subs/form'
  end

  def update
    if @sub.update(sub_params)
      redirect_to @sub
    else
      render :edit
    end
  end

  def destroy
    @sub.destroy
    redirect_to root_path
  end

  private 
    def sub_params
      params.require(:sub).permit(:name)
    end

    def set_sub
      @sub = Sub.find(params[:id])
    end

end
