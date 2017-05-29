require "yaml"

def load_library(file)

emoticons_pack = YAML.load_file('./lib/emoticons.yml')

emoticons_hash  = {"get_meaning"=> {}, "get_emoticon" => {}}

emoticons_hash.each do |emoticon_key,emoticon_value|
  emoticons_pack.each do |meaning,emoticon_array|
    if emoticon_key == "get_meaning"
      emoticon_value[emoticon_array[1]] = meaning
    else
      emoticon_value[emoticon_array[0]] = emoticon_array[1]
    end
  end
end
emoticons_hash
end







def get_japanese_emoticon(file, emoticon)

emoticons = load_library(file)

if emoticons["get_emoticon"].include?(emoticon)
  emoticons["get_emoticon"][emoticon]
else
  "Sorry, that emoticon was not found"
end
end

def get_english_meaning(file, emoticon)
  emoticons = load_library(file)

  if emoticons["get_meaning"].include?(emoticon)
    emoticons["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end
