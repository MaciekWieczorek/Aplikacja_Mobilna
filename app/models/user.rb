class User < ApplicationRecord
<<<<<<< HEAD
	has_secure_password
=======
	has_secure_token
>>>>>>> ac0191d6c6c3fff9f36c34a7219cdb0f25924722

	def invalidate_token
  		self.update_columns(token: nil)
	end
end
