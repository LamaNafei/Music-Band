class Concert < ApplicationRecord
    def concert_params
        params.require(:concert).permit(:date, :concertTime, :ticketNum, :ticketPrice, :location)
      end
end
