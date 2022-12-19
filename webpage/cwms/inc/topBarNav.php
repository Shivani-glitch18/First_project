<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-gradient-primary">
            <div class="container px-4 px-lg-5 ">
                <button class="navbar-toggler btn btn-sm" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

                <div>
                  <a href="./admin" class="text-decoration-none text-reset"><b>Admin Panel</b></a>
                </div>
            </div>
        </nav> -->



<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css/homecss.css">
</head>
<body>
<div class="top">
<p id="one" style="margin-bottom: 5px; margin: top 5px;" ><a href="./login/mylogin" class="text-decoration-none text-reset" id="ao" title="Login">Login</a></p>
</div>
<div class="logo">
<img src="https://no1itanagar.kvs.ac.in/sites/all/themes/school/images/kvslogo.jpg" alt="kv" id="kv" width="8%">
<div>
<span class="k">Kendra Vidyalaya</span><br><br>
<span class="an">An Autonomous Body Under Ministry of Education,Govermnet of India</span><br><br>
<span class="cb">CBSE Affilation Number:2210253 CBSE School Number:32891</span>
</div>
<a href="chrome-extension://gphandlahdpffmccakmbngmbjnjiiahp/https://no1itanagar.kvs.ac.in/sites/default/files/hq/AKAM.pdf"><img src="https://no1itanagar.kvs.ac.in/sites/all/themes/school/images/azadi-logo.png" id="az" alt="azadi"></a>
<a href="https://www.digitalindia.gov.in/"><img src="https://no1itanagar.kvs.ac.in/sites/all/themes/school/images/digital-india.png" alt="digital-india" id="di"></a>
<a href="https://swachhbharat.mygov.in/"><img src="https://no1itanagar.kvs.ac.in/sites/all/themes/school/images/swach-bharat.jpg" alt="swatch-bharat" id="sb"></a>
</div>
<div class="navbar">
<a href="./" title="Home" a class="nav-link text-black" aria-current="page">Home</a>
<a href="./?p=about" title="News" a class="nav-link text-black">About Us</a>
<div class="dropdown">
<button class="dropbtn">Admission
<i class="fa fa-caret-down"></i>
</button>
<div class="dropdown-content">
<a class="nav-link text-black" href="./?p=newregistration"> New Registration</a>
<a class="nav-link text-black" href="./?p=feestructure">Fee Structure</a>
<a class="nav-link text-black" href="./?p=procedure">Procedure</a>
</div>
</div>
<div class="dropdown">
<button class="dropbtn">Academics
<i class="fa fa-caret-down"></i>
</button>
<div class="dropdown-content">
<a class="nav-link text-black" href="./?p=courses">Course and Curriculum</a>
<a class="nav-link text-black" href="./?p=timings">Timming</a>
<a class="nav-link text-black" href="./?p=notice">Notice</a>
<a class="nav-link text-black" href="./?p=transfer">Transfer Certificate</a>
<a class="nav-link text-black" href="./?p=ebook">E-books</a>
</div>
</div>
<div class="dropdown">
<button class="dropbtn" title="Students">Students
<i class="fa fa-caret-down"></i>
</button>
<div class="dropdown-content">
<a class="nav-link text-black" href="./?p=student">Students Enrolled</a>
<a href="./login/mylogin" class="text-decoration-none text-reset" id="ao" title="Login">Result</a>
<a class="nav-link text-black" href="./?p=society">Student Society</a>
</div>
</div>
<div class="dropdown">
<button class="dropbtn" title="Staff">Staff
<i class="fa fa-caret-down"></i>
</button>
<div class="dropdown-content">
<a class="nav-link text-black" href="./?p=teaching">Teaching Staff</a>
<a class="nav-link text-black" href="./?p=nonteaching">Non-Teaching Staff</a>
<a class="nav-link text-black" href="./?p=blogs">Teacher's Blog</a>
</div>
</div>
<div class="dropdown">
<button class="dropbtn" title="Activities">Activities
<i class="fa fa-caret-down"></i>
</button>
<div class="dropdown-content">
<a class="nav-link text-black" href="./?p=cocurricular">Cocurricular Activities</a>
<a class="nav-link text-black" href="./?p=sports">Sports</a>
<a class="nav-link text-black" href="./?p=innovation">Innovation</a>
</div>
</div>
<a class="nav-link text-black" href="./?p=gallery">Gallery</a>
<a class="nav-link text-black" href="./?p=contact_us" title="Contact Us">Contact Us</a>            
</div>
</body>
</html>


<script>
  $(function(){
    $('#login-btn').click(function(){
      uni_modal("","login.php")
    })
    $('#navbarResponsive').on('show.bs.collapse', function () {
        $('#mainNav').addClass('navbar-shrink')
    })
    $('#navbarResponsive').on('hidden.bs.collapse', function () {
        if($('body').offset.top == 0)
          $('#mainNav').removeClass('navbar-shrink')
    })
  })

  $('#search-form').submit(function(e){
    e.preventDefault()
     var sTxt = $('[name="search"]').val()
     if(sTxt != '')
      location.href = './?p=products&search='+sTxt;
  })
</script>