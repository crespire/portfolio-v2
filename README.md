# Portfolio v2

Source for [crespire.dev](https://crespire.dev): Simmon Li's portfolio, resume, projects and posts. The site is a static [Bridgetown](https://www.bridgetownrb.com/) build that GitHub Pages hosts.

## Stack

- Bridgetown 2 with ERB templates and Ruby components
- Stimulus for the small amount of front-end behaviour
- esbuild and PostCSS for JavaScript and CSS
- GitHub Actions for build and deploy

## Prerequisites

`.tool-versions` pins the runtimes: Ruby 4.0.9 and Node 20. With [asdf](https://asdf-vm.com/), run `asdf install` in the repository root. CI reads the Ruby version from `.ruby-version`, so keep the two files in step.

## Local development

1. Clone the repository.
1. `bundle install`
1. `npm install`
1. `bin/bt start`

`bin/bt start` starts a development server at http://localhost:4000 and rebuilds on file changes. `bin/bt` is a binstub for `bin/bridgetown`, so it runs the Bridgetown version in `Gemfile.lock`.

To build the production site locally, run `BRIDGETOWN_ENV=production bin/bridgetown deploy`. The output goes to `output/`.

## Where the content lives

| Path | Content |
|---|---|
| `src/resume.md` | The resume page at `/resume/` |
| `src/about.md` | The about page |
| `src/_projects/` | One Markdown file per project. Front matter sets `title`, `role`, `description`, `tech` and `order` (the sort position on the projects page). |
| `src/_posts/` | Blog posts, named `YYYY-MM-DD-slug.md` |
| `src/_data/site_metadata.yml` | Site title, tagline, email and description |
| `src/_layouts/`, `src/_components/`, `src/_partials/` | Templates and components |
| `frontend/` | Stimulus controllers and stylesheets |

## Deployment

A push to `main` runs the "Deploy to GitHub pages" workflow (`.github/workflows/`). It builds the site with `BRIDGETOWN_ENV=production` and publishes `output/` to GitHub Pages. Check the Actions tab after a push: a failed build leaves the previous version of the site live.

## Maintenance notes

- `ruby/setup-ruby` builds only the latest patch release of each Ruby series for new runner images. If `ubuntu-latest` moves to a new image and the build fails with "Unavailable version", move `.ruby-version` and `.tool-versions` to a version that the error message lists.
- After you change the Ruby version, run `bundle update bridgetown` and a local production build before you push.
- Dependabot security updates open pull requests for vulnerable gems and npm packages. Merging one deploys the site like any other push to `main`.
