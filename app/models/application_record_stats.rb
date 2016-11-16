class ApplicationRecordStats < ActiveRecord::Base
	establish_connection DB_STATS
    self.abstract_class = true
end