node{
       stage('SCM Checkout'){
           git 'https://github.com/sushilthapa91/simplejava_project.git'
       }
       stage('Compile-Package'){
           def mvnHome = tool name:  'maven362', type: 'maven'
           sh "${mvnHome}/bin/mvn package"
       
       }
   
       stage('deploy-dev'){
              deploy adapters: [tomcat8(credentialsId: 'tomcat-username-password', path: '', url: 'http://192.168.0.6:8080')], contextPath: 'dev1', war: 'target/javaee7-simple-sample.war'
        
       }
       stage('upload-nexus'){
	       nexusArtifactUploader credentialsId: 'nexus', groupId: 'javax', nexusUrl: '192.168.0.14:31071', nexusVersion: 'nexus3', protocol: 'http', repository: 'snapshot', version: '7.0'
	       
      }	
  }
