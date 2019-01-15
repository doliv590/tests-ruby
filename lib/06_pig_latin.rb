def translate(sentence)
#ARRAYS
  voyelle = ["a" ,"e" ,"i" ,"o" ,"u", "y" ]
  cons  = [ "b", "c", "d",  "f", "g", "h",  "j", "k", "l", "m", "n",  "p", "q", "r", "s", "t",  "v", "w", "x",  "z",  ]
  cons2 =["qu",]
  cons3=["sch","squ" ]

#CONSONNES SÉLÉCTIONNÉES APRÉS EXAMEN DU MOT (SELECTCONS)
  selectcons = ""
#ARRAY DE RECOMPOSITION DES MOTS APRÉS TRANSFORMATION
  phrase = []

# DÉCOMPOSITION DE L'ARGUMENT SOUS FORME DE TABLEAU
  words = sentence.scan(/\w+/)

# PASSAGE EN REVUE DE CHAQUE MOT DU TABLEAU
  words.each do |word|

#SI LA PREMIÈRE LETTRE DU MOT EST UNE VOYELLE
    if voyelle.include?(word[0])
      word = word+"ay"
      phrase << word
#SI LES 3 PREMIÈRES LETTRES DU MOT SONT DES CONSONNES RANDOM
    elsif cons.include?(word[0]) && cons.include?(word[1]) && cons.include?(word[2])
      selectcons = word[0]+word[1]+word[2]
      word = word.delete(selectcons)
      word = word+selectcons+"ay"
      phrase << word
#SI LES 3 PREMIÈRES LETTRES DU MOT SONT DES CONSONNES PARTICULIÈRES
    elsif cons3.include?(word[0]+word[1]+word[2])
      selectcons = word[0]+word[1]+word[2]
      word = word.delete(selectcons)
      word = word+selectcons+"ay"
      phrase << word
#SI LES 2 PREMIÈRES LETTRES DU MOT SONT DES CONSONNES PARTICULIÈRES
    elsif cons2.include?(word[0]+word[1])
      selectcons = word[0]+word[1]
      word = word.delete(selectcons)
      word = word+selectcons+"ay"
      phrase << word
#SI LES 3 PREMIÈRES LETTRES DU MOT SONT DES CONSONNES RANDOM
    elsif cons.include?(word[0]) && cons.include?(word[1])
      selectcons = word[0]+word[1]
      word = word.delete(selectcons)
      word = word+selectcons+"ay"
      phrase << word
#SI LA  PREMIÈRE LETTRE DU MOT EST UNE CONSONNE RANDOM
    elsif cons.include?(word[0])
      selectcons = word[0]
      word = word.delete(selectcons)
      word = word+selectcons+"ay"
      phrase << word
    else puts "je sais po"
    end

  end
#RECOMPOSITION DU TABLEAU EN STRING DISJOINTES
  return phrase.join(" ")
end

 # puts translate("square")
 # puts translate("cherry")
 # puts translate("apple")
 # puts translate("banana")
 # puts translate("eat pie")
# puts translate("the quick brown fox")
