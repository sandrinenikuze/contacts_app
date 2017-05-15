class ContactsController < ApplicationController
  def index
    if params[:group
      ]
      @contacts = Contact.find_by(name: params[:group]).contacts
    else
      @contacts = Contact.all
    end
  end


  def show 
    @contact = Contact.find_by(id: params[:id])
  end

  def new

  end 

  def create
    @contact = Contact.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number])
    @contact.save
    flash[:success] = "Contact created."
    redirect_to "/contacts/#{@contact.id}"
    
  end 
  def edit
    @contact = Contact.find_by(id: params[:id])
  end

  def update
    contact = Contact.find_by(id: params[:id])
    contact.first_name = params[:first_name]
    contact.last_name = params[:last_name]
    contact.email = params[:email]
    contact.phone_number = params[:phone_number]
    contact.save
    flash[:success] = "Contact updated."
    redirect_to "/contacts"
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    flash[:success] = "Contact deleted."
    redirect_to "/contacts"
  end
    def search
    search_query = params[:search_input]
    @contacts = Contact.where("first_name LIKE ? OR last_name LIKE ?", "%#{search_query}%", "%#{search_query}%")
    if @contacts.empty?
      flash[:info] = "No products found in search"
    end
    render :index
  end


  
end
