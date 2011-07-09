class DeviseCreateArtists < ActiveRecord::Migration
  def self.up
    create_table(:artists) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :artists, :email,                :unique => true
    add_index :artists, :reset_password_token, :unique => true
    # add_index :artists, :confirmation_token,   :unique => true
    # add_index :artists, :unlock_token,         :unique => true
    # add_index :artists, :authentication_token, :unique => true
  end

  def self.down
    drop_table :artists
  end
end
