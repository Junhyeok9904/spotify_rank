class TopController < ApplicationController
    def main
        if session[:user_id].nil?
            render "login"
        end
    end
end
