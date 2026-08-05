# Lab 04 - Windows 11 Domain Join

## Objectif

L'objectif de ce laboratoire est de joindre un poste client Windows 11 à un domaine Active Directory existant afin de permettre une gestion centralisée des utilisateurs et des ordinateurs dans un environnement d'entreprise.

Le poste client Windows 11 sera intégré au domaine :
techsolutions.local


Le contrôleur de domaine utilisé est :
DC01
Windows Server 2025
Active Directory Domain Services
DNS Server


---

# Architecture du laboratoire

             TechSolutions.local

                   DC01
          Windows Server 2025
      Active Directory Domain Services
                   |
                   |
                PC01
             Windows 11 Client
          Domain Member Computer


---

# Prérequis

Avant de commencer, les éléments suivants étaient disponibles :

- Windows Server 2025 configuré comme contrôleur de domaine
- Domaine Active Directory opérationnel
- Service DNS configuré par AD DS
- Machine virtuelle Windows 11 installée
- Les deux machines connectées au même réseau VMware

---

# Configuration réseau

## Contrôleur de domaine (DC01)

| Paramètre | Valeur |
|---|---|
| Nom machine | DC01 |
| Système | Windows Server 2025 |
| Rôle | Domain Controller |
| Domaine | techsolutions.local |
| Service DNS | Actif |

---

## Poste client Windows 11

| Paramètre | Valeur |
|---|---|
| Nom machine | WIN11-01 |
| Système | Windows 11 |
| Type | Client Active Directory |
| Domaine rejoint | techsolutions.local |

---

# Étape 1 - Configuration réseau du client

Le poste Windows 11 a été configuré afin de communiquer avec le contrôleur de domaine.

Le serveur DNS configuré correspond à l'adresse IP du contrôleur de domaine DC01.

Cette configuration est nécessaire puisque Active Directory utilise DNS pour localiser les services du domaine.

![Configuration réseau](/labs/lab01-infrastructure/screenshots/VMNet2-configuration.png)

---

# Étape 2 - Test de communication avec DC01

Avant de joindre le domaine, un test de communication a été effectué entre le client Windows 11 et le contrôleur de domaine.

Commande utilisée :

```powershell
ping DC01       
