class Assignment < ApplicationRecord

    validates :name, presence:true
    validates :street, presence:true
    validates :city, presence:true
    validates :zip, presence:true
    validates :phone, presence:true
    validates_format_of :phone, :with => /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/, :message => "invalid format"



    has_many :tasks
    has_many :users, through: :tasks

    
end