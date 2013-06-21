require_relative '../config'

class CreateLegislators < ActiveRecord::Migration
  def change
    create_table :legislators do |field|
      field.string :title, :null => false
      field.string :firstname, :null => false
      field.string :middlename
      field.string :lastname, :null => false
      field.string :name_suffix
      field.string :nickname
      field.string :party, :null => false
      field.string :state, :null => false
      field.integer :district, :null => false
      field.integer :in_office, :null => false
      field.string :gender, :null => false
      field.string :phone
      field.string :fax
      field.string :website
      field.string :webform
      field.string :congress_office, :null => false
      field.string :bioguide_id, :null => false
      field.string :votesmart_id, :null => false
      field.string :fec_id, :null => false
      field.string :govtrack_id, :null => false
      field.string :crp_id, :null => false
      field.string :twitter_id
      field.string :congresspedia_url, :null => false
      field.string :youtube_url
      field.string :facebook_id
      field.string :official_rss
      field.string :senate_class
      field.string :birthdate, :null => false
    end
  end
end
