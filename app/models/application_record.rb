class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def to_param
	    "#{uuid}"
  end
  def self.findby uuid
		find_by(uuid: uuid) || raise(ActiveRecord::RecordNotFound)
  end
end
