var crudApp = angular.module('crudApp',[]);
crudApp.controller("DbController",['$scope','$http', function($scope,$http){

getInfo();
function getInfo(){
$http.post('databaseFiles/empDetails.php').success(function(data){
$scope.details = data;
});
}

$scope.show_form = true;
$scope.formToggle =function(){
	$('#empForm').slideToggle();
	$('#editForm').css('display', 'none');
}
$scope.insertInfo = function(info){
	$http.post('databaseFiles/insertDetails.php',{"name":info.name}).success(function(data){
		console.log(data);
		if (data == true) {
			getInfo();
			$('#empForm').css('display', 'none');
		}
	});
}
$scope.deleteInfo = function(info){
	$http.post('databaseFiles/deleteDetails.php',{"del_id":info.tarefa_id}).success(function(data){
		if (data == true) {
			getInfo();
		}
	});
}
$scope.currentUser = {};
$scope.editInfo = function(info){
	$scope.currentUser = info;
	$('#empForm').slideUp();
	$('#editForm').slideToggle();
}
$scope.UpdateInfo = function(info){
	$http.post('databaseFiles/updateDetails.php',{"id":info.tarefa_id,"name":info.tarefa_nome}).success(function(data){
		$scope.show_form = true;
		if (data == true) {
			getInfo();
		}
	});
}
$scope.updateMsg = function(tarefa_id){
	$('#editForm').css('display', 'none');
}
}]);