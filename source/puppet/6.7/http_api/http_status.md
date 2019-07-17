---
layout: default
built_from_commit: 2445e3a9d9ce2f4072ade234575ca8f34f22550a
title: 'Puppet HTTP API: Status'
canonical: "/puppet/latest/http_api/http_status.html"
---

Status
=============

The `status` endpoint provides information about a running master.

Find
----

Get status for a master

    GET /puppet/v3/status/:name?environment=:environment

The `environment` parameter and the `:name` are both required, but have no
effect on the response. The `environment` must be a valid environment.

### Supported HTTP Methods

GET

### Supported Response Formats

`application/json`, `text/pson`

### Parameters

None

### Example Response

    GET /puppet/v3/status/whatever?environment=env

    HTTP 200 OK
    Content-Type: application/json

    {"is_alive":true,"version":"3.3.2"}

Schema
------

A status response body conforms to [the status schema.](../schemas/status.json)
