class Issue < ActiveRecord::Base
  has_attached_file :photo, :styles => { :medium => "614x614>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
