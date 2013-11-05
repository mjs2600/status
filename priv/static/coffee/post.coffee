@PostCtrl = ($scope) ->
  $scope.addPost = ->
    $scope.posts.unshift($scope.newPost)
    $scope.newPost = {}
  $scope.posts = []

