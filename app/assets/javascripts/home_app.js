angular.module('appHome', [])
.controller("ctlrContact", function($scope, $http, $interval){
 
      $scope.sendEmail = function(email_name, email_address, email_message){
                 
            $http.post("/home/contact_email",  
                  {"email_name":email_name,"email_address":email_address,"email_message":email_message }
                  )
                  .success(function(data){
                              alert("Your email has been sent!");
                  })
                  .error(function(data){
                              alert("An error occured. Your email was NOT sent!");
                  });
      };
 
})
.controller("ctlrComment", function($scope, $http, $interval){
 
      $scope.postReply = function(utf8,authenticity_token,blog_id,body){
  
            $http.post("/blog_comments", 
                  {"utf8":utf8,"authenticity_token":authenticity_token,  "blog_id":blog_id, "body":body } 
                  )
                  .success(function(data){
                              alert("Your reply has been sent! It will be published if approved.");
                  })
                  .error(function(data){
                              alert("An error occured. Your reply was NOT sent!");
                  });

      };
 
})
.controller("ctlrReply", function($scope, $http, $interval){
 
      $scope.postReply = function(utf8,authenticity_token,blog_comment_id,body){
            var params = parameter = JSON.stringify( {"utf8":utf8,"authenticity_token":authenticity_token,  "blog_comment_id":blog_comment_id, "body":body })    
            $http.post("/blog_comments", params )
                  .success(function(data){
                              alert("Your reply has been sent! It will be published if approved.");
                  })
                  .error(function(data){
                              alert("An error occured. Your reply was NOT sent!");
                  });

      };
 
});