input1 = "jchzalrnumimnmhp
haegwjzuvuyypxyu
aaa
uvu
ala
gdnzurjbbwmgayrg
gjdzbtrcxwprtery
fbuqqaatackrvemm
pcjhsshoveaodyko
lrpprussbesniilv
mmsebhtqqjiqrusd
vumllmrrdjgktmnb
ptsqjcfbmgwdywgi
mmppavyjgcfebgpl
zexyxksqrqyonhui
npulalteaztqqnrl
mscqpccetkktaknl
ydssjjlfejdxrztr
jdygsbqimbxljuue
ortsthjkmlonvgci
jfjhsbxeorhgmstc
vdrqdpojfuubjbbg
xxxddetvrlpzsfpq
zpjxvrmaorjpwegy
laxrlkntrukjcswz
qjhvhtzxzqqjkmpb
xxyxx
uurcxstgmygtbstg
ugknbfddgicrmopn"

input = File.read('input5.txt').lines.map! {|x| x.chomp}

def first(input)
  goodwords = []

  input.each do |word|
    if word.each_char.find_all{|c| c.match(/[aeuoi]/)}.length >= 3
      if word.match(/(\w)\1+/)
        unless word.match(/(ab)|(cd)|(pq)|(xy)/)
          goodwords << word
        end
      end
    end
  end

  p goodwords.length
end

first(input)

def second(input)
  goodwords = []

  input.each do |word|
    if word.match(/(\w)\w\1/)
      if word.match(/(..)\w*\1/)
        goodwords << word
      end
    end
  end

  p goodwords.length
end

second(input)
