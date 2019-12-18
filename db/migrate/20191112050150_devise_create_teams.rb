# frozen_string_literal: true

class DeviseCreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      ## Database authenticatable
      t.string :name,               null: false, unique: true, index: true
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string   :reset_password_token
      t.datetime :remember_created_at
      t.timestamps null: false
    end

    #add_index :teams, :email,                unique: true
    add_index :teams, :reset_password_token, unique: true
    # add_index :teams, :confirmation_token,   unique: true
    # add_index :teams, :unlock_token,         unique: true
  end
end
