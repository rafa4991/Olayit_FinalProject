class ConversationsController < ApplicationController
  def index
	@conversations=current_user.mailbox.conversations
  end

  def show
	@conversation = current_user.mailbox.conversations.find(params[:id])
  end
  
  def new
	@recipients=(VendorUser.all+ClinicalUser.all)-[current_user]
  end
  
  def create
	begin
	recipient=ClinicalUser.find_by name: (params[:user_id])

	rescue
		recipient=VendorUser.find_by name:(params[:user_id])
	end
	receipt=current_user.send_message(recipient,params[:body],params[:subject])
	redirect_to conversation_path(receipt.conversation)
	
  end
end
