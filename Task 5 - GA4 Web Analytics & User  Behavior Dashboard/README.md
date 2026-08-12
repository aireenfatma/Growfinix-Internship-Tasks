# GA4 Web Analytics & User Behavior Dashboard

An interactive Google Looker Studio dashboard designed to analyze website traffic, user engagement, and acquisition channels using Google Analytics 4 (GA4) data.

---

## 📌 Dashboard Overview

This dashboard provides a clear overview of website performance, user behavior, and traffic acquisition sources to support data-driven marketing decisions.

### Core Metrics Tracked
- **Views:** 334.28k
- **Active Users:** 89.29k
- **New Users:** 71.82k
- **Sessions:** 103.89k
- **Avg. Session Duration:** 01:03:41

---

## 📊 Key Features & Sections

1. **KPI Scorecards:** Top-level metrics monitoring traffic volume, user growth, and engagement duration.
2. **Traffic Channels Breakdown:** Visual distribution of sessions across channels including Direct, Organic Search, Paid Search, Referral, Cross-network, and Organic Social.
3. **Page & Landing Page Performance:** Analysis of top page paths and corresponding landing page views to evaluate content engagement.
4. **Daily Traffic Trend:** Time-series line chart tracking session trends over time.
5. **Users by Device:** Device category and model distribution chart highlighting top user devices.

---

## 💡 Key Insights & Recommendations

- **Traffic Insight:** Direct traffic drives the highest volume of sessions (**66.72k**), followed by Organic Search (**22.57k**). Paid channels generate lower volume relative to organic channels.
  - *Recommendation:* Prioritize SEO optimization and brand awareness while evaluating budget allocation on paid campaigns.
- **Landing Page / Retention:** Top page paths such as `/`, `/shop/new`, and `/shop/apparel/mens` attract the majority of views.
  - *Recommendation:* Optimize high-traffic landing pages with clear navigation and prominent call-to-action (CTA) buttons to convert visit volume into longer engaged sessions.

---

## 🚀 How to Use

1. **Accessing the Dashboard:** Open the report in Google Looker Studio.
2. **Connecting Your Data:**
   - Link your **Google Analytics 4 (GA4)** property as the primary data source.
   - Ensure permissions allow reading `Sessions`, `Views`, `Active users`, `New users`, `Average session duration`, `Session default channel group`, and `Page path / Landing page`.
3. **Filtering & Analysis:** Use the native Looker Studio date range picker and dimensional controls to drill down into specific date ranges or channels.

---

## 🛠️ Built With

- **Visualization:** [Google Looker Studio](https://lookerstudio.google.com/)
- **Data Source:** [Google Analytics 4 (GA4)](https://analytics.google.com/)

---

## 📄 License

This project is licensed under the MIT License - see the `LICENSE` file for details.
