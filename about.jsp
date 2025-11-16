<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setAttribute(
        "pageDescription",
        "Inside the Curtis Software Studio culture, values, and capabilities powering premium digital products in Vancouver."
    );
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/jspf/_header.jspf" %>
    <title>About Us - Curtis Software Studio</title>
</head>
<body>
    <%@ include file="/WEB-INF/jspf/_navbar.jspf" %>

    <div class="page-shell">
        <section class="glass-panel p-4 p-md-5 mb-5">
            <div class="section-label mb-3">Studio</div>
            <div class="row g-4 align-items-center">
                <div class="col-lg-7">
                    <h1 class="hero-title mb-3">Curtis Software Studio</h1>
                    <p class="hero-subtitle">
                        An independent studio led by Curtis Chen—bringing full-stack strategy, design sensibilities, and hands-on engineering to Vancouver clients.
                    </p>
                    <p class="zh-note">由 Curtis Chen 親自規劃與執行的獨立工作室，結合策略、設計與工程，專注在大溫市場的客製專案。</p>
                    <div class="stat-grid mt-4">
                        <div class="stat-card">
                            <h3>BC + Global</h3>
                            <span>Local presence with distributed delivery</span>
                        </div>
                        <div class="stat-card">
                            <h3>ISO-ready</h3>
                            <span>Processes aligned to ISO 27001 + SOC 2</span>
                        </div>
                        <div class="stat-card">
                            <h3>Trusted</h3>
                            <span>Finance, health, climate & public sector partners</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="feature-card h-100">
                        <div class="feature-icon">
                            <span class="fw-bold">Beliefs</span>
                        </div>
                        <p class="mb-3 text-muted">We mix world-class craft with grounded pragmatism.</p>
                        <ul class="mb-0 text-muted">
                            <li>Every interaction should feel premium and intentional.</li>
                            <li>Security, accessibility, and performance are non-negotiable.</li>
                            <li>Transparent communication accelerates every milestone.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="glass-panel p-4 p-md-5 mb-5">
            <div class="section-header">
                <div class="section-label">Mission + Vision</div>
                <h2 class="section-heading mt-3">Crafting technology that feels inevitable.</h2>
                <p class="section-lead">We exist to help leaders move faster with less friction. Each engagement blends strategic advisory, experience design, and resilient engineering.</p>
                <p class="zh-note">協助企業在策略、體驗與工程三大層面無縫銜接，成為每一步都穩健可靠的長期夥伴。</p>
            </div>
            <div class="feature-grid">
                <div class="feature-card">
                    <div class="feature-icon">M</div>
                    <h4>Mission</h4>
                    <p>Create software ecosystems that amplify human expertise, unlock new revenue, and inspire confidence.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">V</div>
                    <h4>Vision</h4>
                    <p>Set the aesthetic and technical benchmark for boutique studios serving the Pacific Northwest.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">Delta</div>
                    <h4>Values</h4>
                    <p>Integrity, radical collaboration, constant refinement, and generosity toward every stakeholder.</p>
                </div>
            </div>
        </section>


        <section class="glass-panel p-4 p-md-5 mb-5">
            <div class="section-header">
                <div class="section-label">Expertise</div>
                <h2 class="section-heading mt-3">Multidisciplinary by design.</h2>
            </div>
            <div class="service-grid">
                <div class="service-card">
                    <h3>Enterprise Java Delivery</h3>
                    <p class="text-muted mb-3">JSP, Servlets, Jakarta EE, Spring Boot, microservices, and event-driven systems.</p>
                    <ul class="text-muted">
                        <li>Architecture + integration playbooks</li>
                        <li>Performance & security audits</li>
                        <li>Lifecycle automation</li>
                    </ul>
                </div>
                <div class="service-card">
                    <h3>Experience Design Ops</h3>
                    <p class="text-muted mb-3">Design systems, multilingual UX, and motion prototypes for premium SaaS.</p>
                    <ul class="text-muted">
                        <li>Story-driven workshops</li>
                        <li>Design QA + accessibility</li>
                        <li>Interactive demo labs</li>
                    </ul>
                </div>
                <div class="service-card">
                    <h3>Advisory & Enablement</h3>
                    <p class="text-muted mb-3">Fractional leadership, team coaching, and co-creation with internal squads.</p>
                    <ul class="text-muted">
                        <li>Technology due diligence</li>
                        <li>Capability building pods</li>
                        <li>24/7 managed support</li>
                    </ul>
                </div>
            </div>
        </section>

        <section class="glass-panel p-4 p-md-5">
            <div class="section-header">
                <div class="section-label">Milestones</div>
                <h2 class="section-heading mt-3">Highlights from the journey.</h2>
            </div>
            <div class="d-flex flex-column gap-3">
                <div class="process-step">
                    <div class="process-index">2014</div>
                    <div>
                        <h4>Studio founded in Vancouver</h4>
                        <p class="mb-0 text-muted">Launched as a boutique practice helping agencies modernize Java stacks.</p>
                    </div>
                </div>
                <div class="process-step">
                    <div class="process-index">2018</div>
                    <div>
                        <h4>Cross-border delivery network</h4>
                        <p class="mb-0 text-muted">Expanded partnerships across Canada and the Pacific Northwest while keeping service bespoke.</p>
                    </div>
                </div>
                <div class="process-step">
                    <div class="process-index">2023</div>
                    <div>
                        <h4>Experience Lab launched</h4>
                        <p class="mb-0 text-muted">Introduced design ops, rapid prototyping, and observability programs to elevate launches.</p>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <%@ include file="/WEB-INF/jspf/_footer.jspf" %>
</body>
</html>
