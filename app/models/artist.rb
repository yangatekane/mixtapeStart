class Artist < ActiveRecord::Base
#	attr_accessor :password, :rating
#	attr_accessible :name, :genre, :record_label, :artist_type, :website, :rating, :email, :password, :password_confirmation, :validation



#	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

 #	validates :name,  	:presence 	=> true,
#			  	:length   	=> { :maximum => 50 }
#	validates :email, 	:presence 	=> true,
#			  	:format   	=> { :with => email_regex },
#	       		  	:uniqueness	=> { :case_sensitive => false }
	# Automatically create the virtual attribute 'password_confirmation'
#	validates :password,	:presence	=> true,
#				:confirmation	=> true,
#				:length		=> { :within => 6..40 }
	#before_save :encypt_password

	# Return true if the user's password matches the submitted password.
	#def has_password?(submitted_password)
	 #   encrypted_password == encrypt(submitted_password)
	#end

#	def self.authenticate(email,submitted_password)
#		artist = find_by_email(email)
#		return nil if artist.nil?
#		return artist if artist.has_password?(submitted_password)
#	end

#	private
#		def encrypt_password
#	self.salt = make_salt if new_record?
#			self.encypted_password = encrypt(password)
#		end

#		def encrypt(string)
#			secure_hash("#{salt}--#{string}")
#		end
#
#		def make_salt
#			secure_hash("{Time.now.utc}--#{password}")
#		end
#
#		def secure_hash(string)
#			Digest::SHA2.hexdigest(string)
#		end
#end
	#
	#
	#
	#

	has_one :photo ,:dependent => :destroy #has one image for now 
	attr_accessor  :password
	attr_accessible :name,:email,:password,:password_confirmation


	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :name,:presence=>true,
	                :length =>{:maximum=>50}
	validates  :email, :presence=>true,
			   :format=>{:with=>email_regex},
			   :uniqueness=>{:case_sensitive=>false}

       validates :password,:presence=>true,
	       		    :confirmation=>true,
			    :length=>{:within=> 6..40}

      before_save :encrypt_password
     

      def has_password?(submitted_password)
	      #compare encrypted_password with the encrypted version of the
	      #submitted password
	      encrypted_password == encrypt(submitted_password)
      end

      def self.authenticate(email,submitted_password)
              #returns nil if user does not exist
	      #returns user if user password is same as submitted one    
	      #implicity return nil if password is incorrect


	      user  = find_by_email(email) #find user using email address

	      return nil if user.nil?
	      return user if user.has_password?(submitted_password)
           
      end

      def self.authenticate_with_salt(id,cookie_salt)
	     user = find_by_id(id)
	     (user && user.salt == cookie_salt)? user :nil
      end
       private             
       def encrypt_password

	       self.salt = make_salt if new_record?
	       self.encrypted_password = encrypt(password)
       end

       def encrypt(string)
	      secure_hash("#{salt}--#{string}")
       end

       def make_salt
	       secure_hash("#{Time.now.utc}--#{password}")
       end

       def secure_hash(string)
	       Digest::SHA2.hexdigest(string)
       end
end
