$file = "C:\Users\ASH\.gemini\antigravity\scratch\data-analyst-portfolio\index.html"
$lines = Get-Content $file -Encoding UTF8

$newSection = @"

    <!-- ==================== 4. PROJECTS SECTION ==================== -->
    <section class="section projects-section" id="projects">
      <div class="container">
        
        <div class="section-header">
          <span class="section-tag">Showcase</span>
          <h2 class="section-title">Projects</h2>
          <p class="section-desc">Real-world Power BI dashboards built from actual business data — from raw numbers to executive-ready insights.</p>
        </div>

        <div class="projects-grid">

          <!-- PROJECT 01: SALLA CALL CENTER DASHBOARD -->
          <article class="card project-card featured-project">
            <div class="project-img-wrap">
              <img
                src="assets/images/salla-home.jpg"
                alt="Salla Call Center Power BI Dashboard"
                class="project-img"
                loading="lazy"
              />
              <span class="img-overlay-badge"><i class="fa-solid fa-chart-bar"></i> Power BI · 4 Pages</span>
            </div>

            <div class="project-body">
              <div class="project-header">
                <span class="project-meta-pill">Power BI • Call Center &amp; Customer Support</span>
                <h3 class="project-title">Salla Call Center Performance Dashboard</h3>
              </div>

              <p class="project-description">
                Power BI dashboard for Salla's customer support call center. Tracks Total Calls (18,560 ▲12.5%), CSAT Score (94% ▲8.2%), and Avg Response Time (00:01:32 ▼6.1%) — with dedicated pages for Calls Analysis, Agent Performance ranking, and Root-Cause decomposition of contact reasons.
              </p>

              <div class="project-kpis">
                <div class="pkpi"><span class="pkpi-v cyan">18,560</span><span class="pkpi-l">Total Calls</span></div>
                <div class="pkpi"><span class="pkpi-v emerald">94%</span><span class="pkpi-l">CSAT</span></div>
                <div class="pkpi"><span class="pkpi-v amber">00:01:32</span><span class="pkpi-l">Avg Response</span></div>
                <div class="pkpi"><span class="pkpi-v indigo">4</span><span class="pkpi-l">Report Pages</span></div>
              </div>

              <div class="project-tags">
                <span>Power BI</span>
                <span>DAX</span>
                <span>Call Center Analytics</span>
                <span>CSAT</span>
                <span>KPI Tracking</span>
              </div>

              <div class="project-actions">
                <a href="salla-dashboard-real.html" class="btn btn-primary btn-sm">
                  <i class="fa-solid fa-chart-line"></i>
                  <span>View Dashboard</span>
                </a>
                <a href="https://github.com/a7medsherif" target="_blank" rel="noopener noreferrer" class="btn btn-outline btn-sm">
                  <i class="fa-brands fa-github"></i>
                  <span>GitHub</span>
                </a>
              </div>
            </div>
          </article>

          <!-- PROJECT 02: MESSIEUR FURNITURE DASHBOARD -->
          <article class="card project-card">
            <div class="project-real-banner">
              <div class="banner-kpis">
                <div class="banner-kpi">
                  <span class="bkpi-num text-cyan">1.03M ج.م</span>
                  <span class="bkpi-lbl">إجمالي المبيعات</span>
                </div>
                <div class="banner-kpi">
                  <span class="bkpi-num text-indigo">126</span>
                  <span class="bkpi-lbl">عدد الطلبات</span>
                </div>
                <div class="banner-kpi">
                  <span class="bkpi-num text-emerald">81%</span>
                  <span class="bkpi-lbl">نسبة التسليم</span>
                </div>
                <div class="banner-kpi">
                  <span class="bkpi-num text-amber">62%</span>
                  <span class="bkpi-lbl">Homzmart</span>
                </div>
              </div>
            </div>

            <div class="project-body">
              <div class="project-header">
                <span class="project-meta-pill">Power BI • E-Commerce Sales &amp; Operations</span>
                <h3 class="project-title">Messieur Furniture Sales &amp; Operations Dashboard</h3>
              </div>

              <p class="project-description">
                Power BI dashboard analyzing furniture e-commerce sales across platforms (Homzmart 62%, Chic Homes, Taki). Tracks 126 orders, 1.03M EGP revenue, delivery success rate (81%), top products (beds: 70% of orders), best-selling colors, cancellation drivers (18.3%), and on-time delivery rate (55.6%).
              </p>

              <div class="project-tags">
                <span>Power BI</span>
                <span>DAX</span>
                <span>Excel</span>
                <span>E-Commerce</span>
                <span>Supply Chain</span>
              </div>

              <div class="project-actions">
                <a href="https://github.com/a7medsherif" target="_blank" rel="noopener noreferrer" class="btn btn-primary btn-sm">
                  <i class="fa-brands fa-github"></i>
                  <span>GitHub Repo</span>
                </a>
                <span class="btn btn-outline btn-sm btn-disabled" title="Publish your .pbix to Power BI Service to get a live link">
                  <i class="fa-solid fa-link-slash"></i>
                  <span>Live Link (Coming Soon)</span>
                </span>
              </div>
            </div>
          </article>

        </div>

      </div>
    </section>
"@

# Lines 309-418 are index 308-417 (0-based)
$before = $lines[0..307]
$after  = $lines[418..($lines.Length - 1)]

$merged = $before + $newSection.Split("`n") + $after
$merged | Set-Content $file -Encoding UTF8
Write-Host "Done. Projects section replaced."
