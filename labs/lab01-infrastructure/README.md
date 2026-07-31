# LAB 01 - Infrastructure de virtualisation

## Contexte

Ce laboratoire consiste à préparer l'environnement de virtualisation utilisé pour simuler l'infrastructure informatique d'une entreprise.

L'objectif est de construire une base permettant le déploiement de Windows Server, Windows 11 et Linux.

---

# Objectifs

- Installer VMware Workstation Pro
- Configurer les réseaux virtuels VMware
- Créer les machines virtuelles
- Préparer l'environnement réseau
- Documenter l'infrastructure

---

# Technologies utilisées

- VMware Workstation Pro
- Windows Server 2025 Evaluation
- Windows 11 Enterprise Evaluation
- Ubuntu Server LTS

---

# Architecture réseau

Réseau laboratoire :
192.168.10.0/24


---

# Machines virtuelles

| Machine | Système | Rôle | Adresse IP |
|---|---|---|---|
| DC01 | Windows Server 2025 | Active Directory / DNS / DHCP | 192.168.10.10 |
| WIN11-01 | Windows 11 | Poste Administration | DHCP |
| WIN11-02 | Windows 11 | Poste Finance | DHCP |
| UBUNTU01 | Ubuntu Server | Serveur Linux | 192.168.10.20 |

---

# Ressources prévues

## DC01

- CPU : 2 cores
- RAM : 4 Go
- Disque : 80 Go

## Windows Clients

- CPU : 2 cores
- RAM : 4 Go
- Disque : 80 Go

## Ubuntu Server

- CPU : 2 cores
- RAM : 2 Go
- Disque : 30 Go

---

# Avancement

- [x] Création branche Git
- [x] Création structure du laboratoire
- [ ] Installation VMware Workstation
- [ ] Configuration VMnet2
- [ ] Création DC01
- [ ] Installation Windows 11
- [ ] Installation Ubuntu Server

---

# Difficultés rencontrées

À compléter durant le laboratoire.

---

# Résultat attendu

Obtenir une infrastructure virtuelle fonctionnelle permettant de réaliser les prochains laboratoires Microsoft.