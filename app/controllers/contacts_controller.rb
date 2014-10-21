class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @contact = Contact.new
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.valid?
        # Send mail now
        Notifier.contact(@contact).deliver
        format.html { redirect_to @contact, notice: "Your message has been sent." }
        format.json { render action: 'index', status: :created, location: @contact }
      else
        format.html { render action: 'index' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:from_name, :from_email, :message)
    end
end
