module StringFunctions

  def self.hyphenize(string)
    if single_word? string
      string.downcase
    else
      string.strip.gsub(/ /, '-').downcase
    end
  end

  def self.single_word?(string)
    !string.strip.include? " "
  end

  def self.transform_sl_keys!(json)
    json['place_id'] = json.delete('id') if json['id'] #set the id col to the spot/region id

    if json['startDate_LOCAL']
      json['startDate_LOCAL'] = Time.at(json['startDate_LOCAL'])
    end

    json.transform_keys! { |key| hyphenize key }
  end

end