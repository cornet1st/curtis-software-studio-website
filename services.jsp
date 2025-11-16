<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setAttribute(
        "pageDescription",
        "Custom software, modernization, and advisory services from Curtis Software Studio in Vancouver."
    );
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/jspf/_header.jspf" %>
    <title>Services - Curtis Software Studio</title>
</head>
<body>
    <%@ include file="/WEB-INF/jspf/_navbar.jspf" %>

    <div class="page-shell">
        <section class="glass-panel p-4 p-md-5 mb-5">
            <div class="section-label mb-3">Services</div>
            <div class="row g-4 align-items-center">
                <div class="col-lg-7">
                    <h1 class="hero-title mb-3">Full-stack craftsmanship on demand.</h1>
                    <p class="hero-subtitle">
                        From executive vision to code in production, we orchestrate every layer: strategy, experience, engineering, and stewardship.
                    </p>
                    <p class="zh-note">從願景、體驗到雲端部署，一次整合策略、設計與工程，打造專屬的企業級解決方案。</p>
                </div>
                <div class="col-lg-5">
                    <div class="info-panel h-100">
                        <h5>Included in every engagement</h5>
                        <ul class="text-muted mb-0">
                            <li>Dedicated producer and Slack channel</li>
                            <li>Bi-weekly executive readouts</li>
                            <li>Security + accessibility checkpoints</li>
                            <li>Post-launch refinement sprint</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="glass-panel p-4 p-md-5 mb-5">
            <div class="section-header">
                <div class="section-label">Core Offerings</div>
                <h2 class="section-heading mt-3">Tailored programs for modern teams.</h2>
                <p class="zh-note">三大服務模組，可依需求客製組合或擴充。</p>
            </div>
            <div class="service-grid">
                <div class="service-card">
                    <div class="accent-pill mb-3">Signature Build</div>
                    <h3>Custom Application Delivery</h3>
                    <p class="text-muted mb-3">End-to-end product design and development for net-new platforms, portals, and internal tools.</p>
                    <ul class="text-muted">
                        <li>Research, prototyping, and UX systems</li>
                        <li>Secure Java/Jakarta EE or Spring backends</li>
                        <li>Responsive front-ends and progressive web apps</li>
                        <li>Observability setup and launch orchestration</li>
                    </ul>
                </div>
                <div class="service-card">
                    <div class="accent-pill mb-3">Elevation</div>
                    <h3>Legacy Modernization</h3>
                    <p class="text-muted mb-3">Transform aging JSP or monolithic systems into efficient, cloud-ready experiences.</p>
                    <ul class="text-muted">
                        <li>Architecture audits & migration roadmaps</li>
                        <li>API-first refactors and database redesign</li>
                        <li>Performance, security, and compliance hardening</li>
                        <li>Hybrid cloud deployments with zero downtime cutovers</li>
                    </ul>
                </div>
                <div class="service-card">
                    <div class="accent-pill mb-3">Advisory</div>
                    <h3>Fractional CTO & Enablement</h3>
                    <p class="text-muted mb-3">High-touch guidance for founders and IT leaders navigating growth.</p>
                    <ul class="text-muted">
                        <li>Roadmaps, technical due diligence, and hiring plans</li>
                        <li>Design reviews, code audits, and team coaching</li>
                        <li>Vendor selection and procurement support</li>
                        <li>Retainers for on-demand consultations</li>
                    </ul>
                </div>
            </div>
        </section>

        <div class="divider"></div>

        <section class="glass-panel p-4 p-md-5 mb-5">
            <div class="section-header">
                <div class="section-label">Playbooks</div>
                <h2 class="section-heading mt-3">How we deliver.</h2>
                <p class="zh-note">標準化交付節奏，確保每個里程碑都可量測、可追蹤。</p>
            </div>
            <div class="feature-grid">
                <div class="feature-card">
                    <div class="feature-icon">1</div>
                    <h4>Blueprint Sprint</h4>
                    <p>Two-week intensive capturing business goals, user journeys, risk landscape, and a technology thesis.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">2</div>
                    <h4>Experience Lab</h4>
                    <p>Interactive prototypes with motion and storytelling to win internal alignment or investor buy-in.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">3</div>
                    <h4>Build & Harden</h4>
                    <p>Secure pipelines, modular codebases, rigorous QA, and runbooks for smooth launches.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">4</div>
                    <h4>Care & Scale</h4>
                    <p>Managed hosting, SRE practices, experimentation backlogs, and continuous optimization.</p>
                </div>
            </div>
        </section>

        <section class="glass-panel p-4 p-md-5">
            <div class="section-header">
                <div class="section-label">Case Snapshots</div>
                <h2 class="section-heading mt-3">Proof in the field.</h2>
                <p class="zh-note">近期代表性專案，涵蓋運輸、金融與醫療產業。</p>
            </div>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="portfolio-card h-100">
                        <strong>Urban Mobility Platform</strong>
                        <span class="text-muted">Transportation startup - Hybrid cloud</span>
                        <p class="mb-0 text-muted">Designed and shipped a mobile-first operations dashboard with real-time telemetry and predictive maintenance insights.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="portfolio-card h-100">
                        <strong>Private Wealth Portal</strong>
                        <span class="text-muted">Financial services - Secure intranet</span>
                        <p class="mb-0 text-muted">Implemented role-based access, multilingual content, and a bespoke UI kit to match the bank's luxury identity.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="portfolio-card h-100">
                        <strong>Health Compliance Suite</strong>
                        <span class="text-muted">Healthcare network - API ecosystem</span>
                        <p class="mb-0 text-muted">Connected clinics, labs, and insurers via encrypted APIs, slashing paperwork while meeting PHIPA/PIPEDA requirements.</p>
                    </div>
                </div>
            </div>
            <div class="text-center mt-4">
                <a href="contact.jsp" class="btn btn-gradient">Outline your project</a>
            </div>
        </section>
    </div>

    <%@ include file="/WEB-INF/jspf/_footer.jspf" %>
</body>
</html>
