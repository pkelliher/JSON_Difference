def self.change_differences(text1,text2) #oldtext, newtext
    result = ""
    tokens = text2.split(/(?<=[?.!,])/) #Positive look behind regexp.
    for token in tokens
      if text1.sub!(token,"") #Yes it contained it.
        result += "<span class='diffsame'>" + token + "</span>"
      else
        result += "<span class='diffadd'>" + token + "</span>"
      end
    end
    tokens = text1.split(/(?<=[?.!,])/) #Positive look behind regexp.
    for token in tokens
      result += "<span class='diffremove'>"+token+"</span>"
    end
    return result
  end