class AuditorReportsController < ApplicationController
  before_action :set_auditor_report, only: %i[ show edit update destroy ]

  # GET /auditor_reports or /auditor_reports.json
  def index
    @auditor_reports = AuditorReport.all
  end

  # GET /auditor_reports/1 or /auditor_reports/1.json
  def show
  end

  # GET /auditor_reports/new
  def new
    @auditor_report = AuditorReport.new
  end

  # GET /auditor_reports/1/edit
  def edit
  end

  # POST /auditor_reports or /auditor_reports.json
  def create
    @auditor_report = AuditorReport.new(auditor_report_params)

    respond_to do |format|
      if @auditor_report.save
        format.html { redirect_to auditor_report_url(@auditor_report), notice: "Auditor report was successfully created." }
        format.json { render :show, status: :created, location: @auditor_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @auditor_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auditor_reports/1 or /auditor_reports/1.json
  def update
    respond_to do |format|
      if @auditor_report.update(auditor_report_params)
        format.html { redirect_to auditor_report_url(@auditor_report), notice: "Auditor report was successfully updated." }
        format.json { render :show, status: :ok, location: @auditor_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @auditor_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auditor_reports/1 or /auditor_reports/1.json
  def destroy
    @auditor_report.destroy

    respond_to do |format|
      format.html { redirect_to auditor_reports_url, notice: "Auditor report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auditor_report
      @auditor_report = AuditorReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def auditor_report_params
      params.require(:auditor_report).permit(:title, :sub_title, :body, :opinion, :auditor, :date_of_report, :company_id)
    end
end
