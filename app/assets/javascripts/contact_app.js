angular.module('appContact', [])
.controller("ctlrContact", function($scope, $http, $interval){
 

      $scope.sendEmail = function(email_name, email_address, email_message){
                 
            $http.post("/home/contact_email",  
                  {"email_name":email_name,"email_address":email_address,"email_message":email_message }
                  )
                  .success(function(data){
                              alert("Your email has been sent!");
                  })
                  .error(function(data){
                              alert("Your email was NOT sent!");
                  });
      };
 
});