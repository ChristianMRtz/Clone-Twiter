class TweetsController < ApplicationController
  before_action :set_tweet, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  # GET /tweets or /tweets.json
  def index
    @tweets = Tweet.all.order('created_at DESC')
    @tweet = Tweet.new
  end

  # GET /tweets/1 or /tweets/1.json
  def show; end

  # GET /tweets/new
  def new
    @tweet = current_user.tweets.build
  end

  # GET /tweets/1/edit
  def edit; end

  # POST /tweets or /tweets.json
  def create
    @tweet = current_user.tweets.build(tweet_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to root_path, notice: 'Tweet was successfully created.' }
      else
        format.html { redirect_to root_path, alert: 'Tweet is over 140 characters.' }
      end
    end
  end

  # PATCH/PUT /tweets/1 or /tweets/1.json
  def update
    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to root_path, notice: 'Tweet was successfully updated.' }
      else
        format.html { redirect_to root_path, alert: 'Tweet is over 140 characters.' }
      end
    end
  end

  # DELETE /tweets/1 or /tweets/1.json
  def destroy
    @tweet.destroy
    redirect_to tweets_url, flash: { notice: 'Tweet was successfully destroyed' }
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tweet_params
    params.require(:tweet).permit(:body)
  end
end
