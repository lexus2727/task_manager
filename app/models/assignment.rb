class Assignment < ApplicationRecord
    validates :name, presence:true
    validates :street, presence:true
    validates :city, presence:true
    validates :zip, presence:true
    validates :phone, presence:true
    has_many :tasks
    has_many :users, through: :tasks
end