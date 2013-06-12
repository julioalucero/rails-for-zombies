class TweetsController < ApplicationController

  before_filter :get_tweet, :only => [:edit, :update, :destroy]

  def get_tweet
    @tweet = Tweet.find(params[:id])
  end

  def index
    @tweets = Tweet.all
    @result = Tweet.result @tweets
    @question = Question.find(params[:question_id])
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(params[:tweet])
    @tweet.zombie = Zombie.first

    if @tweet = Tweet.create(params[:tweet])
      render :show
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end

