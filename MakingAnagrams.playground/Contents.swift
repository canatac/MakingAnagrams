//: Playground - noun: a place where people can play

var line1 = "abcdefgxxh"
var line2 = "hgfedcaxxa"
var counter = 0

var line1Tmp = line1.characters.count >= line2.characters.count ? line1:line2
var line2Tmp = line1.characters.count < line2.characters.count ? line1:line2
var letterProcessed:[Character] = [Character]()

line1Tmp.characters.forEach({element in
 if letterProcessed.contains(element) {
  return
 }
 letterProcessed.append(element)
 let line1Tmp2 = line1Tmp.characters.filter({$0 == element})
 let line2Tmp2 = line2Tmp.characters.filter({$0 == element})
 counter = counter + (abs(line1Tmp2.count - line2Tmp2.count))
})

print("\(counter)")

