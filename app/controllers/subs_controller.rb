class SubsController < ApplicationController
  #skinny controllers, fat models
  #controller should be as slim as possible
    # d.r.y and only worry about actions
    # CRUD, Create Read Update Delete
    
    # index @ppl = Ppl.all
    # new @person = Ppl.new
    # create @person = Ppl.create(ppl_params)
    # edit @person = Ppl.find(params[:id])
    # update @person = Ppl.find(params[:id]).update(ppl_params)
    # delete @person = Ppl.find(params[:id]).destroy
  #Model, all logic code
    # ordering, printing
  def index

  end

  def show
  end

  def new
  end

  def edit
  end

end
