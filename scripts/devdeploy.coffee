jenkinsURL           = process.env.HUBOT_CIBOT_URL
jenkinsToken         = process.env.HUBOT_CIBOT_BUILD_TOKEN
jenkinsBuildJobName  = process.env.HUBOT_CIBOT_DEV_BUILD_JOB_NAME

doDevDeploy = (robot, msg, branch="master") ->
  msg.send "Branch #{branch}"
  username = msg.envelope.user.name
  msg.send "User #{username}"
  jobUrl = "#{jenkinsURL}/buildByToken/buildWithParameters?job=#{jenkinsBuildJobName}&token=#{jenkinsToken}&BRANCH=#{branch}&SLACKUSER=#{username}&ACTION=deploy"
  robot.http(jobUrl)
    .get() (err, res, body) ->
      if res.statusCode is 200
        msg.send "Deploy successful"

getStatus = (robot, msg) ->
  msg.send "Getting status"
  jobUrl = "#{jenkinsURL}/buildByToken/buildWithParameters?job=#{jenkinsBuildJobName}&token=#{jenkinsToken}&ACTION=list"
  robot.http(jobUrl)
    .get() (err, res, body) ->
      console.log(body)
      if res.statusCode is 200
        msg.send "Action successful"

unlockMachine = (robot, msg, machine) ->
  msg.send "Unlocking #{machine}"
  jobUrl = "#{jenkinsURL}/buildByToken/buildWithParameters?job=#{jenkinsBuildJobName}&token=#{jenkinsToken}&ACTION=unlock&MACHINE=#{machine}"
  robot.http(jobUrl)
    .get() (err, res, body) ->
      console.log(body)
      if res.statusCode is 200
        msg.send "Action successful"
  

module.exports = (robot) ->
  robot.respond /devdeploy status/i, (msg) ->
    getStatus(robot, msg)

  robot.respond /devdeploy\s+unlock\s+(dev[0-9])/i, (msg) ->
    machine = msg.match[1]
    if machine isnt "dev1" and machine isnt "dev2" and machine isnt "dev3"
      msg.send "#{machine} isnt a valid target"
    else
      unlockMachine(robot, msg, machine)

  robot.respond /devdeploy\s+([a-zA-Z0-9-/']+)/i, (msg) ->
    branch = msg.match[1] or null
    if branch isnt "status" and branch isnt "unlock"
      doDevDeploy(robot,msg,branch)
