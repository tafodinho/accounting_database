class DirectorReportsController < ApplicationController
  before_action :set_director_report, only: %i[ show edit update destroy ]

  # GET /director_reports or /director_reports.json
  def index
    @director_reports = DirectorReport.all
  end

  # GET /director_reports/1 or /director_reports/1.json
  def show
  end

  # GET /director_reports/new
  def new
    @director_report = DirectorReport.new
  end

  # GET /director_reports/1/edit
  def edit
  end

  # POST /director_reports or /director_reports.json
  def create
    @director_report = DirectorReport.new(director_report_params)

    respond_to do |format|
      if @director_report.save
        format.html { redirect_to director_report_url(@director_report), notice: "Director report was successfully created." }
        format.json { render :show, status: :created, location: @director_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @director_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /director_reports/1 or /director_reports/1.json
  def update
    respond_to do |format|
      if @director_report.update(director_report_params)
        format.html { redirect_to director_report_url(@director_report), notice: "Director report was successfully updated." }
        format.json { render :show, status: :ok, location: @director_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @director_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /director_reports/1 or /director_reports/1.json
  def destroy
    @director_report.destroy

    respond_to do |format|
      format.html { redirect_to director_reports_url, notice: "Director report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_director_report
      @director_report = DirectorReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def director_report_params
      params.require(:director_report).permit(:body, :date_of_report, :company_id_id, :director_1, :director_2)
    end
end
