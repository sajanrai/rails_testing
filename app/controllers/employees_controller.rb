class EmployeesController < ApplicationController
	def index
		@employees = Employee.all
	end

	def new
		@employee = Employee.new	
	end

	def show
		@employee=Employee.find(params[:id])
	end

	def employee_params
		params.require(:employee).permit(:firstname, :lastname, :age)
	end

	def create
		@employee = Employee.new(employee_params)
		@employee.save
		redirect_to @employee   
	end

	def set_employee
		@employee = Employee.find(params[:id])
	end

	def destroy
		@employee=Employee.find(params[:id]).destroy

	end

end
