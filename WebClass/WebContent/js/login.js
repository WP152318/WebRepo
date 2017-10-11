$(document).ready(function() {
	$('#loginForm').submit(function() {
		// 자동 submit되는 기능을 막음
		event.preventDefault();

		// id, pwd값을 가져오기
		// document.getElementById("id").value
		var id = $('#id').val();
		var pwd = $('#pwd').val();

		// 서버로 post 방식으로 전송
		$.post("http://httpbin.org/post", {
			id : id,
			pwd : pwd
		}, function(data) {
			// alert(data.form.id + "님 로그인되었습니다.");
			var myModal = $('#myModal');
			$('#loginModal').modal('hide');
			myModal.modal();
			myModal.find('.modal-body').text(data.form.id + "님 로그인되었습니다.");
		});
	});
});

function closeModal(modalId) {
	var target = $(modalId);
	target.modal('hide');
}