
node {   
  print "${env.PATH}"

  def FLUTTER_HOME = "/foo/bar/flutter/bin"
  env.PATH = env.PATH+":$FLUTTER_HOME/bin"
  print "${env.PATH}"

  sh "flutter doctor -v"
}
