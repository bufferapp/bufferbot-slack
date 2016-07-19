# Description:
#  Kick of a jenkins deploy build
#
# Commands:
#   hubot deploy <target> - Deploy master to the given envirnonment
#

jenkinsURL           = process.env.HUBOT_CIBOT_URL
jenkinsToken         = process.env.HUBOT_CIBOT_BUILD_TOKEN
jenkinsBuildJobName  = process.env.HUBOT_CIBOT_BUILD_JOB_NAME

startBuild = (msg, target, branch = "master") ->
    if !target
      #description = "Requested by #{msg.message.user.name} in #{msg.message.user.room}"
      msg.send "I'm sorry. You need to provide an elastic beanstalk Buffer target"
    else
      msg.send  "Branch: #{branch}"
      msg.send  "Target: #{target}"

      jobUrl = "#{jenkinsURL}/buildByToken/buildWithParameters?job=#{jenkinsBuildJobName}&token=#{jenkinsToken}&Target=#{target}&Branch=#{branch}"
      msg.http(jobUrl)
        .get() (err, res, body) ->
          if body.length > 2000
            msg.send "Whoops, I can't deploy to #{target}"
          else
            msg.send "Great, deploying #{branch} to #{target}"


module.exports = (robot) ->

  robot.respond /deploy\s*([._a-zA-Z0-9-/']+\s)(to\s+)?(.+)/i, (msg) ->
    branch     = msg.match[1] or null
    target     = msg.match[3] or null
    branch     = branch.replace /^\s+|\s+$/g, ""
    startBuild(msg, target, branch)

  robot.respond /deploy\s*(.+)/i, (msg) ->
    target     = msg.match[1] or null
    if !/.+\s.+/i.test(target)
      startBuild(msg, target)
