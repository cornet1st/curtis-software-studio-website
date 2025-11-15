<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:set var="pageDescription" value="Contact Curtis Software Studio for a free consultation. Get in touch with our team via our online form, email, or phone number." scope="request" />
    <jsp:include page="WEB-INF/jspf/_header.jspf" />
    <title>Contact Us - Curtis Software Studio</title>
</head>
<body>
    <jsp:include page="WEB-INF/jspf/_navbar.jspf" />

    <main class="container my-5">
        <h1 class="mb-4">Get in Touch</h1>
        <p class="lead">We'd love to hear about your project. Fill out the form below or use the contact information provided.</p>

        <div class="row">
            <div class="col-md-8">
                <form action="ContactServlet" method="POST">
                    <%-- Display success or error messages --%>
                    <c:if test="${not empty sessionScope.successMessage}">
                        <div class="alert alert-success" role="alert">
                            <c:out value="${sessionScope.successMessage}" />
                        </div>
                        <c:remove var="successMessage" scope="session" />
                    </c:if>
                    <c:if test="${not empty sessionScope.errorMessage}">
                        <div class="alert alert-danger" role="alert">
                            <c:out value="${sessionScope.errorMessage}" />
                        </div>
                        <c:remove var="errorMessage" scope="session" />
                    </c:if>
                    <div class="mb-3">
                        <label for="name" class="form-label">Full Name</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email Address</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="subject" class="form-label">Subject</label>
                        <input type="text" class="form-control" id="subject" name="subject" required>
                    </div>
                    <div class="mb-3">
                        <label for="message" class="form-label">Message</label>
                        <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Send Message</button>
                </form>
            </div>
            <div class="col-md-4">
                <div class="card p-3">
                    <h5>Contact Information</h5>
                    <p>
                        **Email:** info@curtissoftware.com<br>
                        **Phone:** (555) 123-4567<br>
                        **Address:** 123 Tech Lane, Suite 400, Innovation City, CA 90210
                    </p>
                    <h5>Business Hours</h5>
                    <p>
                        Monday - Friday: 9:00 AM - 5:00 PM (PST)<br>
                        Saturday - Sunday: Closed
                    </p>
                </div>
            </div>
        </div>
    </main>

    <jsp:include page="WEB-INF/jspf/_footer.jspf" />
</body>
</html>
