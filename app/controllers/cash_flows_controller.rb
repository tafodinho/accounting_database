class CashFlowsController < ApplicationController
  before_action :set_cash_flow, only: %i[ show edit update destroy ]

  # GET /cash_flows or /cash_flows.json
  def index
    @cash_flows = CashFlow.all
  end

  # GET /cash_flows/1 or /cash_flows/1.json
  def show
  end

  # GET /cash_flows/new
  def new
    @cash_flow = CashFlow.new
  end

  # GET /cash_flows/1/edit
  def edit
  end

  # POST /cash_flows or /cash_flows.json
  def create
    @cash_flow = CashFlow.new(cash_flow_params)

    respond_to do |format|
      if @cash_flow.save
        format.html { redirect_to cash_flow_url(@cash_flow), notice: "Cash flow was successfully created." }
        format.json { render :show, status: :created, location: @cash_flow }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cash_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cash_flows/1 or /cash_flows/1.json
  def update
    respond_to do |format|
      if @cash_flow.update(cash_flow_params)
        format.html { redirect_to cash_flow_url(@cash_flow), notice: "Cash flow was successfully updated." }
        format.json { render :show, status: :ok, location: @cash_flow }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cash_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cash_flows/1 or /cash_flows/1.json
  def destroy
    @cash_flow.destroy

    respond_to do |format|
      format.html { redirect_to cash_flows_url, notice: "Cash flow was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cash_flow
      @cash_flow = CashFlow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cash_flow_params
      params.require(:cash_flow).permit(:profit_before_income_tax, :depreciation_on_property_plant_and_equiptments, :profit_on_disposal, :amortisation_of_prepaid_lease, :amortisation_of_intangible_assets, :interest_expense, :operating_profit_before_working_capital_changes, :inventories, :trade_and_other_recievables, :trade_and_other_payables, :cash_generated_from_operations, :tax, :interest_paid, :net_cash_generated_from_operating_activities, :purchase_of_property_plant_and_equiptments, :purchase_of_prepaid_operating_lease_rentals, :proceeds_from_sale_of_property_plant_and_equiptments, :intangible_assets, :interest_income, :net_cash_used_in_investing_activities, :proceeds_from_issue_of_share_capital, :proceeds_from_borrowing, :repayments_of_borrowing, :net_cash_generated_from_financial_activities, :net_decrease_in_cash_and_cash_equivalents, :cash_and_cash_equivalent_at_1st_january, :cash_and_cash_equivalent_at_31st_december, :company_id)
    end
end
