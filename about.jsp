<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:set var="pageDescription" value="Learn about the mission, vision, and values of Curtis Software Studio. We are a dedicated team specializing in Java, JSP, and custom web solutions." scope="request" />
    <jsp:include page="WEB-INF/jspf/_header.jspf" />
    <title>About Us - Curtis Software Studio</title>
</head>
<body>
    <jsp:include page="WEB-INF/jspf/_navbar.jspf" />

    <main class="container my-5">
        <h1 class="mb-4">About Curtis Software Studio</h1>
        <p class="lead">We are a dedicated team of software engineers and designers committed to delivering high-quality, custom web solutions.</p>

        <div class="row my-5">
            <div class="col-md-4">
                <div class="card text-center h-100">
                    <div class="card-body">
                        <h5 class="card-title">Our Mission</h5>
                        <p class="card-text">To empower businesses with technology that is both powerful and easy to use, driving growth and efficiency.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center h-100">
                    <div class="card-body">
                        <h5 class="card-title">Our Vision</h5>
                        <p class="card-text">To be the leading software studio known for technical excellence, integrity, and innovative solutions.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center h-100">
                    <div class="card-body">
                        <h5 class="card-title">Our Values</h5>
                        <p class="card-text">Integrity, Quality, Collaboration, and Continuous Improvement are the pillars of our work.</p>
                    </div>
                </div>
            </div>
        </div>

        <h2>Our Expertise</h2>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">Java/JSP and Spring Framework Development</li>
            <li class="list-group-item">Responsive Frontend Design with Bootstrap</li>
            <li class="list-group-item">Database Design and Optimization (SQL/NoSQL)</li>
            <li class="list-group-item">Cloud Deployment and DevOps Practices</li>
        </ul>
    </main>

    <jsp:include page="WEB-INF/jspf/_footer.jspf" />
</body>
</html>
