<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ include file="Header.jsp" %>

<title>HOME</title>
<style>
		* {
			margin: 0;
			padding: 0;
			font-family: Verdana, Geneva, Tahoma, sans-serif;
		}

		.container {
			width: 100%;
			height: 100vh;
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
		}

		.container h1 {
			font-size: 25px;
		}

		.container h3 {
			font-size: 20px;
		}

		.heading {
			border: 2px solid green;
			padding: 5px;
			font-weight: 700;
			text-align: center;
			width: 400px;
		}

		#area {
			height: 200px;
			width: 400px;
			resize: none;
			font-size: 15px;
			font-weight: 700;
			padding: 5px;
			margin-top: 15px;
			color: green;
			outline: none;
			border: 2px solid green;
		}

		#area:focus {
			border: 2px solid green;
			outline: none;

		}

		.result {
			color: orange;
			font-size: 20px;
			width: 401px;
			text-align: center;
			font-weight: 700;
			padding: 5px;
			border: 2px solid green;
			margin-top: 10px;
		}

		#word,
		#char {
			font-size: 25px;
			font-weight: bold;
			text-decoration: underline;
		}
	</style>
</head>
<body>
<div class="container">
		<div class="heading">
			<h1 style="color:orange">Edit@rl Hub..</h1>
			<h3><b>Word and Character count<b></h3>
		</div>
		<textarea id="area"
				placeholder="Enter your Text Here">
		</textarea>
		<p class="result">
		<span id="word">0</span> Words and
			<span id="char">0</span> Characters
		</p>
	</div>
	<script>
		let area = document.getElementById('area');
		let char = document.getElementById('char');
		let word = document.getElementById('word');

		area.addEventListener('input', function () {
			// count characters
			let content = this.value;
			char.textContent = content.length;

			// remove empty spaces from start and end
			content.trim();
			console.log(content);

			let wordList = content.split(/\s/);

			// Remove spaces from between words
			let words = wordList.filter(function (element) {
				return element != "";
			});

			// count words
			word.textContent = words.length;
		});
	</script>
</body>
</html>