# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_150_614_044_429) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'cats', force: :cascade do |t|
    t.string 'name'
    t.string 'description'
    t.string 'personality'
    t.integer 'strength'
    t.datetime 'created_at',  null: false
    t.datetime 'updated_at',  null: false
  end

  create_table 'goods', force: :cascade do |t|
    t.string 'name'
    t.string 'description'
    t.string 'price_type'
    t.integer 'price_value'
    t.string 'size'
    t.datetime 'created_at',  null: false
    t.datetime 'updated_at',  null: false
  end

  create_table 'snaps', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'spots', force: :cascade do |t|
    t.integer 'position_id'
    t.integer 'yard_id'
    t.datetime 'created_at',  null: false
    t.datetime 'updated_at',  null: false
  end

  create_table 'users', force: :cascade do |t|
    t.integer 'silver'
    t.integer 'gold'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'visits', force: :cascade do |t|
    t.integer 'cat_id'
    t.integer 'user_id'
    t.integer 'spot_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'yards', force: :cascade do |t|
    t.string 'name'
    t.string 'price_type'
    t.integer 'price_value'
    t.datetime 'created_at',  null: false
    t.datetime 'updated_at',  null: false
  end
end
