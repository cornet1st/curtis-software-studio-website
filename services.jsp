<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:set var="pageDescription" value="Explore the full range of services offered by Curtis Software Studio, including custom web application development, system modernization, and our portfolio of work." scope="request" />
    <jsp:include page="WEB-INF/jspf/_header.jspf" />
    <title>Services - Curtis Software Studio</title>
</head>
<body>
    <jsp:include page="WEB-INF/jspf/_navbar.jspf" />

    <main class="container my-5">
        <h1 class="mb-4">Our Services</h1>
        <p class="lead">We offer a full spectrum of software development services to help you achieve your business goals.</p>

        <div class="row row-cols-1 row-cols-md-3 g-4 my-5">
            <div class="col">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Custom Web Application Development</h5>
                        <p class="card-text">Building bespoke, scalable web applications from the ground up using Java, JSP, and modern frameworks.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Legacy System Modernization</h5>
                        <p class="card-text">Updating and migrating older applications to modern, cloud-ready architectures for improved performance and security.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Consulting and Architecture</h5>
                        <p class="card-text">Providing expert guidance on software architecture, technology stack selection, and development best practices.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="alert alert-info text-center" role="alert">
            Ready to discuss your project? <a href="contact.jsp" class="alert-link">Contact us today</a> for a free consultation.
        </div>

        <h2 class="mt-5 mb-4">Our Portfolio</h2>
        <p class="lead">A selection of our recent work showcasing our expertise in various domains.</p>

        <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
            <div class="col">
                <div class="card h-100 shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title text-primary">E-commerce Platform</h5>
                        <h6 class="card-subtitle mb-2 text-muted">Java, Spring Boot, PostgreSQL</h6>
                        <p class="card-text">Developed a high-performance, secure e-commerce platform with custom payment gateway integration and inventory management.</p>
                        <span class="badge bg-success">Completed</span>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100 shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title text-primary">Financial Data Dashboard</h5>
                        <h6 class="card-subtitle mb-2 text-muted">JSP, Servlets, Bootstrap, Chart.js</h6>
                        <p class="card-text">Created a real-time financial data visualization dashboard for internal analytics and reporting.</p>
                        <span class="badge bg-success">Completed</span>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100 shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title text-primary">Mobile API Backend</h5>
                        <h6 class="card-subtitle mb-2 text-muted">Java, RESTful API, AWS</h6>
                        <p class="card-text">Engineered a scalable and robust backend API to support a high-traffic mobile application.</p>
                        <span class="badge bg-success">Completed</span>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <jsp:include page="WEB-INF/jspf/_footer.jspf" />
</body>
</html>
