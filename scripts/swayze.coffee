# To celebrate legancy actor Patrick Swayze

swayzes = [
  'http://images5.fanpop.com/image/photos/31400000/Patrick-Swayze-patrick-swayze-31404258-1280-1024.jpg'
  'http://i1.cdnds.net/14/02/618x400/patrick-swayze.jpg'
  'http://images5.fanpop.com/image/photos/31200000/Point-Break-patrick-swayze-31226708-1786-2560.jpg'
  'http://ilovehorses.net/wp-content/uploads/2014/06/patrick_swayze_tammen2.png'
  'https://media3.giphy.com/media/v22JfwLFi6nNS/giphy.gif'
  'https://media0.giphy.com/media/69OUouHRzrvcA/giphy.gif'
  'https://media.giphy.com/media/a50HSsMdJhSuY/giphy.gif'
  'https://media3.giphy.com/media/6YUzwGtRLH1QI/giphy.gif'
  'https://media4.giphy.com/media/rWEr9G9dTWBG/giphy.gif'
  'https://media3.giphy.com/media/QIFG862Fp0Py8/giphy.gif'
]

module.exports = (robot) ->

  robot.hear /swayze/i, (msg) ->
    swayze = swayzes[ Math.floor(Math.random() * swayzes.length) ]
    msg.send swayze
