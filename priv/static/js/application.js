// Generated by CoffeeScript 1.3.3
(function() {
  var app;

  app = angular.module("Raffler", ["ngResource"]);

  this.PostCtrl = function($scope) {
    $scope.addPost = function() {
      $scope.posts.unshift($scope.newPost);
      return $scope.newPost = {};
    };
    return $scope.posts = [];
  };

}).call(this);
