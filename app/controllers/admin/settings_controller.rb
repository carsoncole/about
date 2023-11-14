class Admin::SettingsController < Admin::AdminController
  before_action :set_setting, only: %i[ edit update ]

  def new
    @setting = Setting.new
  end

  def edit
  end

  def create
    @setting = Setting.new(setting_params)

    respond_to do |format|
      if @setting.save
        format.html { redirect_to edit_admin_setting_url(@setting), notice: "Setting was successfully created." }
        format.json { render :show, status: :created, location: @setting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @setting.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @setting.update(setting_params)
        format.html { redirect_to edit_admin_setting_path(@setting), notice: "Setting was successfully updated." }
        format.json { render :show, status: :ok, location: @setting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @setting.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_setting
      @setting = Setting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def setting_params
      params.require(:setting).permit(:name, :home_headline, :email, :summary,:linkedin_url, :github_url, :portfolio_url, :phone, :address, :meta_description, :status, :projects_headline, :experiences_headline, :work_with_me_headline, :source_headline, :projects_subheading, :experiences_subheading, :work_with_me_subheading, :source_subheading)
    end
end
