<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Test - Curtis Software Studio</title>
</head>
<body>
    <h1>Simple Index Test</h1>
    <p>If you see this, the basic page works!</p>
    
    <hr>
    <h2>Now testing includes:</h2>
    
    <!-- Test 1: Header -->
    <h3>1. Testing Header Include:</h3>
    <jsp:include page="WEB-INF/jspf/_header.jspf" />
    <p>✓ Header loaded</p>
    
    <!-- Test 2: Navbar -->
    <h3>2. Testing Navbar Include:</h3>
    <jsp:include page="WEB-INF/jspf/_navbar.jspf" />
    <p>✓ Navbar loaded</p>
    
    <!-- Test 3: Footer -->
    <h3>3. Testing Footer Include:</h3>
    <jsp:include page="WEB-INF/jspf/_footer.jspf" />
    <p>✓ Footer loaded</p>
</body>
</html>

