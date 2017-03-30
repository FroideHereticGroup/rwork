class User < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => { :case_sensitive => false }
  validates :password, :presence => true, :confirmation=> true

  has_many :tasks

  before_create :digest_password

  def self.authenticate(email, password)
    where(:email => email, :password => Digest::SHA1.hexdigest(password)).first #[0]とfirstは同じ
  end

  private

  def digest_password
    self.password = Digest::SHA1.hexdigest(self.password)
  end
end
