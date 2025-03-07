class InvoicesController < AuthController
  def new
    @invoice = Invoice.new
  end

  def create
    # invoice = Invoice.new(invoice_params)

    # if invoice.save
    #   redirect_to invoices_path
    # else
    #   puts invoice.errors.messages
    # end
  end

  def index
    @invoices = user.invoices
  end

  def show
    @invoice = Invoice.find_by(id: params[:id])

    unless @invoice.present?
      not_found
    end
  end

  def edit
  end

  def update
  end

  private

  def invoice_params
    params.require(:invoice).permit(
      :number,
      :send_date
    )
  end
end
