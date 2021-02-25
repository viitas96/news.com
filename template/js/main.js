$(document).ready(function($) {
	$('.popup-open').click(function() {
		$('.popup-fade').fadeIn();
		return false;
	});	
	
	$('.popup-close').click(function() {
		$(this).parents('.popup-fade').fadeOut();
		return false;
	});		
 
	$(document).keydown(function(e) {
		if (e.keyCode === 27) {
			e.stopPropagation();
			$('.popup-fade').fadeOut();
		}
	});
	
	$('.popup-fade').click(function(e) {
		if ($(e.target).closest('.popup').length == 0) {
			$(this).fadeOut();					
		}
	});

	$('.popup-open__2').click(function() {
		$('.popup-fade__2').fadeIn();
		return false;
	});

	$('.popup-close__2').click(function() {
		$(this).parents('.popup-fade__2').fadeOut();
		return false;
	});

	$(document).keydown(function(e) {
		if (e.keyCode === 27) {
			e.stopPropagation();
			$('.popup-fade__2').fadeOut();
		}
	});

	$('.popup-fade__2').click(function(e) {
		if ($(e.target).closest('.popup__2').length == 0) {
			$(this).fadeOut();
		}
	});

    $('button.add').on('click', function(){
        let titleValue = $('input.title').val().trim();
        let textValue = $('textarea.text').val().trim();
		if (titleValue === ''){
			alert('Campul titlu este gol!')
		}
		else if (textValue ===''){
			alert('Capul text este gol!')
		}
		else {
			$.ajax({
				method: "POST",
				url: "../ajax/add.php",
				data: { title: titleValue, text: textValue }
			})
				.done(function() {
					window.location.reload();
				});
			$('input.title').val('');
			$('textarea.text').val('');
		}
    })

	$('.delete_data').click(function (){
		let id = $(this).attr('id');
		$.ajax({
			method: "POST",
			url: "../ajax/delete.php",
			data: { id: id}
		})
			.done(function(msg) {
				alert( 'Post sters!');
				window.location.reload();
			});
	})

	$('.edit').click(function () {
		let id = $(this).attr('id');
		let titleValue = $('input.title').val().trim();
        let textValue = $('textarea.text').val().trim();
		if (titleValue === ''){
			alert('Campul titlu este gol!')
		}
		else if (textValue ===''){
			alert('Capul text este gol!')
		}
		else {
			$.ajax({
				method: "POST",
				url: "../ajax/update.php",
				data: {title: titleValue, text: textValue, id: id}
			})
				.done(function(msg) {
					alert( 'Post actualizat!');
					window.location.reload();
				});
		}

	})
});

