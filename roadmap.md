# Plannification

## Step 1 : Infrastructure générique

- dossier `_env`
- makefile
- package.json
  - ? bump des packages
  - ? workspaces
  - ? outils git
  - ? linter
- CI
  - ? pull_request_template.md
  - ? CODEOWNERS

## Step 2 : Projet web fullstack générique

- frontend Vite classique
- backend GraphQL (requete "health")
- Postgres
- Gateway Nginx
- Dockerisation `dev`

## Step 3 : Tests et CI

- tests unit/inté avec Vitest pour chaque conrtainer
- tests e2e avec Playwright
  - env GHub
- CI
  - PR>dev
    - lancer les tests unit/inté touched
  - PR>stg
    - lancer tous les tests unit/inté
    - lancer PWright

## Step 4 : Déploiement

- Dockerisation `stg`/`prd`
- instaurer les environnements sur le vps
  - dev
    - git clone du projet
    - make run dev
  - stg
    - compose.yaml
    - fetch-and-deploy.sh
  - prd
- CD
  - push>dev
    - ping vps
      - > git pull
  - push>stg
    - build images
    - images -> DHub
    - ping vps
      - > fetch-and-deploy.sh
  - ? push>prd
    - ping vps
      - > fetch-and-deploy.sh
    - ? créer changelog
    - ? créer tag
    - ? créer release

# Points techniques

zustand
graphql-codegen
forms (controlled vs non-controlled)
zod
react-router
