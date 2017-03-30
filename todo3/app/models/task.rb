class Task < ActiveRecord::Base
  belongs_to :user

  validates :name, :presence => true, :uniqueness => true
  validates :deadline, :presence => true
  validates :priority, :inclusion => [0,1,2]
  # validate :validate_deadline_datetime

  scope :like_name, lambda {|name|
    where("name like ?", "%#{name}%") if name.present?
  }

  # private
  # def validate_deadline_datetime
  #   if new_record? && self.deadline && self.deadline < Time.now
  #     errors.add(:deadline, "過去のタスクは入力できません")
  #   end
  # end
end
