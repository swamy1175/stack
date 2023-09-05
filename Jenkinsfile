node {   
  print "${env.PATH}"

  def FLUTTER_HOME = "/tmp/workspace/flutter"
  env.PATH = env.PATH+":$FLUTTER_HOME/bin"
  print "${env.PATH}"

  sh "flutter --version"
}
