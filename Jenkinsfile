node{
       stage('SCM Checkout'){
           git 'https://github.com/sushilthapa91/simplejava_project/new/master'
       }
       stage('Compile-Package'){
           def mvnHome = tool name:  'maven362', type: 'maven'
           sh "${mvnHome}/bin/mvn package"
       
       }
   }
