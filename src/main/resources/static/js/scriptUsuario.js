$(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $(this).toggleClass('active');
            });
            
            $("#success-alert").fadeTo(1000, 500).slideUp(500, function(){
                $("#success-alert").slideUp(500);
            });

           

        
        
        $(function () {
           $("#btn-Registrar").on("click", function (e) {
               e.preventDefault();
               var url = $(this).attr("href");
               $.get(url).done(function (result) {
                   $("body").html(result);
                   $('#sidebar').addClass('active');
                 
               });
             
       history.pushState(null, "",url);
               
           });
       });
        
        $(function () {
            $("#btn-login").on("click", function (e) {
                e.preventDefault();
                var url = $(this).attr("href");
                $.get(url).done(function (result) {
                    $("body").html(result);
                    $('#sidebar').addClass('active');
                  
                });
              
        history.pushState(null, "",url);
                
            });
        });

        $(function () {
            $("#btn-Home").on("click", function (e) {
                e.preventDefault();
                var url = $(this).attr("href");
                $.get(url).done(function (result) {
                    $("body").html(result);
                    $('#sidebar').addClass('active');
                  
                });
              
        history.pushState(null, "",url);
                
            });
        });
        
        
        $(function () {
            $("#btnTriaje").on("click", function (e) {
                e.preventDefault();
                var url = $(this).attr("href");
                $.get(url).done(function (result) {
                    $("body").html(result);
                    $('#sidebar').addClass('active');
                  
                });
              
        history.pushState(null, "",url);
                
            });
        });

        $(function () {
            $("#btnUsuario").on("click", function (e) {
                e.preventDefault();
                var url = $(this).attr("href");
                $.get(url).done(function (result) {
                    $("body").html(result);
                    $('#sidebar').addClass('active');
                  
                });
              
        history.pushState(null, "",url);
                
            });
        });
       
       
        ////////////////////////////////////////////////////Triaje//////////////////////////////

        ///////////////////////////////////////////////////fin Triaje/////////////////////////
     
        });
