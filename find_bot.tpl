<html>
<head>
	<title>SearchBot</title>
	<style>
	input[type=text] {
   	 	background-color: white;
    	width:70%;
    	height:35px;
    	border: 2px solid #ccc;
    	border-radius: 4px;
   		font-size: 16px;
    	padding: 12px 20px 12px 12px;
    	margin-left:10%;
	}
	input[type=button], input[type=submit], input[type=reset] {
    	background-color:#EC7F1D;
    	border: none;
    	border-radius: 4px;
    	color: white;
    	text-decoration: none;
    	font-size:large;
    	text-align:center;
    	margin: 4px 2px;
    	cursor: pointer;
    	width:12%;
    	height:35px;
	}
	h1, h2 { 
		color: #EC7F1D; 
		font-family: Florence; 
		font-size:60px;
		font-style: italic;
		font-weight: normal;
		text-align: center; 
		margin-left:8%;
	}
	h2 {
		font-size:23px;
		margin-left:16%;
		padding-left:0;
		text-align:left;
	}

	h2[id=loggedIn] {
		margin-left: 10%;
	}

	h2.result_title{
		margin-left: 10%;
	}

	table {
    	border-collapse: collapse;
    	width: 62%;
    	margin-left:15%;
    	border-radius:4px;
	}

	th, td {
    	text-align: left;
    	padding: 8px;
    	font-family: Arial;
	}

	tr:nth-child(even){
		background-color: #f2f2f2;
	}

	th {
    	background-color: #FFB14F;
    	color: white;
	}
	/*The code used to flip the logo image is from https://css-tricks.com/snippets/css/flip-an-image/*/
	img {
		height: 12%;
        -moz-transform: scaleX(-1);
        -o-transform: scaleX(-1);
        -webkit-transform: scaleX(-1);
        transform: scaleX(-1);
        filter: FlipH;
        -ms-filter: "FlipH";
	}

	a[id="login"], a[id="logout"] {
		float:right;
		padding-right:8%;
		padding-top:15px;
		color: #EC7F1D; 
		font-size:20px;
		font-weight: normal;
	}

	a.link {
		color: #EC7F1D; 
		font-family: Florence;
		font-size:20px;
		margin-left:16%;
		padding-left:0;
		text-align:left;
	}

	p.link {
		margin-top:0;
		margin-left: 16%;
	}

	div.page {
		margin-left: 10%;
	}


	</style>
</head>
<body>
<div id="menuPanel">
	%if(loggedIn):
	  <h2 id="loggedIn">Welcome to SearchBot, {{email}}</h2>
	  <a href="/logout" id="logout">Logout</a>
	%else:
	<!-- for the scripted version we wont be doing authentication so just comment this out -->
	  <a href="/login" id="login">Login</a>
	%end
</div>
<br>
<div id="header" style="float:top;">
<h1 id="myH1" style="display: inline; top:10;"><img src="images/colorbird.svg" alt="logo" style="display: inline;"/>SearchBot</h1>
</div>
<form action="/search", method="GET">
  <div id="searchbar">
  <input type="text" name="keywords" id="user_input" placeholder="Please Enter Your Search Phrase..">
  <input type="submit" name="search" value="search">
  </div>
</form>
{{!base}}
</table>
</body>
</html>
