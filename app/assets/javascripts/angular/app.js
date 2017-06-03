(function () {
    'use strict';

    angular.module('surfLina', [])
        .controller('SpotController', SpotController)
        .service('SpotService', SpotService)

    SpotController.$inject(['SpotService']);
    function SpotController(SpotService) {
        var spot = this;

        spot.getSpotReport = function(spotID){
            spot.report = []
            var promise = SpotService.getSpotReport(spotID)
            promise.then(function(response){
                spot.report = response;
            })
        }

    }

    SpotService.$inject = ['$http'];
    function SpotService($http) {
        var service = this;
        var report = [];

        service.getSpotReport = function (spotID) {
            return $http({
                method: 'GET',
                url: ("http://api.surfline.com/v1/forecasts/4127?resources=analysis&days=7&getAllSpots=false&units=e&interpolate=false&showOptimal=false")
            }).then(function (response) {
                return response.analysis;

            })
        }

    }

})();