# DS464 Agentic AI: Autonomous News Fact-Checker
**Student:** Hassan Ahmed (Reg # 2022211)
**Course:** DS464 Agentic AI & RAG Systems

## 🚀 Project Overview
An autonomous Research Agent built with n8n that verifies news headlines using live web searches (SerpAPI) and LLM reasoning (Gemini 2.0).

## 🛠️ Tech Stack
- **Orchestration:** n8n
- **LLM:** Google Gemini 2.0 Flash
- **Search Tool:** SerpAPI (Google Search)
- **Database:** PostgreSQL 18
- **Environment:** Docker (Linux Mint)

## 🐳 Docker Configuration
The system runs in two main containers:
- **n8n-container**: Port 5678
- **postgres-container**: Port 5432 (Internal) | Port 5433 (Host)

## 📊 Database Schema
The project uses a `fact_checks` table with the following structure:
- `id`: SERIAL PRIMARY KEY
- `headline`: TEXT
- `verdict`: TEXT (TRUE/FALSE/MISLEADING)
- `reasoning`: TEXT
- `key_findings`: TEXT[] (Array)
- `checked_at`: TIMESTAMP

## 📋 How to Run
1. Clone this repo.
2. Run `docker-compose up -d`.
3. Import the JSON workflow from the `/workflows` folder into n8n.
4. Set your API Keys for SerpAPI and Gemini.
