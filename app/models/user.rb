class User < ApplicationRecord
  include Clearance::User

  encrypts :email
end
