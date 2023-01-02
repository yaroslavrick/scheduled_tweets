# frozen_string_literal: true

# email:string
# password_digest:string
#
# has_secure_password gives:
# password:string virtual
# password_confirmation:string virtual

# rails console:
# User
# User.all
# User.create({email: "yaroslav@gmail.com", password: "password", password_confirmation: "password"})
# User.first
# User.all

class User < ApplicationRecord
  has_secure_password

  # to validate email:
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
  # user = User.create(password: "password", password_confirmation: "password", email: "a")
  # user.errors
end
