class SubjectsController < ApplicationController
  before_action :find_subject, only: [:show, :edit, :update, :destroy]

  def index
    @subjects = Subject.all.sort { |a, b| a.last_name <=> b.last_name }
  end

  def show
  end

  def new
    @subject = current_user.subjects.build
  end

  def create
    @subject = current_user.subjects.build(subject_params)

    if @subject.save
      redirect_to @subject, notice: "Successfully added Individual"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @subject.update(subject_params)
      redirect_to @subject, notice: "Individual was Successfully Updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @subject.destroy
    redirect_to root_path
  end

  private
    def find_subject
      @subject = Subject.find(params[:id])
    end

    def subject_params
      params.require(:subject).permit(:name, :image)
    end
end
