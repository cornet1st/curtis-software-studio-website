<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:set var="pageDescription" value="Curtis Software Studio is your partner for robust, scalable, and modern web applications. Specializing in Java, JSP, and full-stack development." scope="request" />
    <jsp:include page="WEB-INF/jspf/_header.jspf" />
    <title>Home - Curtis Software Studio</title>
</head>
<body>
    <jsp:include page="WEB-INF/jspf/_navbar.jspf" />

    <main class="container my-5">
        <div class="p-5 mb-4 bg-light rounded-3">
            <div class="container-fluid py-5">
                <h1 class="display-5 fw-bold">Welcome to Curtis Software Studio</h1>
                <p class="col-md-8 fs-4">Your partner in building robust, scalable, and modern web applications. We specialize in full-stack development with a focus on Java and cutting-edge front-end technologies.</p>
                <a href="services.jsp" class="btn btn-primary btn-lg" role="button" aria-label="Explore Our Services">Explore Our Services</a>
            </div>
        </div>

        <div class="row align-items-md-stretch">
            <div class="col-md-6">
                <div class="h-100 p-5 text-white bg-dark rounded-3">
                    <h2>Why Choose Us?</h2>
                    <p>We combine technical expertise with a passion for clean code and user-centric design. Our solutions are built to last and designed to grow with your business.</p>
                    <a href="about.jsp" class="btn btn-outline-light" role="button" aria-label="Learn More About Curtis Software Studio">Learn More About Us</a>
                </div>
            </div>
            <div class="col-md-6">
                <div class="h-100 p-5 bg-light border rounded-3">
                    <h2>Ready to Start?</h2>
                    <p>Have a project in mind? Contact us today for a free consultation and let's turn your vision into reality.</p>
                    <a href="contact.jsp" class="btn btn-outline-secondary" role="button" aria-label="Contact Curtis Software Studio for a project quote">Get in Touch</a>
                </div>
            </div>
        </div>
    </main>

    <jsp:include page="WEB-INF/jspf/_footer.jspf" />
</body>
</html>
