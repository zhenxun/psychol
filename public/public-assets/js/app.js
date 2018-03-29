$(document).ready(function(){

	$('.tab').click(function(e){
		e.preventDefault();
		var role = $(this).attr('role');

		$('h3').removeClass('active');
		$("#"+role).toggleClass('active');
		$('.tab-inner').removeClass('show');
		$("."+role).toggleClass('show');

	});

	$(".show-ans").each(function(){
		
		//console.log(role);

		$(this).click(function(e){
			e.preventDefault();
			var role = $(this).attr('role');

			console.log(role);

			if($('#AnsBox'+role).css('display') == 'none')
			{
				$('#AnsBox'+role).show('blind');
				$(this).removeClass('fa-chevron-down');
				$(this).addClass('fa-chevron-up')
			}
			else
			{
				$('#AnsBox'+role).hide('blind');
				$(this).removeClass('fa-chevron-up');
				$(this).addClass('fa-chevron-down')

			}

		});

	});


	$('.toggleShowAns').each(function(){
		$(this).click(function(e){
			e.preventDefault();
			var role = $(this).attr('role');
			if($('#AnsBox'+role).css('display') == 'none')
			{
				$('#AnsBox'+role).show('blind');
				$('#show-ans'+role).removeClass('fa-chevron-down');
				$('#show-ans'+role).addClass('fa-chevron-up')
			}
			else
			{
				$('#AnsBox'+role).hide('blind');
				$('#show-ans'+role).removeClass('fa-chevron-up');
				$('#show-ans'+role).addClass('fa-chevron-down')

			}
		});
	});	
});