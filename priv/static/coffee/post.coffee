app = angular.module("Status", ["ngResource"])

app.factory "Post", ($resource)
  $resource("/posts/:id", {id: "@id"}, {update: {method: "PUT"}} )

@PostCtrl = ($scope, Post) ->
  $scope.addPost = ->
    $scope.posts.unshift($scope.newPost)
    $scope.newPost = {}
  $scope.posts = Post.query()
