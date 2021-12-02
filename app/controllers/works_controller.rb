class WorksController < ApplicationController
  # before_save :sanitize_work_params
  before_action :set_work, only: %i[ show edit update destroy ]

  # GET /works or /works.json
  def index
    @works = Work.all   
    @work = Work.new(:r_date => params[:new_date])
    # @tasks = Task.all 
        @task_options = Task.all.map{ |t| [t.title, t.id]} 
  end

  # GET /works/1 or /works/1.json
  def show
  end

  # GET /works/new
  def new
    
    @work = Work.new(:r_date => params[:new_date])

  end

  # GET /works/1/edit
  def edit 
   
  end

  def convert_time(var1)
    var1 = work_params[:r_time]
    hr , min = var1.split(":")
    hr = hr.to_i 
    min = min.to_i 

    hr = hr * 60 
    newtime = hr+min
    @work[:r_time] = hr + min
  
  end

  # POST /works or /works.json
  def create
    
    @work = Work.new(work_params)
    @var = work_params[:r_time]
   
    convert_time(@var)
    respond_to do |format|
      if @work.save
       
        format.html { redirect_to works_path([:current_date] => work_params[:r_date]), notice: "Work was successfully created." }
    
        format.json { render :show, status: :created, location: @work }
      else
        format.html { redirect_to works_path([:current_date] => work_params[:r_date]), notice: "Work was successfully created." } 
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  
  # PATCH/PUT /works/1 or /works/1.json
  def update
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to @work, notice: "Work was successfully updated." }
        format.json { render :show, status: :ok, location: @work }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /works/1 or /works/1.json
  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to works_url, notice: "Work was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def next_week
       @viewdate = @viewdate + 7.days 


    end


    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_params
      params.require(:work).permit(:r_date, :r_time, :task_id, :note)
    end
end
