class SearchesController < ApplicationController 

    def index
        @users = User.all
    end
end