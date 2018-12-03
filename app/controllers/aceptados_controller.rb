class AceptadosController < ApplicationController
	def new
		@group = Group.find(params[:group_id])
		@student = Student.find(params[:student_id])
		@aceptado = Aceptado.new
	end

	def create
		@group = Group.find(params[:group_id])
		@student = Student.find(params[:student_id])
		@aceptado = aceptado.create(aceptado_params)
		@aceptado.save
	end

def aceptado_params
        params.require(:aceptado).permit(:grupo, :alumno)
    end

private :aceptado_params
end
