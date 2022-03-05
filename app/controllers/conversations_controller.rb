class ConversationsController < ApplicationController
  before_action :set_prospect
  before_action :set_conversation, only: [:show, :edit, :update, :destroy]

  # GET prospects/1/conversations
  def index
    @conversations = @prospect.conversations
  end

  # GET prospects/1/conversations/1
  def show
  end

  # GET prospects/1/conversations/new
  def new
    @conversation = @prospect.conversations.build
  end

  # GET prospects/1/conversations/1/edit
  def edit
  end

  # POST prospects/1/conversations
  def create
    @conversation = @prospect.conversations.build(conversation_params)

    if @conversation.save
      redirect_to([@conversation.prospect, @conversation], notice: 'Conversation was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT prospects/1/conversations/1
  def update
    if @conversation.update_attributes(conversation_params)
      redirect_to([@conversation.prospect, @conversation], notice: 'Conversation was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE prospects/1/conversations/1
  def destroy
    @conversation.destroy

    redirect_to prospect_conversations_url(@prospect)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospect
      @prospect = Prospect.find(params[:prospect_id])
    end

    def set_conversation
      @conversation = @prospect.conversations.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def conversation_params
      params.require(:conversation).permit(:chat, :prospect_id)
    end
end
