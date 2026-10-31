---
layout: default
title: "Simmon Li's Resume"
---
# Simmon Li
## Resume
* Email: [hello@crespire.dev](mailto:hello@crespire.dev)
* Located in Toronto, Ontario, Canada
* [![Github](https://img.shields.io/badge/-crespire-000?style=flat-square&logo=github&logoColor=azure&color=181717)](https://github.com/crespire)
* [![LinkedIn](https://img.shields.io/badge/-Simmon_Li-000?style=flat-square&logo=linkedin&logoColor=azure&color=0A66C2)](https://www.linkedin.com/in/simmonli/)

A pragmatic full-stack engineer who cares as much about how the system performs as how the product feels. I build, run and maintain everything from data pipelines and third-party integrations to the UI, and I own features and client problems end to end. Ruby and Rails are home base, I'm comfortable in JavaScript and TypeScript, and I've built side projects in React and Go.  
&nbsp;  
<span class="no-print">I'd love to chat about what I can bring to the table, so <a href="#contact-me" data-action="highlight#animate">contact me!</a>.</span>

---

## Work Experience
### Switch Growth, *Senior Software Engineer*
February 2026 - *present*
* Led a rework of the Rails, Sidekiq and PostgreSQL batch data pipeline (BigQuery Avro export, decoupled delivery records, resumable jobs) that cut GCP spend per conversion by ~60%, letting the platform absorb 3.2x conversion volume on flat infrastructure spend.
* Replaced paged BigQuery ingestion with parallel Avro exports fanned out across Kubernetes worker pods, cutting its worker time by 70% and hour-plus jobs from ~190 a day to under 1, and made Salesforce processing resumable with iterable Sidekiq jobs, cutting p99 job time by 84%.
* Reworked the Avro export orchestrator so reader pods split exports into byte ranges in parallel, cutting its worker time a further 19% at flat volume and removing a bookkeeping step that had needed repeated hotfixes.
* Built Switch Metrics, a ClickHouse time-series framework with hourly and daily rollups and anomaly detection. It replaced one-off reporting tables and now backs identity-recovery, account health and rule-routing metrics.
* Retired a recurring class of data incidents by unifying three drifted BigQuery export paths onto one engine that conforms every load to the live schema.
* Fixed Salesforce data-correctness bugs that cost clients conversions: rewrote field-history replay as a whole-object rollback, gave each pipeline its own read cursor (one daily pipeline was receiving 4.8% of its hourly twin's conversions), and bounded day reads so large days no longer exhaust workers.
* Diagnosed and tuned slow queries across PostgreSQL, ClickHouse and BigQuery as routine work, reading query plans, adding missing indexes and removing N+1s; one fix turned a 200-second sequential scan into an index scan.
* Shipped ad-platform and CRM integrations end to end, including Google Data Manager destinations (tag conversions and Floodlights) with a migration dashboard, a Salesforce External Client App for packaged-app auth, and HubSpot associated-object traversal.
* Migrated every legacy data source onto typed schemas without changing delivery outcomes, proven by a read-parity suite that replays anonymized production samples through both paths.
* Partnered with enterprise clients' marketing and engineering teams to resolve attribution and delivery issues wherever they started, in our pipeline or theirs, improving performance across their in-scope ad platforms.

Software Engineer, November 2023 - January 2026  
* Built conversion API integrations for Google (Enhanced Conversions for Leads, Web and Offline), Meta, Reddit, Bing, Pinterest and TikTok, and rolled Google Enhanced Conversions out to many clients across the book with Google Tag Manager templates and documentation.
* Designed the per-record delivery architecture in Rails and PostgreSQL that moved destinations from batch ETL to tracked, retryable delivery, starting with email CSV and call conversions and later Meta CAPI.
* Built Boost, a real-time TypeScript pixel that recovers lost click IDs and hashed identifiers for conversions, from the front-end tag through server-side matching.
* Migrated authentication from WebAuthn to Devise with SMS two-factor, including invite and password-reset flows and a zero-downtime move of sensitive attributes to encrypted storage.
* Added per-job, per-account Sidekiq metrics in Prometheus, making compute cost attributable to clients and jobs, enabling deeper profiling and performance insights.
* Replaced legacy React and JavaScript with Turbo and Stimulus, simplifying the front-end stack.


### Sierra Rails, _Software Developer_
March 2023 - November 2023  
* Reduced error rates by ~60% by re-architecting authentication and adding an onboarding flow that enforces data consistency, working closely with the tech lead.
* Raised test coverage from ~63% to ~91% with RSpec and Capybara request, system, model and ViewComponent specs.
* Built the cart and checkout for publisher distribution bundles on a payment-processor abstraction, with Stripe as the first processor, and captured checkout and payment data for analytics.
* Moved search from PostgreSQL full-text search (`pg_search`) to Meilisearch, including the deployment and CI changes.
* Moved the front-end build from importmaps to esbuild for wider browser support, and moved shared UI into tested ViewComponents.
* Re-implemented the OpenAI-powered press release generation with the tech lead, moving to GPT-3.5 Turbo and adding streaming output.
* Delivered organization/brand management for agency users with many clients, and an image upload and reordering flow in Turbo and Stimulus, vendoring an open-source JavaScript package to add the features it needed.
* Delivered features across the stack from user stories and Figma mocks, with the data migrations and documentation to match.

## Volunteer Experience
### Toronto Ruby, _Co-Host_
November 2023 - *present*
* Organize and grow a monthly Ruby community event, increasing average attendance from ~15 to ~55 by securing speakers, sponsors, and venues.

### Ruby for Good - CASA, _Individual Contributor_
_Ruby on Rails, PostgreSQL, ViewComponents, jQuery, Devise, Pundit_  
* Implemented UI updates to leverage JQuery Datatables for management pages to make it easier to use
* Reviewed and improved multi-tenant permissions using Pundit to ensure security between tenants
* Encapsulated application jobs into unit-testable plain old Ruby objects and wrote tests, adding confidence in notifications


### The Odin Project, _Individual Contributor_
_Ruby on Rails, ViewComponents, Discord.js_  
* Contributed many curriculum updates, including: git best practices, setting up PostgreSQL for development, and using AI while learning foundations
* Fixed form validation bugs on the web application and update the data to include new lessons
* Fixed a points grant bug on the community discord bot

---

## Personal Projects
### Railsbook
_Ruby on Rails, devise, Turbo/Stimulus, Sass CSS, RSpec, dokku, docker, AWS S3_  
**Live:** [https://railsbook.crespire.dev](https://railsbook.crespire.dev/)  
**Repository:** [https://github.com/crespire/rails_railsbook](https://github.com/crespire/rails_railsbook/)
* Implements core Facebook friend and content experience
* Automated RSpec/Capybara test suite with ~83% coverage
* Styled via custom BEM system utilizing Sass
* Leverages dokku/docker on DigitalOcean for deployment. Hooks up to Sendgrid and AWS S3 for supporting services

### Buysell by crespire
_Ruby on Rails, React, Typescript, Tailwind, PostgreSQL, Rspec, cypress, git, docker, AWS S3, vercel_  
**Live:** [https://buysell.crespire.dev/](https://buysell.crespire.dev/)  
**Repository:** [https://github.com/crespire/buysell](https://github.com/crespire/buysell)  
* Implements a full stack buy & sell application with React Typescript/Rails API
* Custom hooks and providers on the React application centralize important application functions, including API access and data caching and user authentication
* Styled using daisyUI built on Tailwind, with some custom components created for re-usability.

### 2 Player CLI Chess
_Ruby, RSpec_  
**Live:** [https://replit.com/@crespire/rubychess](https://replit.com/@crespire/rubychess?lite=1&outputonly=1#README.md)  
**Repository:** [https://github.com/crespire/ruby_chess](https://github.com/crespire/ruby_chess)
* Implements Chess for 2 players via command line interface in Ruby
* Planned and implemented from broadly scoped requirements
* Automated RSpec test suite with ~96% coverage
* Program does not utilize any third party Chess libraries
* Wide compatibility with other Chess software via FEN (de)serialization

---

## Education
### Honours Bachelor of Arts with High Distinction (3.73/4.0 GPA)
_University of Toronto_  
2011 - 2014
* Specialization in Peace, Conflict & Justice with a minor in Ethics, Society & Law

### Bachelor of Music in Performance (2.89/4.0 GPA)
_University of Toronto_  
2006 - 2011
* Specialization in Vocal Jazz

---

## Skills
* **Languages:** Ruby, JavaScript, TypeScript, SQL, HTML5, CSS3
* **Frameworks:** Ruby on Rails, Hotwire, React, Bootstrap, Tailwind
* **Data:** PostgreSQL, ClickHouse, BigQuery, Sidekiq, Redis
* **Automated Testing:** RSpec, Capybara, Cypress, Jest
* **Infrastructure:** Google Cloud Platform, Kubernetes, Prometheus, GitHub Actions, AWS, Heroku, DigitalOcean
* **Tools:** git, neovim, docker
