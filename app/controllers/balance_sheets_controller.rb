class BalanceSheetsController < ApplicationController
  before_action :set_balance_sheet, only: %i[ show edit update destroy ]

  # GET /balance_sheets or /balance_sheets.json
  def index
    @balance_sheets = BalanceSheet.all
  end

  # GET /balance_sheets/1 or /balance_sheets/1.json
  def show
  end

  # GET /balance_sheets/new
  def new
    @balance_sheet = BalanceSheet.new
  end

  # GET /balance_sheets/1/edit
  def edit
  end

  # POST /balance_sheets or /balance_sheets.json
  def create
    @balance_sheet = BalanceSheet.new(balance_sheet_params)

    respond_to do |format|
      if @balance_sheet.save
        format.html { redirect_to balance_sheet_url(@balance_sheet), notice: "Balance sheet was successfully created." }
        format.json { render :show, status: :created, location: @balance_sheet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @balance_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /balance_sheets/1 or /balance_sheets/1.json
  def update
    respond_to do |format|
      if @balance_sheet.update(balance_sheet_params)
        format.html { redirect_to balance_sheet_url(@balance_sheet), notice: "Balance sheet was successfully updated." }
        format.json { render :show, status: :ok, location: @balance_sheet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @balance_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /balance_sheets/1 or /balance_sheets/1.json
  def destroy
    @balance_sheet.destroy

    respond_to do |format|
      format.html { redirect_to balance_sheets_url, notice: "Balance sheet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_balance_sheet
      @balance_sheet = BalanceSheet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def balance_sheet_params
      params.require(:balance_sheet).permit(:share_capital, :retained_earnings, :shareholder_funds, :borrowings, :property_and_equiptments, :prepaid_operating_lease_rentals, :intangible_assets, :deffered_tax, :inventories, :trade_and_other_receivables, :cash_at_bank_and_in_hand, :trade_and_other_payables, :current_tax, :date_of_report, :company_id)
    end
end
