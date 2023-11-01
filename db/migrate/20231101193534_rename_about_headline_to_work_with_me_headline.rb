class RenameAboutHeadlineToWorkWithMeHeadline < ActiveRecord::Migration[7.1]
  def change
    rename_column :settings, :about_headline, :work_with_me_headline
    rename_column :settings, :about_subheading, :work_with_me_subheading
  end
end
