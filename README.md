# Self-Hosted DevOps Platform

Bu proje, yerel bir Ubuntu ortamında uçtan uca modern DevOps pratiklerini simüle etmek amacıyla hazırlanmıştır.

## Mimari ve Kullanılan Teknolojiler
- **Altyapı (IaC):** Terraform ile K3d (Kubernetes) kümesinin ayağa kaldırılması.
- **Sürekli Dağıtım (GitOps):** ArgoCD kullanılarak Kubernetes manifestolarının otomatik dağıtımı.
- **İzlenebilirlik (Observability):** Kube-Prometheus-Stack (Prometheus & Grafana) ile metrik toplanması ve görselleştirilmesi.
- **Uygulama:** ArgoCD tarafından yönetilen Nginx tabanlı örnek bir web servisi.

## Kurulum Adımları
1. Terraform ile altyapının oluşturulması (`terraform apply`)
2. ArgoCD'nin kümeye kurulması ve repoya bağlanması.
3. Helm üzerinden Prometheus/Grafana izleme araçlarının yapılandırılması.
