class Pin < ActiveRecord::Base
	
	  # Lets Paperclip know where to look for utility
  Paperclip.options[:command_path] = 'C:/PROGRA~1/IMAGEM~1.9-Q'

	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

    validates :image, presence: true
    validates :description, presence: true
end
