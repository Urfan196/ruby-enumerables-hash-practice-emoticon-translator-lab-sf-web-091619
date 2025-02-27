require "yaml"
library = YAML.load_file('emoticons.yml')
# require modules here

def load_library (emoticons)
  emoticons.reduce({:get_meaning => {}, :get_emoticon => {}}) do |memo, (key, value)|
      memo[:get_meaning][value[1]] = key
      memo[:get_emoticon][value[0]] = value[1]
      memo
    end
  end


  def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
    if emoticon_h[:get_emoticon][emoticon]
      emoticon_h[:get_emoticon][emoticon]
    else
      "Sorry, that emoticon was not found"
    end
  end


  def get_english_meaning(file_path, emoticon)
library = load_library(file_path)
    if emoticon_h[:get_meaning][emoticon]
      emoticon_h[:get_meaning][emoticon]
    else
      "Sorry, that emoticon was not found"
    end
  end
