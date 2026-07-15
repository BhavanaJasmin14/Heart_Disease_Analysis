from flask import Flask, render_template_string

app = Flask(__name__)

TABLEAU_DASHBOARD_URL = "https://public.tableau.com/views/Heart_Disease_Analysis_17825901295670/Story1"
TABLEAU_STORY_URL = "https://public.tableau.com/views/Heart_Disease_Analysis_17825901295670/Story1"

PAGE_TEMPLATE = """
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Heart Disease Analysis Dashboard</title>
<script type="module" src="https://public.tableau.com/javascripts/api/tableau.embedding.3.latest.min.js"></script>
<style>
    body { font-family: Arial, sans-serif; background: #f4f6f8; margin: 0; padding: 0; }
    header { background: #b71c1c; color: white; padding: 20px 30px; }
    header h1 { margin: 0; font-size: 24px; }
    header p { margin: 5px 0 0; opacity: 0.9; font-size: 14px; }
    nav { background: #fff; padding: 12px 30px; border-bottom: 1px solid #ddd; }
    nav a { margin-right: 25px; text-decoration: none; color: #b71c1c; font-weight: 600; cursor: pointer; }
    .container { padding: 25px 30px; }
    .viz-card { background: white; border-radius: 8px; box-shadow: 0 2px 6px rgba(0,0,0,0.08); padding: 15px; margin-bottom: 25px; }
    .viz-card h2 { color: #333; font-size: 18px; margin-top: 0; }
    tableau-viz { width: 100%; height: 800px; }
    .tab-section { display: none; }
    .tab-section.active { display: block; }
</style>
</head>
<body>
<header>
    <h1>❤️ Heart Disease Analysis</h1>
    <p>Tableau-powered insights for preventive cardiac care | SmartBridge Project</p>
</header>
<nav>
    <a onclick="showTab('dashboard')">Dashboard</a>
    <a onclick="showTab('story')">Story</a>
</nav>
<div class="container">
    <div id="dashboard" class="tab-section active">
        <div class="viz-card">
            <h2>Interactive Dashboard</h2>
            <tableau-viz id="dash-viz" src="{{ dashboard_url }}" toolbar="bottom" hide-tabs></tableau-viz>
        </div>
    </div>
    <div id="story" class="tab-section">
        <div class="viz-card">
            <h2>Data Story</h2>
            <tableau-viz id="story-viz" src="{{ story_url }}" toolbar="bottom" hide-tabs></tableau-viz>
        </div>
    </div>
</div>
<script>
function showTab(name) {
    document.querySelectorAll('.tab-section').forEach(s => s.classList.remove('active'));
    document.getElementById(name).classList.add('active');
}
</script>
</body>
</html>
"""

@app.route("/")
def index():
    return render_template_string(
        PAGE_TEMPLATE,
        dashboard_url=TABLEAU_DASHBOARD_URL,
        story_url=TABLEAU_STORY_URL
    )

if __name__ == "__main__":
    app.run(debug=True)
