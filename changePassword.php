<?php
	include('php/wbiims_database.php');
	include('php/head_part.php');
	include('php/hn.php');

	session_start();
	include('php/security_2.php');
	$r=$_SESSION['role'];
	if($r=='oo'){
		include('php/on.php');
	}elseif($r=='cashier'){
		include('php/cn.php');
	}elseif($r=='admin'){
		include('php/an.php');
	}elseif($r=='insured'){
		include('php/in.php');
	}
	include('php/changeP.php');
	include('php/closing_tags.html');
?>
<script type="text/javascript">


function checkStrength(){
  var strongRegex = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");
  var mediumRegex = new RegExp("^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})");
  var value=$('#np').val();
  var x=$('#passwordStrength');
  if(x.html()!='Password Strength'){
    var c='Password Strength'
  }else{
    var c=x.html()
  }
  if(strongRegex.test(value)) {
      pss(x,'green','<i class="fa fa-thumbs-o-up"></i> '+c);
      return true;
    }else if(mediumRegex.test(value)){
      pss(x,'yellow','<i class="fa fa-warning"></i> '+c);
      return false;
    }else{
      pss(x,'red','<i class="fa fa-warning"></i> '+c);
	  return false;
    } 
}

function checkMatching(){
  var value=$('#np').val();
  var value2=$('#rnp').val();
  var x=$('#passMatch');
  if(x.html()!='Password Matching'){
    var c='Password Matching'
  }else{
    var c=x.html()
  }
  if(checkStrength()){
  	document.getElementById('mb').disabled=null;
  }

  if(value!=value2){
  	c="Passwords dont Match!";
    pss(x,'red','<i class="fa fa-warning"></i> '+c);
  }else{
  	c="Passwords Match!";
  	pss(x,'green','<i class="fa fa-thumbs-o-up"></i> '+c);
  	$("#mb").disabled="false";
  }
}

function pss(element, backgroundColor,markText){
    $(element).html(markText);
    $(element).css("background-color",backgroundColor);
    $(element).css("color","white");	
}
</script>
