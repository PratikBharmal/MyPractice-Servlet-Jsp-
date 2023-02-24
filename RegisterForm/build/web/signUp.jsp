<%-- 
    Document   : signUp
    Created on : 15-Feb-2023, 8:36:08 pm
    Author     : Pr@tik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    </head>
    <body style="background: url(img/pic1.jpg); background-size: cover; background-attachment: fix;">
        <div class="container" style="margin-top: 100px">
            <div class="row">
                <div class="col m6 offset-m3">

                    <div class="card">
                        <div class="card-content" style="background-color: #eeeeee">
                            <h3 style="margin-top: 10px" class="center-align">Register Here!!</h3>

                            <h6 id="msg" class="center-align"></h6>

                            <div class="form center-align">
                                <!--creating form-->

                                <form action="Register" method="post" id="myform">

                                    <input type="text" name="user_name" placeholder="Enter name">
                                    <input type="password" name="user_pass" placeholder="Enter password">
                                    <input type="email" name="user_e-mail" placeholder="Enter e-mail">

                                        <div class="file-field input-field">
                                            <div class="btn">
                                                <span>File</span>
                                                <input type="file" name="image">
                                            </div>
                                            <div class="file-path-wrapper">
                                                <input class="file-path validate" type="text">
                                            </div>
                                        </div>
         
                                    <button type="submit" class="btn green">submit</button>

                                </form>

                            </div>

                            <div class="loader center-align" style="margin-top: 10px; display: none;">


                                <div class="preloader-wrapper big active">
                                    <div class="spinner-layer spinner-blue">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-red">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-yellow">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-green">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>
                                </div>

                                <h5>Please Wait...</h5>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <script
            src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
            crossorigin="anonymous">

        </script>

        <script>
            $(document).ready(function () {
                console.log("page is ready....");

                $("#myform").on('submit', function (event) {
                    event.preventDefault();

                    // var f = $(this).serialize();    <-- this is used for only text data but if you want to insert img then used formData()
                    
                    //it is used because we want to insert img 
                    
                    let f = new FormData(this);   
                    
                    console.log(f);

                    $(".loader").show();
                    $(".form").hide();
                    $.ajax({
                        url: "Register",
                        data: f,
                        type: 'POST',
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            console.log("Success..........")
                            $(".loader").hide();
                            $(".form").show();

                            if (data.trim() === 'Done')
                            {
                                $('#msg').html("Successfully Register..!!");
                                $('#msg').addClass('green-text')
                            } else
                            {
                                $('#msg').html("Something Went Wrong on Server..");
                                $('#msg').addClass('red-text')
                            }
                        },

                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(data);
                            console.log("Error..........")
                            $(".loader").hide();
                            $(".form").show();
                            $('#msg').html("Something Went Wrong on Server..");
                            $('#msg').addClass('red-text')
                        },
                        
                        processData: false,
                        contentType:false
                    })
                })
            })
        </script>

    </body>
</html>
