// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


 $(document).ready(function(){
   
   
// Top Navigation - finds which tab you are on   
    $(function(){
	   var path = location.pathname.substring(1);
	   if ( path )
	     $('#nav_list li a[href$="' + path + '"]').attr('class', 'nav_select');
 	});
   
 
//  Modal Window 
	$(function(){
	  var $modal = $('#modal'),
	      $modal_close = $modal.find('.close'),
	      $modal_container = $('#modal-container');
	      
	
	  // This bit can be confusing. Since Rails.js sends an accept header asking for
	  // javascript, but we want it to return HTML, we need to override this instead.
	  $('a[data-remote]').live('ajax:beforeSend', function(e, xhr, settings){
	    xhr.setRequestHeader('accept', '*/*;q=0.5, text/html, ' + settings.accepts.html);
	  });
	
	  // Handle modal links with the data-remote attribute
	  $('a[data-remote]').live('ajax:success', function(xhr, data, status){
	    $modal
	      .html(data)
	      .prepend($modal_close)
	      .css('top', $(window).scrollTop() + 40)
	      .show();
	    $modal.fadeIn("fast");	    
	    $modal_container.show();
	   
	  });
	
	  // Hide close button click
	  $('.close', '#modal').live('click', function(){
	    $modal_container.hide();
	    $modal.hide();
	    return false;
	  });	 
	  
	  	  
	});
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 });



