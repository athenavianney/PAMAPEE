class StudentsController < ApplicationController
  def new
        @group = Group.find(params[:group_id])
        @student = Student.new
    end


    def create
        @group = Group.find(params[:group_id])
        @student = @group.students.create(student_params)
        @student.update(status:'pendiente')

        if @student.save
            flash[:notice] = "El estudiante se creó exitosamente"
            redirect_to group_path(@group)
        else
            render 'new'
        end
    end

    def aceptar
        @group = Group.find(params[:group_id])
        @group.students.update(status:'aceptado')
        redirect_to group_path(@group)
    end

    def show
        @group = Group.find(params[:group_id])
    end


    def destroy
        @student = Student.find(params[:id])
        group = @student.groups

        @student.destroy

        flash[:notice] = "El estudiante se borró exitosamente"
        redirect_to edit_group_path(group)
    end

    def student_params
        params.require(:student).permit(:name, :last_name, :status)
    end

private :student_params
end
