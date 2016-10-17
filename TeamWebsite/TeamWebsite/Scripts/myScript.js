/// <reference path="angular.min.js" />

var appApp = angular.module("myModule", [])

          .controller("myController", function ($scope, $http) {
              $http.post('SubjectService.asmx/getAllSubjects')
                    .then(function (response) {
                        $scope.subjects = response.data;
                    });
          });
