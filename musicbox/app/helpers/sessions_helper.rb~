module SessionsHelper
	def sign_in(artist)
		cookies.permanent.signed[:remember_token] = [artist.id, artist.salt]
		current_artist = artist
	end

	def current_artist(artist)
		@current_artist = artist
	end

	def current_artist
		@current_artist ||= artist_from_remember_token
	end

	private
			def artist_from_remember_token
				Artist.authenticate_with_salt(*remember_token)
			end

			def remember_token
				cookies.signed[:remember_token]||[nil, nil]
			end
end
