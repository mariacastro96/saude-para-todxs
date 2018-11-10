class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all
  end

  def show
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to @contact, notice: :created
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      redirect_to @contact,  notice: :updated
    else
      render :edit
    end
  end

  def destroy
    flash[:notice] = :destroyed
    @contact.destroy
    redirect_to contacts_path
  end

  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :address, :email, :phone_number, :schedule)
  end
end
