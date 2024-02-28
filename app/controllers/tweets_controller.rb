class TweetsController < ApplicationController
    #ログインしているか確認
    before_action :authenticate_user!

    def index
        @tweets = Tweet.all
    end

    def new
        @tweet = Tweet.new
    end

    def create
        tweet = Tweet.new(tweet_params)

        #current_user:ログインしているuserの情報を取得
        tweet.user_id = current_user.id


        if tweet.save
            redirect_to :action =>'index'
        else
            redirect_to :action =>'new'
        end
    end

    def show
        @tweet = Tweet.find(params[:id])
    end

    private
    def tweet_params
        params.require(:tweet).permit(:body)
    end
end