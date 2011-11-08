// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


 $(document).ready(function(){
   
    $(function(){
	   var path = location.pathname.substring(1);
	   if ( path )
	     $('#nav_list li a[href$="' + path + '"]').attr('class', 'nav_select');
 	});
   
 });



