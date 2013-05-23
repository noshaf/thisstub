class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new
  end

  def index
  end

  def create

    @ticket = Ticket.new(params[:ticket])

    if @ticket.save
      redirect_to ticket_path(@ticket), :alert => "Congrats"
    else
      redirect_to root_path, :alert => "Title and price must be present"
    end

  end

  def destroy
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def edit
  end
end
