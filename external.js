/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function check_date()   {
    var select_date = document.getElementById("date").value;
    select_date = select_date.toString();
    var Dt = new Date;
    var day = Dt.getDate();
    var month = Dt.getMonth();
    var year = Dt.getFullYear();
    var current_date = year+"-"+month+"-"+day;
    alert("Current Date : "+current_date);
    alert("Selected Date : "+select_date);
    for(var i = 0; i < select_date.Length(); i++)
        alert(select_date[i]);
}

function moveover() {
    document.getElementById("dabbawala").style.marginLeft = "-100%";
    document.getElementById("dabbawala").style.transitionDuration = "2s";
    document.getElementById("dabbawala").style.opacity = "0";
    document.getElementById("iner").style.marginTop = "-100%";
    document.getElementById("iner").style.opacity = "0";
    document.getElementById("iner").style.transitionDuration = "2.5s";
    setInterval(show, 2000);
}

function show() {
    document.getElementById("feedmain").style.display = "inline-block";
    document.getElementById("feedmain").style.marginTop = "3%";
    document.getElementById("feedmain").style.opacity = "1";
    document.getElementById("feedmain").style.transitionDuration = "2s";
    document.getElementById("burger").style.marginTop = "13%";
    document.getElementById("burger").style.opacity = "1";
    document.getElementById("burger").style.transitionDuration = "3s";
}

function updown()   {
        document.getElementById("bag").style.marginTop = "2.5%";
    }
    
var i = 0;

function change()   {
    var Img = ["slider2.png", "slider3.png", "slider4.png", "slider5.png", "slider1.png"];
    if(i > 4)
        i = 0;
    document.getElementById("pic").src = "Images/"+Img[i];
//    alert("Images/"+Img[i]);
    i++;
    }
    
function test() {
    //alert();
    var a = document.getElementById('log-id');
    var b = document.getElementById('log-pas');
    if (a.value === '' || b.value === '')
    {
        alert("Please fill form carefully.!");
        return false;
    }
    else
        return true;
}

function test1()    {
    var a = document.getElementById("log-mail");
    var b = document.getElementById("log-name");
    if(a.value === '' || b.value === '')
        alert("Please fill form carefully.!");
    else
        document.getElementById("repass").style.display = "inline";
}

function test2()    {
    var a = document.getElementById("log-Umail");
    var b = document.getElementById("log-Uname");
    var c = document.getElementById("mesg");
    if(a.value === '' || b.value === '' || c.value === '')
    {
        alert("Alert.! Please fill feedback form carefully.!");
        return false;
    }
    else
        return true;
}

function hide1() {
    if(document.getElementById("eye1").className === "fa fa-eye")
    {
        document.getElementById("eye1").className = "fa fa-eye-slash";
        document.getElementById("log-pas1").type = "password";
    }
    else
    {
        document.getElementById("eye1").className = "fa fa-eye";
        document.getElementById("log-pas1").type = "text";
    }
}

function hide2() {
    if(document.getElementById("eye2").className === "fa fa-eye")
    {
        document.getElementById("eye2").className = "fa fa-eye-slash";
        document.getElementById("log-pas2").type = "password";
    }
    else
    {
        document.getElementById("eye2").className = "fa fa-eye";
        document.getElementById("log-pas2").type = "text";
    }
}

function hide3()    {
    if(document.getElementById("eye").className === "fa fa-eye")
    {
        document.getElementById("pass1").type = "password";
        document.getElementById("eye").className = "fa fa-eye-slash";
    }
    else
    {
        document.getElementById("pass1").type = "text";
        document.getElementById("eye").className = "fa fa-eye";
    }
}

function hide4()    {
    if(document.getElementById("eye3").className === "fa fa-eye")
    {
        document.getElementById("log-pas").type = "password";
        document.getElementById("eye3").className = "fa fa-eye-slash";
    }
    else
    {
        document.getElementById("log-pas").type = "text";
        document.getElementById("eye3").className = "fa fa-eye";
    }
}

function validate() {
    var a = document.getElementById("user1");
    var b = document.getElementById("pass1");
    var c = document.getElementById("mail1");
    var d = document.getElementById("city1");
    var e = document.getElementById("lunch");
    var f = document.getElementById("l1");
    var g = document.getElementById("dinner");
    var h = document.getElementById("l2");
    if (a.value === '' || b.value === '' || c.value === '')
    {
        alert("Please fill mandatory fields.!");
        return false;
    }
    else if(d.value === 'PLEASE SELECT YOUR CITY')
    {
        alert("Please select your city.!");
        return false;
    }
    else if(document.getElementById("tik").className === "fa fa-check-square-o")
    {
        if(e.value === 'SELECT YOUR LUNCH LOCATION' || f.value === '')
        {
            alert("Please fill Lunch Location area carefully.!");
            return false;
        }
    }
    else if(document.getElementById("tik1").className === "fa fa-check-square-o")
    {
        if(g.value === 'SELECT YOUR DINNER LOCATION' || h.value === '')
        {
            alert("Please fill Dinner Location area carefully.!");
            return false;
        }
    }
    else if(document.getElementById("tik").className === "glyphicon glyphicon-unchecked" && document.getElementById("tik").className === "glyphicon glyphicon-unchecked")
    {
        alert("You are not Selecting any option for service.! We will not proceed your form until you choose atleast one option.");
        document.getElementById("tik").style.Color = "red";
        return false;
    }
    else
        return true;
}

/*var flag = 0;

function check()    {
    if(document.getElementById("tik").className === "glyphicon glyphicon-unchecked")
    {
        flag++;
        document.getElementById("tik").className = "fa fa-check-square-o";
        document.getElementById("tik").style.fontWeight = "bold";
        document.getElementById("tik").style.fontSize = "1.1em";
        document.getElementById("lunch").style.visibility = "visible";
        document.getElementById("l1").style.visibility = "visible";
        if(flag === 1)
        {
            document.getElementById("terms").style.marginTop = "-20%";
            document.getElementById("terms1").style.marginTop = "-20%";
        }
    }
    else
    {
        flag--;
        document.getElementById("tik").className = "glyphicon glyphicon-unchecked";
        document.getElementById("tik").style.fontWeight = "normal";
        document.getElementById("tik").style.fontSize = "1em";
        document.getElementById("lunch").style.visibility = "hidden";
        document.getElementById("l1").style.visibility = "hidden";
        if(flag === 0)
        {
            document.getElementById("terms").style.marginTop = "-40%";
            document.getElementById("terms1").style.marginTop = "-40%";
        }
    }
}

function check1()   {
    if(document.getElementById("tik1").className === "glyphicon glyphicon-unchecked")
    {
        document.getElementById("tik1").className = "fa fa-check-square-o";
        document.getElementById("tik1").style.fontWeight = "bold";
        document.getElementById("tik1").style.fontSize = "1.1em";
        document.getElementById("dinner").style.visibility = "visible";
        document.getElementById("l2").style.visibility = "visible";
        if(flag === 0)
        {
            document.getElementById("lunch").style.display = "none";
            document.getElementById("l1").style.display = "none";
            document.getElementById("dinner").style.marginTop = "-10%";
            document.getElementById("l2").style.marginTop = "-10%";
            document.getElementById("terms").style.marginTop = "0%";
            document.getElementById("terms1").style.marginTop = "0%";
        }
    }
    else
    {
        document.getElementById("tik1").className = "glyphicon glyphicon-unchecked";
        document.getElementById("tik1").style.fontWeight = "normal";
        document.getElementById("tik1").style.fontSize = "1em";
        document.getElementById("dinner").style.visibility = "hidden";
        document.getElementById("l2").style.visibility = "hidden";
        if(flag === 1)
        {
            document.getElementById("terms").style.marginTop = "-40%";
            document.getElementById("terms1").style.marginTop = "-40%";
        }
    }
}   */

function check_blank()  {
    var a = document.getElementById("log-pas1");
    var b = document.getElementById("log-pas2");
    if(a.value === '' || b.value === '')
    {
        alert("Please Enter Your New Password.!");
        return false;
    }
    else if(a.value !== b.value)
    {
        alert("You entered different passwor.! Please input same password in both field.");
        return false;
    }
    else
        return true;
}

function check()    {
    if(document.getElementById("tik").className === "glyphicon glyphicon-unchecked")
    {
        document.getElementById("tik").className = "fa fa-check-square-o";
        document.getElementById("tik").style.fontWeight = "bold";
        document.getElementById("tik").style.fontSize = "1.1em";
        document.getElementById("lunch").style.display = "inline";
        document.getElementById("l1").style.display = "inline";
    }
    else
    {
        document.getElementById("tik").className = "glyphicon glyphicon-unchecked";
        document.getElementById("tik").style.fontWeight = "normal";
        document.getElementById("tik").style.fontSize = "1em";
        document.getElementById("lunch").style.display = "none";
        document.getElementById("l1").style.display = "none";
    }
}

function check1()   {
    if(document.getElementById("tik1").className === "glyphicon glyphicon-unchecked")
    {
        document.getElementById("tik1").className = "fa fa-check-square-o";
        document.getElementById("tik1").style.fontWeight = "bold";
        document.getElementById("tik1").style.fontSize = "1.1em";
        document.getElementById("dinner").style.display = "inline";
        document.getElementById("l2").style.display = "inline";
    }
    else
    {
        document.getElementById("tik1").className = "glyphicon glyphicon-unchecked";
        document.getElementById("tik1").style.fontWeight = "normal";
        document.getElementById("tik1").style.fontSize = "1em";
        document.getElementById("dinner").style.display = "none";
        document.getElementById("l2").style.display = "none";
    }
}

function agree()    {
    if(document.getElementById("terms").className === "glyphicon glyphicon-unchecked")
    {
        document.getElementById("terms").className = "fa fa-check-square-o";
        document.getElementById("terms").style.marginTop = "0.5%";
    }
    else
    {
        document.getElementById("terms").className = "glyphicon glyphicon-unchecked";
        document.getElementById("terms").style.marginTop = "0%";
    }
}

/* function U_alert()  {
    if(document.getElementById('btn_proced').disabled === true)
        alert("Please agree terms and conditions to proceed.!");
} */

function proceed()
{
    if(document.getElementById("terms").className === "fa fa-check-square-o")
    {
        document.getElementById("btn_proced").disabled = false;
        document.getElementById("btn_proced").style.backgroundColor = "#5b9c00";
    }
    else
    {
        document.getElementById("btn_proced").disabled = true;
        document.getElementById("btn_proced").style.backgroundColor = "#666";
    }
}

var flag = 0;
function bill(x) {
    //flag++;
    document.getElementById('final').style.borderColor = "black";
    document.getElementById('final').style.color = "#333";
    document.getElementById('final').title = "";
    document.getElementById('temp_bill').value += "+"+x;
    var total = eval(document.getElementById('temp_bill').value);
    document.getElementById('total_bill').value = total+".00";
}

function final_proceed()    {
    var a = document.getElementById('total_bill').value;
    if(a === "0.00")
    {
        document.getElementById('final').style.transition = "2s";
        document.getElementById('final').style.borderColor = "red";
        document.getElementById('final').style.color = "red";
        document.getElementById('final').title = "Please select atlease one item.!";
    }
    else
    {
        /*location.href="selected-item.jsp";
        document.getElementById('pr').disabled = "true";*/
        document.getElementById("List0").style.transition = "0.8s";
        document.getElementById("List0").style.opacity = "0";
        document.getElementById("List0").style.height = "0%";
        document.getElementById("List1").style.transition = "0.8s";
        document.getElementById("List1").style.opacity = "0";
        document.getElementById("List1").style.height = "0%";
        document.getElementById("List2").style.transition = "0.8s";
        document.getElementById("List2").style.opacity = "0";
        document.getElementById("List2").style.height = "0%";
        document.getElementById("List2").style.marginTop = "18%";
        document.getElementById("List3").style.transition = "0.8s";
        document.getElementById("List3").style.opacity = "0";
        document.getElementById("List3").style.height = "0%";
        document.getElementById("List3").style.marginTop = "18%";
        document.getElementById("List4").style.transition = "0.8s";
        document.getElementById("List4").style.opacity = "0";
        document.getElementById("List4").style.height = "0%";
        document.getElementById("List4").style.marginTop = "18%";
        document.getElementById("HL1").style.transition= "1.2s";
        document.getElementById("HL1").style.opacity = "0";
        document.getElementById("HL1").style.height = "0%";
        document.getElementById("HL1").style.width = "0%";
        document.getElementById("HL2").style.transition= "1.2s";
        document.getElementById("HL2").style.opacity = "0";
        document.getElementById("HL2").style.height = "0%";
        document.getElementById("HL2").style.width = "0%";
        document.getElementById("footer").style.transition= "2s";
        document.getElementById("footer").style.marginTop = "39%";
        document.getElementById("footer").style.marginBottom = "1%";
        document.getElementById("log-out").style.transition = "2s";
        document.getElementById("log-out").style.marginTop = "42.6%";
        document.getElementById("date").style.transition = "2s";
        document.getElementById("date").style.opacity = "0";
        document.getElementById("go").style.transition = "2s";
        document.getElementById("go").style.opacity = "0";
        document.getElementById("menu").style.transition = "2s";
        document.getElementById("menu").style.opacity = "0";
        document.getElementById("thanks").style.transition = "2s";
        document.getElementById("thanks").style.opacity = "1";
    }
    //document.getElementById('pr').disabled = "true";
}
var temp = 0;
function freeze()   {
    
}