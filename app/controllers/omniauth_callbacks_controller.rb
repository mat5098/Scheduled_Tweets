class OmniauthCallbacksController < ApplicationController
    def twitter
        Rails.logger.info auth

        twitter_acount = Current.user.twitter_acounts.where(username: auth.info.nickname).first_or_initialize
        twitter_acount.update(
            name: auth.info.name,
            username: auth.info.nickname,
            image: auth.info.image,
            token: auth.credentials.token,
            secret: auth.credentials.secret,
        )

        redirect_to twitter_acounts_path, notice: "Sucessfuly connected your account"
    end

    def auth
        request.env['omniauth.auth']
    end
end