require 'couchrest_model'


class User < CouchRest::Model::Base

    attr_accessor :current_user
    attr_accessor :password
    
     validates :name,  presence: true
     


 

	before_save :encrypt_password
    after_save :clear_password
     
    property :name, String
	property :username, String
	property :password, String
	property  :salt, String
   

	timestamps!

	design do
         view :by_username
         view :by_password
         view :by_id

		
	end

	
   def encrypt_password
		  if password.present?
		    self.salt = BCrypt::Engine.generate_salt
		    self.password= BCrypt::Engine.hash_secret(password, salt)
		  end
    end

	def clear_password
	  self.password = nil
	end


	def self.authenticate(username="", login_password="")
	  
	     user = User.by_username.key(username).last
         	   
	    if user && user.match_password(login_password)
	    	
	       return user
	  
	    else
	       return false
	    end
	end   

    def match_password(login_password="")

      password == BCrypt::Engine.hash_secret(login_password, salt)

    end


end
 