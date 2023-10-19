class Admin::ExperiencesController < Admin::AdminController
  before_action :set_experience, only: %i[ show edit update destroy ]

  def index
    @experiences = Experience.order(:order)
  end

  # GET /admin/experiences/1 or /admin/experiences/1.json
  def show
  end

  # GET /admin/experiences/new
  def new
    @experience = Experience.new
  end

  # GET /admin/experiences/1/edit
  def edit
  end

  # POST /admin/experiences or /admin/experiences.json
  def create
    @experience = Experience.new(experience_params)

    respond_to do |format|
      if @experience.save
        if @experience.skillset.present?
          @experience.skill_list.add(@experience.skillset, parse: true)
          @experience.save
        end
        format.html { redirect_to admin_experiences_url, notice: "Experience was successfully created." }
        format.json { render :show, status: :created, location: @experience }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/experiences/1 or /admin/experiences/1.json
  def update
    if @experience.update(experience_params)
      if @experience.skillset.present?
        @experience.skill_list.add(@experience.skillset, parse: true)
        @experience.save
      end
      if params[:index]
        redirect_to admin_experiences_url
      else
        redirect_to admin_experiences_url, notice: "Experience was successfully updated."
      end
    else
      ender :edit, status: :unprocessable_entity
    end
  end

  # DELETE /admin/experiences/1 or /admin/experiences/1.json
  def destroy
    @experience.destroy

    respond_to do |format|
      format.html { redirect_to admin_experiences_url, notice: "Experience was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience
      @experience = Experience.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def experience_params
      params.require(:experience).permit(:title, :name, :url, :start_date, :end_date, :description, :order, :location, :experience, :skillset)
    end
end
