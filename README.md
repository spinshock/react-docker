# React with docker

## Prerequisites
1. Nodejs 16.14.2 (LTS) or nvm
1. Docker
1. npm/yarn

## React

### Setup
1. Run `yarn create vite react-docker --template react-ts`/`npm create vite@latest vite react-docker -- --template react-ts`

## Docker

### Setup
1. Multi-stage Dockerfile
    - Build
    - Run with nginx
1. `docker build .` in root directory
