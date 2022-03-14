class StudentsController < ApplicationController

  def index
    
    if (params[:name])
      name = params[:name].capitalize()
      if (Student.where({first_name: name}))
        student = Student.where({first_name: name})
      elsif (Student.where({last_name: name}))
        student = Student.where({last_name: name})
      end
    else 
      student = Student.all
    end
    byebug
    render json: student

    # if (params[:first_name])
    #   student = Student.find_by(first_name: params[:first_name])
    # elsif (params[:last_name])
    #   student = Student.find_by(last_name: params[:last_name])
    # else
    #   student = Student.all
    # end
    # render json: student
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  def grades
  end

  def highest_grade
  end

end
