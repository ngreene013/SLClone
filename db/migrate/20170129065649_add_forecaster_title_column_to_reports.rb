class AddForecasterTitleColumnToReports < ActiveRecord::Migration
  def change
    add_column :reports, :forecastertitle, :string
    add_column :reports, :forecasteremail, :string
  end
end
