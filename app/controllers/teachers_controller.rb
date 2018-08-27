class TeachersController < ApplicationController
    def index
        @teachers = Teacher.all
    end


    def new
        @teacher=Teacher.new
    end


    def create
        @teacher = Teacher.create(teacher_params);
        redirect_to new_teacher_path
    end

    def show
        @teacher = Teacher.find(params[:id]) 
    end
       
    def edit
        @teacher = Teacher.find(params[:id]) 
    end

    def update
        
        @teacher = Teacher.find(params[:id])
        @teacher.update(teacher_params)
        redirect_to '/teachers'
    end

    def destroy
    end

    def teacher_params
        params.require(:teacher).permit(:first_name, :last_name, :age, :salary, :education, :email, :password)
    end
    
end



   