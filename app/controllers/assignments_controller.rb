class AssignmentsController < ApplicationController
    before_action :require_login
    before_action :set_assignment, only: [:show, :edit, :update, :destroy]
    def index
      @assignments = Assignment.all
    end
    
    def show
        @tasks = @assignment.tasks
    end
  
    def new
      @assignment = Assignment.new
    end
  
    def create
      @assignment = Assignment.new(assignment_params)
      if @assignment.save
        redirect_to tasks_path
      else
        @error = @assignment.errors
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @assignment.update(assignment_params)
        redirect_to assignments_path
      else
        render :edit
      end
    end
  
    def destroy
      @assignment = Assignment.find(params[:id])
      @assignment.destroy
      redirect_to assignments_path
    end
  
    private
  
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end
  
    def assignment_params
      params.require('assignment').permit(:name, :street, :state, :city, :zip, :phone)
    end
  
    def require_login
      return head(:forbidden) unless session.include? :user_id
    end
  end