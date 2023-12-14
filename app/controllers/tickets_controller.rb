class TicketsController < ApplicationController
  load_and_authorize_resource

  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.users << current_user
    if @ticket.save
      redirect_to @ticket
    else
      render :new, status: 422
    end
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])
    if @ticket.update(ticket_params)
      redirect_to @ticket
    else
      render :edit
    end
  end

  def book
    @ticket = Ticket.find(params[:id])
    if current_user.tickets << @ticket
      flash[:notice] = 'Билет успешно забронирован'
    else
      flash[:alert] = 'Не удалось забронировать билет'
    end
    redirect_to edit_user_registration_path
  end
    
  def unbook
      @ticket = Ticket.find(params[:id])
      if current_user.tickets.delete(@ticket)
        flash[:notice] = 'Бронирование билета успешно отменено'
      else
        flash[:alert] = 'Не удалось отменить бронирование билета'
      end
      redirect_to edit_user_registration_path
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    redirect_to root_path
  end

  private

  def ticket_params
    params.require(:ticket).permit(:departure_date, :arrival_date, :origin, :destination, :price)
  end
end
