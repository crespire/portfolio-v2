---
layout: page
title: Switch Growth
role: Senior Software Engineer
description: A platform for clients to maximize their return on advertising investment.
tech: ['Ruby on Rails', 'Hotwire', 'Sidekiq', 'PostgreSQL', 'ClickHouse', 'BigQuery', 'TypeScript', 'RSpec', 'Capybara', 'ViewComponents', 'Tailwind', 'GCP', 'Kubernetes', 'Prometheus']
order: 1
---

My current role, where I've grown from Software Engineer to Senior Software Engineer since joining in November 2023. Switch is a multi-tenant marketing data platform: it reads conversions from clients' CRMs and data warehouses, routes them through client-defined rules, and delivers them to ad platforms. I work across the full stack on Rails, Sidekiq, PostgreSQL, ClickHouse, BigQuery and Hotwire.

As a Software Engineer, I built conversion integrations for Google, Meta, Reddit, Bing, Pinterest and TikTok, designed the per-record delivery architecture that moved destinations from batch ETL to tracked, retryable delivery, and built Boost, a real-time TypeScript pixel that recovers lost click IDs. I also added per-job, per-account Prometheus metrics for our Sidekiq jobs, which later made our efficiency work measurable.

Since moving to Senior, my focus has been the platform's data processing architecture. I led a rework of the batch pipeline (BigQuery Avro exports, decoupled delivery records and resumable jobs) that cut cloud spend per conversion by about 60%, so the platform absorbed 3.2x the conversion volume on flat infrastructure spend. Along the way I built Switch Metrics, a ClickHouse time-series framework with anomaly detection, unified our BigQuery export paths onto one schema-conforming engine, and migrated every client data source to a stricter data model without changing what clients received.

Client work is still a big part of the role. I partner with clients' marketing and engineering teams to resolve attribution and delivery issues wherever they start, and I enjoy celebrating client success with the team.
