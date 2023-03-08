class PagesController < ApplicationController
    def home
        @hidden = []
        Date.today.strftime('%B')
        render 'pages/home'
    end
end
