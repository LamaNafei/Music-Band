class DepartmentsController < ApplicationController
    def home
        render 'departments/home'
    end

    def admin
        if request.post?
            date = Date.parse(params[:date])
            location = params[:location].to_s
            price = params[:price].to_i
            ticketNum = params[:number].to_i
            concertTime = params[:time].to_s
            concert = Concert.new(concertTime: concertTime, location: location, date: date, ticketPrice: price, ticketNum: ticketNum)
            concert.save
            redirect_to '/admin'
            return
        end
        render 'departments/admin'
    end
end
