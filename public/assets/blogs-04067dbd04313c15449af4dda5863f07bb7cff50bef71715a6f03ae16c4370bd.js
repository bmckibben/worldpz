$(document).ready(function() {

	$(".annotate-group").on("click", function(e) {
		var id = $(this).data('id');
		$("#reply_"+id).toggle();
	});	
});

angular.module('appBlogReply', [])
.controller("ctlrBlogReply", function($scope, $http, $interval){
 

      $scope.postReply = function(id,body){
                 
            $http.post("/blog_comments/create",  
                  {"body":body,"commentable_id":parent_id }
                  )
                  .success(function(data){
                              alert("Your reply has been sent! It will be published if approved.");
                  })
                  .error(function(data){
                              alert("Your reply was NOT sent!");
                  });
      };
 
});
