class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :update, :destroy]

  # GET /contacts
  def index
    if logged_in
      @contacts = current_user.contacts.all

      render json: @contacts
    else
      render json: {
        error: 'log in first please contacts'
      } 
    end
  end

  # GET /contacts/1
  # def show
  #   render json: @contact
  # end

  # POST /contacts
  def create
   # byebug
    @contact = Contact.new(contact_params)
    @contact.user_id = current_user.id

    if @contact.save
      render json: @contact, status: :created, location: @contact
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contacts/1
  # def update
  #   if @contact.update(contact_params)
  #     render json: @contact
  #   else
  #     render json: @contact.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /contacts/1
  def destroy
    @contact = Contact.find(params[:id])
    render json: @contact
    @contact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contact_params
      params.require(:contact).permit(:id, :user_id, :name, :company, :position, :contact_info)
    end
end
