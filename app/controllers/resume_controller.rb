class ResumeController < ApplicationController
  def show
    @experiences = Experience.order(:order)
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "resume",
        type: 'application/pdf',
        page_size: 'Letter',
        template: "resume/show",
        layout: "pdf"
      end
    end
  end
end
