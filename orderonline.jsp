<%-- 
    Document   : orderonline
    Created on : 8 Jul, 2016, 1:02:02 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="Images/burger.png"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/combine.css"/>
        <link rel="stylesheet" href="css/external.css"/>
        <title>Online Meal Order</title>
        <script type="text/javascript" src="external.js"></script>
    </head>
    <body onload="updown(), freeze();">
        <%@include file="header.jsp"%>
        <ul class="nav-list" style="margin-top: 9.7%;">
            <li onclick="location.href = 'index.jsp';">Home
            <li onclick="location.href = 'aboutus.jsp#whyus';">Why YummyMeal?
            <li>Meal Plans
            <li onclick="location.href = 'orderonline.jsp';">Order Meal
            <li onclick="location.href = 'aboutus.jsp#about';">About Us
        </ul>
        <h4 class="Mhead" id="menu">Meal Menu</h4><div id="thanks" style="opacity: 0; margin-top: 13.6%; font-size: 1.2em;" class="mini-head">THANK YOU</div>
        <input type="date" style="position: absolute; margin-top: 12.9%; margin-left: 76%; float: left;" id="date">
        <div id="go" style="height: 6.1%; width: 3.5%; color: white; background-color: #777; position: absolute; margin-left: 88%; margin-top: 12.9%; font-size: 1.4em; padding: 7px 0px 0px 7px; cursor: Pointer;" onclick="check_date();">GO</div>
        <div class="h-line" style="margin-top: 16%;"></div>
        <%
            String p = (String)session.getAttribute("current_user");
            if(p!=null)   {   %>
        <div id="bill_final" class="balance">
            <p style="margin-left: 79%; position: absolute; margin-top: 0.7%; font-size: 1.5em;">TOTAL</p>
            <input type="number" class="cal" readonly="readonly" value="0.00" id="total_bill">
            <div id="final" class="cal" style="margin-left: 5%; background-color: #eee; color: #333; cursor: pointer;" onclick="final_proceed();">Proceed</div>
            <input type="hidden" id="temp_bill" value="0">
            <div style="position: absolute; margin-top: 0.3%; margin-left: 95.5%; font-size: 2em; color: #777; width: 2.7%; text-align: center;">
                <i class="fa fa-inr"></i>
            </div>
        </div>
        <!--div style="height: 30%; box-shadow: 0px 0px 10px red inset">
            Thanks for using our services. Your order will be delivered shortly
        </div-->
        <input type="button" id="log-out" class="logout" value="Log Out" onclick="location.href='logout.jsp';" style="margin-top: 119%; z-index: 2; height: 5%; position: absolute;">
        <div class="daal" id="List0">
            <h4>RICE / SANDWICH / SNACKS</h4>
            <div class="head-daal">
                <div class="inner-daal" style="width:50%; font-weight: bold; font-size: 1.2em;">ITEM</div>
                <div class="inner-daal" style="width:25%; font-weight: bold; margin-left: 50%;">PRICE</div>
                <div class="inner-daal" style="font-weight: bold; margin-left: 75%;">QUANTITY</div>
            </div>
            <div class="head-daal" style="margin-top: 7%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Plain Rice</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 18.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*18);" id="pr" value="Plain Rice"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 14%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Jeera Rice</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 22.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*22)"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 21%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Fried Rice</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 25.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*25);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 28%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Paneer Rice</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 35.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*35);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 35%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Cheese and Beans Sandwich</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 25.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*25);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 42%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Bread butter jam</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 30.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*30);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 49%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Spring roll</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 35.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*35);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 56%; background-color: transparent; border: 1px solid #ccc;">
                <div class="inner-daal" style="width: 50%; color: #888;">Bread Cheese</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 20.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*20);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
        </div>
        <div id="HL1" style="top: 38%; bottom: 4%; position: absolute; background-color: #ccc; width: 0.1%; margin-left: 50%;"></div>
        <div class="daal" id="List1" style="margin-left: 55%;">
            <h4>SABZI / DAAL</h4>
            <div class="head-daal">
                <div class="inner-daal" style="width:50%; font-weight: bold; font-size: 1.2em;">ITEM</div>
                <div class="inner-daal" style="width:25%; font-weight: bold; margin-left: 50%;">PRICE</div>
                <div class="inner-daal" style="font-weight: bold; margin-left: 75%;">QUANTITY</div>
            </div>
            <div class="head-daal" style="margin-top: 7%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Plain Daal</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 25.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*25);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 14%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Fried Daal</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 30.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*30);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 21%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Aloo Pyaaz</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 25.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*25);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 28%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Mixed Vegetables</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 30.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*30);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 35%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Paneer Makhana</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 40.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*40);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 42%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Shahi Aloo</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 40.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*40);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 49%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Paneer Kofta</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 45.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*45);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 56%; background-color: transparent; border: 1px solid #ccc;">
                <div class="inner-daal" style="width: 50%; color: #888;">Shahi Paneer</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 50.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*50);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
        </div>
        <div class="daal" id="List2" style="margin-top: 50%;">
            <h4>SWEETS / CURD / RAITAS</h4>
            <div class="head-daal">
                <div class="inner-daal" style="width:50%; font-weight: bold; font-size: 1.2em;">ITEM</div>
                <div class="inner-daal" style="width:25%; font-weight: bold; margin-left: 50%;">PRICE</div>
                <div class="inner-daal" style="font-weight: bold; margin-left: 75%;">QUANTITY</div>
            </div>
            <div class="head-daal" style="margin-top: 7%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Salty Curd</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 20.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*20);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 14%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Sweet Curd</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 22.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*22);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 21%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Simple Curd</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 18.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*18);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 28%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Paalak Raita</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 20.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*20);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 35%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;" title="Bathuwe ka raita">Chenopodium Raita</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 22.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*22);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 42%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Besan Bundi Raita</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 20.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*20);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 49%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Kala Jaam</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 15.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*15);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 56%; background-color: transparent; border: 1px solid #ccc;">
                <div class="inner-daal" style="width: 50%; color: #888;">Ras Malai</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 20.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*20);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
        </div>
        <div id="HL2" style="top: 104%; bottom: -62%; position: absolute; background-color: #ccc; width: 0.1%; margin-left: 50%;"></div>
        <div class="daal" id="List3" style="margin-left: 55%; margin-top: 50%;">
            <h4>ROTI / PARATHAS</h4>
            <div class="head-daal">
                <div class="inner-daal" style="width:50%; font-weight: bold; font-size: 1.2em;">ITEM</div>
                <div class="inner-daal" style="width:25%; font-weight: bold; margin-left: 50%;">PRICE</div>
                <div class="inner-daal" style="font-weight: bold; margin-left: 75%;">QUANTITY</div>
            </div>
            <div class="head-daal" style="margin-top: 7%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Simple Roti</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 3.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*3);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 14%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Rumali Roti</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 5.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*5);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 21%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Naan Roti</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 7.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*7);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 28%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Aloo Paratha</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 12.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*12);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 35%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Gobhi Paratha</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 12.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*12);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 42%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Paneer Paratha</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 20.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*20);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 49%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Simple Paratha</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 8.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*8);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 56%; background-color: transparent; border: 1px solid #ccc;">
                <div class="inner-daal" style="width: 50%; color: #888;">Besan Chila</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 15.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*15);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
        </div>
        <div class="daal" id="List4" style="margin-top: 82%; margin-left: 30%;">
            <h4>EXTRAS</h4>
            <div class="head-daal">
                <div class="inner-daal" style="width:50%; font-weight: bold; font-size: 1.2em;">ITEM</div>
                <div class="inner-daal" style="width:25%; font-weight: bold; margin-left: 50%;">PRICE</div>
                <div class="inner-daal" style="font-weight: bold; margin-left: 75%;">QUANTITY</div>
            </div>
            <div class="head-daal" style="margin-top: 7%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Salad</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 7.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*7);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 14%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Roasted Papad</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 3.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*3);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 21%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Tomato Ketchup</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 5.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*5);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 28%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;">Chilly Ketchup</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 5.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*5);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 35%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;" title="Bathuwe ka raita">Shizuwan Chatni</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 10.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*10);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 42%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;" title="Mixed achar">Mixed Pickle</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 10.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*10);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 49%; background-color: transparent; border: 1px solid #ccc; border-bottom: none;">
                <div class="inner-daal" style="width: 50%; color: #888;" title="Aam ka achar">Mango Pickle</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 12.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*12);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
            <div class="head-daal" style="margin-top: 56%; background-color: transparent; border: 1px solid #ccc;">
                <div class="inner-daal" style="width: 50%; color: #888;" title="Nimbu ka achar">Lemon Pickle</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 50%;"><i class="fa fa-inr"></i> 12.00</div>
                <div class="inner-daal" style="width: 25%; color: #888; margin-left: 75%;">
                    <select class="quant" oninput="bill(this.value*12);"><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
                </div>
            </div>
        </div>
        <div id="footer" class="foot" style="margin-top: 115%; margin-bottom: 3%;">
            <ul><li onclick="location.href='termscondition.jsp';">Terms &amp; Conditions.</li><li>Feedback</li><li>Site Map</li></ul>
            <p>&copy; 2016. All rights reserved.</p>
            <font>Follow us on : 
                <i class="fa fa-facebook-square" onmouseover="this.style.color = '#3b5998';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://www.facebook.com/Yummy-Tiffins-107605889277954/';"></i>
                <i class="fa fa-youtube-square" onmouseover="this.style.color = '#c4302b';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://www.youtube.com/channel/UCWSyDMKfxeoLwQJNxtny-4Q';"></i>
                <i class="fa fa-github-square" onmouseover="this.style.color = '#000'/* '#3cf' */;" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://github.com/shivambca';"></i>
                <i class="fa fa-google-plus-square" onmouseover="this.style.color = '#dd4b39';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://plus.google.com/u/0/+ShivamVerma1996/about';"></i>
            </font>
        </div>
        <%   }   else   {   %>
        <div class="alert">
            <h2 style="position: absolute; color: red; margin-top: 22%; margin-left: 38%;">You are not logged in.!</h2>
            <span onclick="location.href='log-in.jsp';" style="position: absolute; float: left; cursor: pointer; color:#519751; font-weight: bold; font-size: 1.4em; margin-left: 38%; margin-top: 25%;">LOG IN</span>
            <font style="position: absolute; margin-left: 44%; margin-top: 25%; font-size: 1.4em;">To Access Content Of This Page.</font>
        </div>
        <div id="bill_final" class="balance" style="margin-top: 41%;">
            <p style="margin-left: 79%; position: absolute; margin-top: 0.7%; font-size: 1.5em;">TOTAL</p>
            <input type="number" class="cal" readonly="readonly" value="0.00" id="total_bill">
            <div id="final" class="cal" style="margin-left: 5%; background-color: #eee; color: #333; cursor: pointer;" onclick="final_proceed();">Proceed</div>
            <input type="hidden" id="temp_bill" value="">
            <div style="position: absolute; margin-top: 0.3%; margin-left: 95.5%; font-size: 2em; color: #777; width: 2.7%; text-align: center;">
                <i class="fa fa-inr"></i>
            </div>
        </div>
        <div class="foot" style="margin-top: 35%; margin-bottom: 1.5%;">
            <ul><li onclick="location.href='termscondition.jsp';">Terms &amp; Conditions.</li><li>Feedback</li><li>Site Map</li></ul>
            <p>&copy; 2016. All rights reserved.</p>
            <font>Follow us on : 
                <i class="fa fa-facebook-square" onmouseover="this.style.color = '#3b5998';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://www.facebook.com/Yummy-Tiffins-107605889277954/';"></i>
                <i class="fa fa-youtube-square" onmouseover="this.style.color = '#c4302b';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://www.youtube.com/channel/UCWSyDMKfxeoLwQJNxtny-4Q';"></i>
                <i class="fa fa-github-square" onmouseover="this.style.color = '#000'/* '#3cf' */;" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://github.com/shivambca';"></i>
                <i class="fa fa-google-plus-square" onmouseover="this.style.color = '#dd4b39';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://plus.google.com/u/0/+ShivamVerma1996/about';"></i>
            </font>
        </div>
        <%   }   %>
    </body>
</html>