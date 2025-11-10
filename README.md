# KaraKeep App

This project is designed to run on **macOS** using **OrbStack** for containerization and **Ollama** for local AI model inference.

## Setup Instructions

### Prerequisites

*   **macOS**: Ensure you have a macOS operating system.
*   **OrbStack**: Install OrbStack from [orbstack.dev](https://orbstack.dev). OrbStack is used for running Docker containers efficiently on macOS.

### Getting Started

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/paulistasystems/karakeep-on-orbstack.git
    cd karakeep-app
    ```

2.  **Configure Environment Variables**:
    Create a `.env` file in the root directory of the project based on `.env.example`.
    ```bash
    cp .env.example .env
    ```
    Edit the `.env` file and fill in the necessary values. You must generate strong secrets for `MEILI_MASTER_KEY` and `NEXTAUTH_SECRET`. Refer to the comments in `.env.example` for examples on how to generate them.

3.  **Start the application with OrbStack (Docker Compose)**:
    ```bash
    docker compose up -d
    ```
    This command will build and start all services defined in `docker-compose.yml`, including the Ollama service. The first time you run this command, it will download the Ollama image and the `llama3.2` model, which may take some time.

4.  **Access the application**:
    Once the services are up and running, the application should be accessible via `NEXTAUTH_URL` (e.g., `http://localhost:3000`) in your web browser.

## Project Structure

*   `.env`: Environment variables for the project (ignored by Git).
*   `.env.example`: Example environment variables.
*   `docker-compose.yml`: Defines the services for the application, including MeiliSearch and the Ollama service for AI model inference.
*   `data/`: Directory for persistent data (e.g., databases, MeiliSearch data).

---
Enjoy using KaraKeep!

