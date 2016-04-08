class User < ActiveRecord::Base
  after_destroy :ensure_an_admin_remains
  has_many :resumes, dependent: :destroy
  validates :fname, presence: true
  validates :lname, presence: true
  validates :email, presence: true, uniqueness: true
  has_secure_password
  
  private
    def ensure_an_admin_remains
        if User.count.zero?
          raise "Can't delete last user"
        end
    end
    
end
