# DevOps & Kubernetes Bootcamp
* Each week = one focused theme.
* Each theme = **(1) explain → (2) explore together → (3) you practice → (4) recap/quiz**.
* We’ll also do mini-projects early, so your hands are never far from the keyboard.

---

## 🔹 Refined Bootcamp Plan (Slow & Solid)

### **Phase 0: Setup (prep week)**

* Make sure your environment is ready: Docker Desktop or Linux with Docker, kubectl, kind or Minikube.
* Create a “learning log” (just a text/Markdown file) where we’ll write weekly notes, commands you tried, and reflections.

---

### **Phase 1: Containers & Linux/Networking Basics (Weeks 1–3)**

We’ll weave Linux + networking side modules into the container refresher.

* **Week 1:** Docker deep dive (images, containers, volumes, caching).
* **Week 2:** Networking basics (IP, DNS, ports, NAT, bridge networks in Docker).
* **Week 3:** Linux basics for DevOps (permissions, logs, processes, systemctl, package managers).

🎯 Mini-project: Dockerize a small 2-service app (web + Redis). Run it with Compose, then explore logs, inspect networks, and debug connectivity.

---

### **Phase 2: Kubernetes Core (Weeks 4–6)**

* Pods, ReplicaSets, Deployments.
* Services, Endpoints, DNS inside Kubernetes.
* Namespaces, contexts.
* kubectl practice (apply, describe, logs, exec).
* Health checks, self-healing, scaling.

🎯 Mini-project: Deploy the same 2-service app to Kubernetes (kind/Minikube). Confirm scaling, simulate pod crashes.

---

### **Phase 3: Kubernetes in Practice (Weeks 7–9)**

* ConfigMaps, Secrets, Volumes.
* Ingress controllers & exposing services.
* Helm: charts, values, releases.
* StatefulSets & operators (prep for Kafka/ClickHouse).

🎯 Mini-project: Deploy a small observability stack (Prometheus + Grafana) and connect it to your app.

---

### **Phase 4: Terraform (Weeks 10–11)**

* Basics: providers, resources, state, variables.
* Deploy a VM and small service.
* Use Terraform to provision a managed K8s cluster (EKS/GKE/AKS).

🎯 Mini-project: Terraform + Helm deployment of your 2-service app.

---

### **Phase 5: Production-Level (Weeks 12–14+)**

* Observability stack (Prometheus + Grafana + Loki + Tempo).
* Deploying Kafka + Zookeeper + Schema Registry (via Helm charts/operators).
* Deploying Minio, ClickHouse.
* Horizontal Pod Autoscaler (HPA).
* Best practices: staging environments, rollbacks, canaries.
* Secrets management (K8s secrets, Vault, SOPS).

🎯 Capstone Project: Recreate your **real pipeline** in Kubernetes with scaling, monitoring, and logging.

---

## 🛠️ How we’ll study together

* I’ll **explain concepts** in plain terms, then check with you by asking questions.
* You’ll try commands/projects on your side, then tell me results.
* We’ll do **recap sessions**: I’ll quiz you or ask you to “teach it back.”
* At the end of each phase, we’ll write a short “review cheat sheet” together.
