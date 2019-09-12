require 'yaml'

def load_library(file_path)
emoticons = YAML.load_file(file_path)

emoticons_lib = {
  :get_meaning => { },
  :get_emoticon => { }
}

emoticons.each do |meaning, value|
  english_value = value[0]
  japenese = value[1]
  emoticons_lib['get_meaning'][japenese] = meaning
  emoticons_lib['get_emoticon'][english_value] = japenese
end

emoticons
end

