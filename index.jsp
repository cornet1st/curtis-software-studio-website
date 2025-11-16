<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setAttribute(
        "pageDescription",
        "Curtis Software Studio is your partner for robust, scalable, and modern web applications. Specializing in Java, JSP, and full-stack development."
    );
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/jspf/_header.jspf" %>
    <title>Home - Curtis Software Studio</title>
</head>
<body>
    <%@ include file="/WEB-INF/jspf/_navbar.jspf" %>

    <div class="page-shell">
        <section class="hero-panel glass-panel mb-5">
            <div class="accent-pill mb-3">
                Vancouver - Remote-first
            </div>
            <h1 class="hero-title">High-end software experiences for bold BC companies.</h1>
            <p class="hero-subtitle">
                Curtis Software Studio blends strategic consulting with full-stack implementation to ship secure, scalable products crafted for the Vancouver market and beyond.
            </p>
            <p class="zh-note">為大溫地區的創業團隊與企業打造高質感、可擴充且安全的專屬軟體體驗。</p>
            <div class="hero-actions">
                <a href="contact.jsp" class="btn btn-gradient" aria-label="Book a discovery call with Curtis Software Studio">Book a Discovery Call</a>
                <a href="services.jsp" class="btn btn-ghost" aria-label="View Curtis Software Studio services">Explore Services</a>
            </div>
            <div class="stat-grid">
                <div class="stat-card">
                    <h3>12+</h3>
                    <span>Years architecting enterprise-grade systems</span>
                </div>
                <div class="stat-card">
                    <h3>48</h3>
                    <span>Products launched for BC startups & enterprises</span>
                </div>
                <div class="stat-card">
                    <h3>99.9%</h3>
                    <span>Uptime delivered across managed platforms</span>
                </div>
            </div>
        </section>

        <section class="glass-panel p-4 p-md-5 mb-5">
            <div class="section-header">
                <div class="section-label">Capabilities</div>
                <h2 class="section-heading mt-3">From concept to cloud in one seamless studio.</h2>
                <p class="section-lead">We partner with founders, IT teams, and agencies to plan, engineer, and launch signature digital experiences with uncompromising polish.</p>
                <p class="zh-note">與台灣/加拿大團隊共同規劃、設計到部署，提供一站式進程，確保產品質感與穩定度。</p>
            </div>
            <div class="feature-grid">
                <div class="feature-card">
                    <div class="feature-icon">
                        <span class="fw-bold">01</span>
                    </div>
                    <h4>Product Strategy Intensives</h4>
                    <p>Research-driven discovery, market benchmarking, and actionable delivery roadmaps tailored to Vancouver's tech ecosystem.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <span class="fw-bold">02</span>
                    </div>
                    <h4>Luxury-grade Interfaces</h4>
                    <p>Sophisticated UI systems, micro-interactions, and prototype-driven validation to impress investors and customers alike.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <span class="fw-bold">03</span>
                    </div>
                    <h4>Modern Java Platforms</h4>
                    <p>JSP/Servlet, Spring, and cloud-native deployments hardened for security, compliance, and long-term maintainability.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <span class="fw-bold">04</span>
                    </div>
                    <h4>High-touch Support</h4>
                    <p>Fractional CTO guidance, detailed documentation, and on-call support to keep mission-critical systems humming.</p>
                </div>
            </div>
        </section>

        <div class="divider"></div>

        <section class="glass-panel p-4 p-md-5 mb-5">
            <div class="section-header">
                <div class="section-label">Process</div>
                <h2 class="section-heading mt-3">A refined delivery ritual that keeps projects on track.</h2>
                <p class="zh-note">有節奏的交付流程，讓專案在清楚的節點下穩定推進。</p>
            </div>
            <div class="d-flex flex-column gap-3">
                <div class="process-step">
                    <div class="process-index">01</div>
                    <div>
                        <h4>Discovery & Alignment</h4>
                        <p class="mb-0 text-muted">Research workshops, technical audits, and KPI alignment sessions to crystallize the right problem to solve.</p>
                    </div>
                </div>
                <div class="process-step">
                    <div class="process-index">02</div>
                    <div>
                        <h4>Designing the Signature Experience</h4>
                        <p class="mb-0 text-muted">High-fidelity prototypes, motion explorations, and design system tokens for a premium brand presence.</p>
                    </div>
                </div>
                <div class="process-step">
                    <div class="process-index">03</div>
                    <div>
                        <h4>Engineering & Hardening</h4>
                        <p class="mb-0 text-muted">Iterative releases through secure pipelines, performance tuning, and rigorous QA on cloud environments.</p>
                    </div>
                </div>
                <div class="process-step">
                    <div class="process-index">04</div>
                    <div>
                        <h4>Launch & Stewardship</h4>
                        <p class="mb-0 text-muted">Rollout orchestration, observability dashboards, and ongoing optimization sprints.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="glass-panel p-4 p-md-5">
            <div class="section-header">
                <div class="section-label">Featured Wins</div>
                <h2 class="section-heading mt-3">Selected Vancouver engagements.</h2>
                <p class="zh-note">近期在溫哥華及加拿大客戶的精選案例。</p>
            </div>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="portfolio-card h-100">
                        <strong>GreenPort Logistics</strong>
                        <span class="text-muted">Supply chain visibility portal - Spring + React</span>
                        <p class="mb-0 text-muted">Unified three legacy systems, created predictive ETAs, and reduced manual dispatch time by 42%.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="portfolio-card h-100">
                        <strong>Harbour Capital</strong>
                        <span class="text-muted">Investor transparency suite - JSP & Charting</span>
                        <p class="mb-0 text-muted">Delivered a luxury-grade reporting tool with role-based security and automated compliance workflows.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="portfolio-card h-100">
                        <strong>Coastal Health Alliance</strong>
                        <span class="text-muted">Patient intake modernization - Secure APIs</span>
                        <p class="mb-0 text-muted">Digitized forms, enabled bilingual intake, and achieved 99.95% uptime across clinics.</p>
                    </div>
                </div>
            </div>
            <div class="text-center mt-4">
                <a href="contact.jsp" class="btn btn-gradient">Request a tailored case study</a>
            </div>
        </section>
    </div>

    <%@ include file="/WEB-INF/jspf/_footer.jspf" %>
</body>
</html>
