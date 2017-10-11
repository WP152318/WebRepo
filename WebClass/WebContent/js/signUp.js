$(document).ready(function() {
	$('#signUpForm').submit(function() {
		// 자동 submit되는 기능을 막음
		event.preventDefault();

		// document.getElementById("id").value
		var grade = $('#grade').val();
		var ban = $('#ban').val();
		var number = $('#number').val();
		var name = $('#name').val();

		// 서버로 post 방식으로 전송
		$.post("http://httpbin.org/post", {
			grade : grade,
			ban : ban,
			number : number,
			name : name
		}, function(data) {
			// alert(data.form.name + "님 로그인되었습니다.");
			var myModal = $('#myModal2');
			$('#signUpModal').modal('hide');
			myModal.modal();
			myModal.find('.modal-body').text(data.form.name + "님 회원가입되었습니다.");
		});
	});
});

function closeModal(modalName) {
	var target = $(modalName);
	target.modal('hide');
}