# Storage / Realtime

## Purpose
Low-latency store for current match state.

## Inputs
Possession, events, current metrics and live tracking summaries.

## Outputs
Current state consumed by `api/`.

## Technology
Redis is the intended primary implementation.
