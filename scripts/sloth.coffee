# Description:
#   Show me a sloth
#
# Commands:
#   hubot sloth me - Show me a sloth!
#
# Notes:
#   

sloths = [
  "http://media.giphy.com/media/s4zt0MoO4BJyU/giphy.gif"
  "http://media.giphy.com/media/dG4Qh4z9B1EuQ/giphy.gif"
  "http://media.giphy.com/media/b135sMcSDunAI/giphy.gif"
  "http://media.giphy.com/media/AsuYRRZSUkvQc/giphy.gif"
  "http://media.giphy.com/media/SqGzDP3l5NNQY/giphy.gif"
  "http://media.giphy.com/media/T6PwmJnEJFuA8/giphy.gif"
  "http://media.giphy.com/media/kNJAOLTyJ4MiQ/giphy.gif"
  "http://media.giphy.com/media/dQCmKY4IgywFy/giphy.gif"
  "http://media.giphy.com/media/ExWxxyUlLJDz2/giphy.gif"
  "http://media.giphy.com/media/mdGyT2DDjmnCg/giphy.gif"
]

module.exports = (robot) ->
  robot.respond /sloth me/i, (msg) ->
    sloth = sloths[ Math.floor(Math.random()*10) ]
    msg.send sloth