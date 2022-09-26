class TwitterAcountsController < ApplicationController
    before_action :require_user_logged_in!
    before_action :set_twitter_acount, only: [:destroy]

    def index
        @twitter_acounts = Current.user.twitter_acounts
    end
    
    def destroy
        @twitter_acount.destroy
        redirect_to twitter_acounts_path, notice: "Succesfully disconnected"
    end

    private
    def set_twitter_acount
        @twitter_acount = Current.user.twitter_acounts.find(params[:id])
    end
end