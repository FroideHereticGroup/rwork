class User < ApplicationRecord
	validates :tel, :presence => true, :uniqueness => true
	validates :name, :presence => true, :uniqueness => true
	validates :phonetic, :presence => true, :uniqueness => true
	validates :address, :presence => true, :uniqueness => true
	validates :birthday, :presence => true, :uniqueness => true
end
