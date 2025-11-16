<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setAttribute(
        "pageDescription",
        "Arrange a discovery call with Curtis Software Studio. Based in Vancouver, serving BC and remote teams."
    );
%>
<%!
    private String escapeHtml(String input) {
        if (input == null) {
            return "";
        }
        return input
                .replace("&", "&amp;")
                .replace("<", "&lt;")
                .replace(">", "&gt;")
                .replace("\"", "&quot;")
                .replace("'", "&#39;");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/jspf/_header.jspf" %>
    <title>Contact Us - Curtis Software Studio</title>
</head>
<body>
    <%@ include file="/WEB-INF/jspf/_navbar.jspf" %>

    <div class="page-shell">
        <section class="glass-panel p-4 p-md-5 mb-5">
            <div class="section-label mb-3">Contact</div>
            <div class="row g-4 align-items-center">
                <div class="col-lg-7">
                    <h1 class="hero-title mb-3">Let's architect your next chapter.</h1>
                    <p class="hero-subtitle">Tell us about your goals, timelines, and stakeholders. We respond within one business day with next steps.</p>
                    <p class="zh-note">留下您的需求與時程，我們會在一個工作天內回覆，安排下一步諮詢或提供建議方案。</p>
                </div>
                <div class="col-lg-5">
                    <div class="info-panel h-100">
                        <h5>What to expect</h5>
                        <ul class="text-muted mb-0">
                            <li>15-minute chemistry call or detailed reply</li>
                            <li>NDA ready upon request</li>
                            <li>Project summary + success metrics discussion</li>
                            <li>Clear roadmap for discovery or onboarding</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section id="contact" class="contact-surface mb-5">
            <div>
                <form action="ContactServlet" method="POST" novalidate>
                    <%
                        String successMessage = (String) session.getAttribute("successMessage");
                        if (successMessage != null && !successMessage.isEmpty()) {
                    %>
                    <div class="alert alert-success" role="alert">
                        <%= escapeHtml(successMessage) %>
                    </div>
                    <%
                            session.removeAttribute("successMessage");
                        }
                        String errorMessage = (String) session.getAttribute("errorMessage");
                        if (errorMessage != null && !errorMessage.isEmpty()) {
                    %>
                    <div class="alert alert-danger" role="alert">
                        <%= escapeHtml(errorMessage) %>
                    </div>
                    <%
                            session.removeAttribute("errorMessage");
                        }
                    %>
                    <div class="mb-3">
                        <label for="name" class="form-label">Full Name</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Jordan Li" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email Address</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="you@company.com" required>
                    </div>
                    <div class="mb-3">
                        <label for="subject" class="form-label">Subject</label>
                        <input type="text" class="form-control" id="subject" name="subject" placeholder="Modernizing onboarding portal" required>
                    </div>
                    <div class="mb-3">
                        <label for="message" class="form-label d-flex justify-content-between">
                            <span>Project Overview</span>
                            <small id="messageCounter" class="text-muted">0 / 2000</small>
                        </label>
                        <textarea class="form-control" id="message" name="message" rows="5" maxlength="2000" placeholder="Share goals, deadlines, current stack, or constraints." required></textarea>
                        <p class="zh-note">可描述專案背景、產業、目前使用的系統或預算範圍，越完整越好。</p>
                    </div>
                    <button type="submit" class="btn btn-gradient w-100">Send Message</button>
                </form>
            </div>
            <div>
                <div class="info-panel mb-4">
                    <h5>Direct Lines</h5>
                    <div class="info-item">
                        <small class="text-muted d-block">Studio Email</small>
                        <span>info@curtissoftware.com</span>
                    </div>
                    <div class="info-item">
                        <small class="text-muted d-block">Direct Email</small>
                        <span>curtis.chen@gmail.com</span>
                    </div>
                    <div class="info-item">
                        <small class="text-muted d-block">Phone</small>
                        <span>(604) 555-1234</span>
                    </div>
                    <div class="info-item">
                        <small class="text-muted d-block">Studio</small>
                        <span>757 Hastings St, Vancouver BC (by appointment)</span>
                    </div>
                </div>
                <div class="info-panel">
                    <h5>Office Hours</h5>
                    <p class="mb-1 text-muted">Monday - Friday: 9:00 AM to 6:00 PM PST</p>
                    <p class="mb-1 text-muted">After-hours support for managed clients.</p>
                    <p class="mb-0 text-muted">We operate bilingually (English/Traditional Chinese).</p>
                </div>
            </div>
        </section>

        <section class="glass-panel p-4 p-md-5">
            <div class="section-header">
                <div class="section-label">Connect</div>
                <h2 class="section-heading mt-3">Prefer a live call?</h2>
                <p class="section-lead">Skip the form and book a 20-minute fit session.</p>
            </div>
            <div class="text-center">
                <a href="mailto:info@curtissoftware.com" class="btn btn-gradient me-2">Email the Studio</a>
                <a href="contact.jsp#contact" class="btn btn-ghost">Schedule a call</a>
                <p class="zh-note mt-3">也可直接寫信至 <a href="mailto:curtis.chen@gmail.com" class="text-decoration-none text-muted">curtis.chen@gmail.com</a> 取得中文服務。</p>
            </div>
        </section>
    </div>

    <%@ include file="/WEB-INF/jspf/_footer.jspf" %>

    <script>
        (function () {
            const messageField = document.getElementById('message');
            const counter = document.getElementById('messageCounter');
            if (!messageField || !counter) {
                return;
            }
            messageField.addEventListener('input', function () {
                const length = messageField.value.length;
                counter.textContent = length + ' / 2000';
            });
        })();
    </script>
</body>
</html>
