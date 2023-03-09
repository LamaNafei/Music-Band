class DepartmentsController < ApplicationController
    def home
        render 'departments/home'
    end

    def admin
        render 'departments/admin'
    end
end
