class CollegesController < ApplicationController
    def index
        @colleges = College.all
    end

    def show
        @college = College.find(params[:id])
    end

    def new
        @college = College.new
    end

    def create
        @college = College.new(college_params)

        if @college.save
            redirect_to colleges_path            
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @college = College.find(params[:id])
    end

    def update
        @college = College.find(params[:id])

        if @college.update(college_params)
          redirect_to @college
        else
          render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @college = College.find(params[:id])
        @college.destroy

        redirect_to colleges_path, status: :see_other
    end    

    private
        def college_params
            params.require(:college).permit(:name, :city, :state)
        end
end
