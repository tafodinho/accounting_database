class ProfitAndLossAccountsController < ApplicationController
  before_action :set_profit_and_loss_account, only: %i[ show edit update destroy ]

  # GET /profit_and_loss_accounts or /profit_and_loss_accounts.json
  def index
    @profit_and_loss_accounts = ProfitAndLossAccount.all
  end

  # GET /profit_and_loss_accounts/1 or /profit_and_loss_accounts/1.json
  def show
  end

  # GET /profit_and_loss_accounts/new
  def new
    @profit_and_loss_account = ProfitAndLossAccount.new
  end

  # GET /profit_and_loss_accounts/1/edit
  def edit
  end

  # POST /profit_and_loss_accounts or /profit_and_loss_accounts.json
  def create
    @profit_and_loss_account = ProfitAndLossAccount.new(profit_and_loss_account_params)

    respond_to do |format|
      if @profit_and_loss_account.save
        format.html { redirect_to profit_and_loss_account_url(@profit_and_loss_account), notice: "Profit and loss account was successfully created." }
        format.json { render :show, status: :created, location: @profit_and_loss_account }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profit_and_loss_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profit_and_loss_accounts/1 or /profit_and_loss_accounts/1.json
  def update
    respond_to do |format|
      if @profit_and_loss_account.update(profit_and_loss_account_params)
        format.html { redirect_to profit_and_loss_account_url(@profit_and_loss_account), notice: "Profit and loss account was successfully updated." }
        format.json { render :show, status: :ok, location: @profit_and_loss_account }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profit_and_loss_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profit_and_loss_accounts/1 or /profit_and_loss_accounts/1.json
  def destroy
    @profit_and_loss_account.destroy

    respond_to do |format|
      format.html { redirect_to profit_and_loss_accounts_url, notice: "Profit and loss account was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profit_and_loss_account
      @profit_and_loss_account = ProfitAndLossAccount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profit_and_loss_account_params
      params.require(:profit_and_loss_account).permit(:sales, :cost_of_sales, :gross_profit, :other_operating_income, :administrative_expenses, :other_operating_expenses, :operating_profit, :finance_cost, :profit_before_tax, :tax, :net_profit_for_the_year, :date_of_report, :company_id)
    end
end
