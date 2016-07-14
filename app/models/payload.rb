class Payload < ActiveRecord::Base
require 'functions/sl_functions'
require 'functions/string_functions'

  def self.create_new_payload(id)
    trans_json = StringFunctions::transform_sl_keys! SlFunctions::get_json(id)
    Payload.create(trans_json)
  end



end
