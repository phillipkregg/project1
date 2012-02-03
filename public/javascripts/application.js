// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


 $(document).ready(function(){
   
   
// Top Navigation - finds which tab you are on   
    $(function(){
	   var path = location.pathname.substring(1);
	   if ( path )
	     $('#nav_list li a[href$="' + path + '"]').attr('class', 'nav_select');
 	});
   
 

// TAB JAVASCRIPT

  $(function(){ 	
	$('#tab-container').easytabs(); 
  });

 
 
 //  Modal Window 
	$(function(){
	  var $modal = $('#modal'),
	      $modal_close = $modal.find('.close'),
	      $modal_container = $('#modal-container');


	  // This bit can be confusing. Since Rails.js sends an accept header asking for
	  // javascript, but we want it to return HTML, we need to override this instead.
	  $('a[data-remote]').bind('ajax:beforeSend', function(e, xhr, settings){
	    xhr.setRequestHeader('accept', '*/*;q=0.5, text/html, ' + settings.accepts.html);
	  });

	  // Handle modal links with the data-remote attribute
	  $('a[data-remote]').bind('ajax:success', function(xhr, data, status){
	    $modal
	      .html(data)
	      .prepend($modal_close)
	      .css('top', $(window).scrollTop() + 40)
	      .show();
	    $modal.fadeIn("fast");	    
	    $modal_container.fadeIn("fast");

	  });

	  // Hide close button click
	  $('.close', '#modal').live('click', function(){
	    $modal_container.hide();
	    $modal.hide();
	    
	  });	 


	});
 
 
 
 	
	$('#zones_div').hide();
	
	$('#show_sketch_div').hide();
	
	
// 	Clicking Zones button hides FNOL
	$('#zone_button a').click(function() {
		$('#zones_div').show('fast');
		$('#fnol_div').hide('fast');
	})
 

// 	Clicking Zones button hides FNOL
	$('#fnol_button a').click(function() {
		$('#zones_div').hide('fast');
		$('#fnol_div').show('fast');
	})
 
 // 	Clicking Drawing button hides ALL except Drawing
	$('#drawing_button a').click(function() {
		$('#zones_div').hide('fast');
		$('#fnol_div').hide('fast');
		$('#sketches_div').show('fast');
	})
 
 
 // 	Show individual sketch	
	$(function(){
	  var $sketch_div = $('#show_sketch_div');  
	  
	  // This bit can be confusing. Since Rails.js sends an accept header asking for
	  // javascript, but we want it to return HTML, we need to override this instead.
	  $('a[data-remote]').bind('ajax:beforeSend', function(e, xhr, settings){
	    xhr.setRequestHeader('accept', '*/*;q=0.5, text/html, ' + settings.accepts.html);
	  });

	  // Handle modal links with the data-remote attribute
	  $('a[data-remote]').bind('ajax:success', function(xhr, data, status){
	    $sketch_div
	      .html(data)	      
	      .show();
	      
	      // This draws 2 rectangles onto the Canvas that is returned via AJAX
	      $(function() {		
		      var canvas = document.getElementById("canvas");		      	
		      
		      if (canvas.getContext) {		
		        var ctx = canvas.getContext("2d");		
		
		        ctx.fillStyle = "rgb(200,0,0)";		
		        ctx.fillRect (10, 10, 55, 50);		
		        ctx.fillStyle = "rgba(0, 0, 200, 0.5)";		
		        ctx.fillRect (30, 30, 55, 50);		
		      }
		 });
	      
	      
	  });	 
	});
 
 
 // Create Drawing Canvas
 
 	$(function(){  		
 		//var id = $(this.getAttribute("data-sketch-id=1"));		
		$('a.show_sketch_button').click(function() {			
			//var my_class = $(this).attr(".data-sketch-id");
			//alert(this.getAttribute('data-sketch-id'));
			
			
		
			
			
			
		}); 
 	});
 	
 
 	
 	
 	
 	
 	
 
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 
 
 
 });



