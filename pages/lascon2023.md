---
layout: page
title: Defensive API development techniques for Gophers
permalink: /pages/lascon2023.html
---

## About

Below you can find the slides, recording, and the links from
my presentation at [LASCON](https://www.lascon.org/) 2023.

### Presentation

* [Slides](https://bertold.github.io/lascon2023-defensiveapi.pdf)
* [Recording](https://www.youtube.com/watch?v=rNMGkdXARz0)

### References In The Presentation

* Dependency management
  * [Renovate](https://github.com/renovatebot/renovate)
  * [govulncheck](https://pkg.go.dev/golang.org/x/vuln/cmd/govulncheck)
  * Go Resty [race condition issue](https://github.com/go-resty/resty/issues/630) (already addressed)
  * [HTTP/2 Zero-Day vulnerability results in record-breaking DDoS attacks](https://blog.cloudflare.com/zero-day-rapid-reset-http2-record-breaking-ddos-attack/)

* HTTP Routers
  * [Go built-in](https://pkg.go.dev/net/http#ServeMux)
  * [go-chi](https://github.com/go-chi/chi)
  * [Gorilla MUX](https://github.com/gorilla/mux)
* Rate limiting
  * [go-redis](https://github.com/redis/go-redis)
  * [Ratelimit header draft](https://www.ietf.org/archive/id/draft-polli-ratelimit-headers-05.html)
* JSON Validation
  * [gojsonschema](https://github.com/xeipuuv/gojsonschema)
  * [OpenAPI Initiative](https://www.openapis.org/)
  * [JSON Schema](https://json-schema.org/specification)
  * [Verosint API Reference](https://docs.verosint.com/reference)

### Additional Resources

* [OWASP Top 10 API Security Risks](https://owasp.org/API-Security/editions/2023/en/0x11-t10/)
* [Open Source Security Foundation](https://openssf.org/)
  * [scorecard](https://github.com/ossf/scorecard) app
* [Getting Started with Fuzzing](https://go.dev/doc/tutorial/fuzz)
* [How to Parse a JSON Request Body in Go](https://www.alexedwards.net/blog/how-to-properly-parse-a-json-request-body)
* [Make resilient Go net/http servers using timeouts, deadlines and context cancellation](https://ieftimov.com/posts/make-resilient-golang-net-http-servers-using-timeouts-deadlines-context-cancellation/)
* [Tool selection](https://www.istqb.org/certifications/test-manager) from ISTQB Certified Tester Advanced Level Test Manager Syllabus

## Source Code Repositories

* [API Fuzzing Examples](https://github.com/bertold/apifuzz)
* [Defensive API Implementation Examples](https://github.com/bertold/lascon2023)
