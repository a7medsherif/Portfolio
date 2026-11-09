$file = "C:\Users\ASH\.gemini\antigravity\scratch\data-analyst-portfolio\index.html"
$content = Get-Content $file -Encoding UTF8 -Raw

# Fix: Messieur card — add image wrap with KPI banner, change link to messieur-dashboard.html, add "View Dashboard" button
$old = @'
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
'@

$new = @'
          <!-- PROJECT 02: MESSIEUR FURNITURE DASHBOARD -->
          <article class="card project-card">
            <div class="project-real-banner">
              <div class="banner-kpis">
                <div class="banner-kpi">
                  <span class="bkpi-num text-amber">1.03M ج.م</span>
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

              <div class="project-kpis">
                <div class="pkpi"><span class="pkpi-v amber">1.03M</span><span class="pkpi-l">Revenue EGP</span></div>
                <div class="pkpi"><span class="pkpi-v cyan">126</span><span class="pkpi-l">Orders</span></div>
                <div class="pkpi"><span class="pkpi-v emerald">81%</span><span class="pkpi-l">Delivered</span></div>
                <div class="pkpi"><span class="pkpi-v indigo">3</span><span class="pkpi-l">Platforms</span></div>
              </div>

              <div class="project-tags">
                <span>Power BI</span>
                <span>DAX</span>
                <span>Excel</span>
                <span>E-Commerce</span>
                <span>Supply Chain</span>
              </div>

              <div class="project-actions">
                <a href="messieur-dashboard.html" class="btn btn-primary btn-sm">
                  <i class="fa-solid fa-chart-pie"></i>
                  <span>View Dashboard</span>
                </a>
                <a href="https://github.com/a7medsherif" target="_blank" rel="noopener noreferrer" class="btn btn-outline btn-sm">
                  <i class="fa-brands fa-github"></i>
                  <span>GitHub</span>
                </a>
              </div>
            </div>
          </article>
'@

$content = $content.Replace($old, $new)
Set-Content $file $content -Encoding UTF8
Write-Host "Done."
