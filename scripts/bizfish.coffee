# Description:
#   Business Fish emotions
#
# Commands:
#   hubot bizfish me - Random Business Fish reaction!

bizfishes = [
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xfp1/t39.1997-6/p128x128/10734321_746324855439947_79477014_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xfp1/t39.1997-6/p128x128/10734329_746324612106638_1698075276_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xfa1/t39.1997-6/p128x128/10734333_746324772106622_1503028309_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xfa1/t39.1997-6/p128x128/10734304_746324585439974_324397897_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xfa1/t39.1997-6/p128x128/10734318_746324688773297_1895022767_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xfp1/t39.1997-6/p128x128/10734346_746324715439961_1455874677_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xpa1/t39.1997-6/p128x128/10734301_746324728773293_445003859_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xpa1/t39.1997-6/p128x128/10734323_746324642106635_165365620_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xfp1/t39.1997-6/p128x128/851545_746324815439951_183816980_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xpf1/t39.1997-6/p128x128/10734292_748894898516276_129343057_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xpa1/t39.1997-6/p128x128/10734306_746324658773300_1409474336_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xfa1/t39.1997-6/p128x128/10734293_746324742106625_1957579205_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xfp1/t39.1997-6/p128x128/10734338_746324758773290_1800443591_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xta1/t39.1997-6/p128x128/10734325_746324842106615_1695759734_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xfp1/t39.1997-6/p128x128/10734308_746324702106629_871782840_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xaf1/t39.1997-6/p128x128/10734331_748893658516400_1387776880_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xap1/t39.1997-6/p128x128/10734335_746324802106619_1998824233_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xaf1/t39.1997-6/p128x128/10541018_746324788773287_1416663872_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xfp1/t39.1997-6/p128x128/851543_748882738517492_1770908491_n.png",
  "https://fbcdn-dragon-a.akamaihd.net/hphotos-ak-xta1/t39.1997-6/p128x128/10734320_746324828773283_1549021141_n.png"
]

module.exports = (robot) ->
  robot.respond /bizfish me/i, (msg) ->
    bizfish = bizfishes[ Math.floor(Math.random()*bizfishes.length) ]
    msg.send bizfish

