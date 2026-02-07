# homelab-platform

A lightweight homelab platform for running shared infrastructure services on a single machine.

### What this provides

- [Observability](observability/README.md) stack with Prometheus, Grafana, Node Exporter, and Zipkin.
- [Data services](data/README.md) (MySQL, Redis)

### Repository structure

```text
homelab-platform/
├── data/             # reserved for data services
│   ├── mysql/
│   └── redis/
│
├── observability/    # monitoring & tracing stack
│   ├── grafana/
│   └── prometheus/
│
└── scripts/
```
