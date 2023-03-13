class DepartmentsController < ApplicationController
    def home
        render 'departments/home'
    end

#page just admin can access to it you can add new concert from it 
    def admin
        if request.post?
            #get data I need for concert
            date = Date.parse(params[:date])
            location = params[:location].to_s
            price = params[:price].to_i
            ticketNum = params[:number].to_i
            concertTime = params[:time].to_s
            #save data in database
            concert = Concert.new(concertTime: concertTime, location: location, date: date, ticketPrice: price, ticketNum: ticketNum)
            concert.save
            redirect_to '/admin'
            return
        end
        render 'departments/admin'
    end
#page to buy ticket for the concert
    def modal
        #get concert data from database to appear it and update it
        concertDate = params[:concertDate] if concertDate == nil
        @concerts = Concert.where("date = '#{concertDate}'") if @concerts == nil
        if request.post?
            #get data of who buy the ticket
            email = params[:email]
            ticketNum = params[:count].to_i
            num = @concerts[0]['ticketNum']
            #update ticketNum in database
            @concerts.update(ticketNum: num - ticketNum)
            #collect data of the ticket on ticket table in database
            while ticketNum > 0
                ticket = Ticket.new(date: concertDate, location:  @concerts[0]['location'], ticketPrice:  @concerts[0]['ticketPrice'], concertTime:  @concerts[0]['concertTime'], email: email)
                ticket.save
                ticketNum -= 1
            end
            #back to home page after buy tickets
            redirect_to '/'
            return
        end
        render 'departments/ticketModal', locals: { concerts: @concerts }
    end
end
