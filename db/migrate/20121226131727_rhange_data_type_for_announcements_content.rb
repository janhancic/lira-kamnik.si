class RhangeDataTypeForAnnouncementsContent < ActiveRecord::Migration
	def up
		change_table :announcements do |t|
			t.change :content, :text
		end
	end
end