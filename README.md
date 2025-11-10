# KaraKeep App

This project is designed to run on **macOS** using **OrbStack** for containerization and **LM Studio** for local AI model inference.

## Setup Instructions

### Prerequisites

*   **macOS**: Ensure you have a macOS operating system.
*   **OrbStack**: Install OrbStack from [orbstack.dev](https://orbstack.dev). OrbStack is used for running Docker containers efficiently on macOS.
*   **LM Studio**: Download and install LM Studio from [lmstudio.ai](https://lmstudio.ai). LM Studio will be used to serve local AI models for inference.

### Getting Started

1.  **Clone the repository**:
    ```bash
    git clone [YOUR_REPOSITORY_URL]
    cd karakeep-app
    ```

2.  **Configure Environment Variables**:
    Create a `.env` file in the root directory of the project based on `.env.example`.
    ```bash
    cp .env.example .env
    ```
    Edit the `.env` file and fill in the necessary values, especially for `MEILI_MASTER_KEY` and `NEXTAUTH_SECRET`.

3.  **Start LM Studio**:
    Open LM Studio and load your desired AI model. Ensure the LM Studio server is running and accessible, typically at `http://localhost:1234/v1`. The `OPENAI_API_BASE` in your `.env` file should point to this address.

4.  **Start the application with OrbStack (Docker Compose)**:
    ```bash
    docker compose up -d
    ```
    This command will build and start the services defined in `docker-compose.yml` using OrbStack's Docker runtime.

5.  **Access the application**:
    Once the services are up and running, the application should be accessible via `NEXTAUTH_URL` (e.g., `http://localhost:3000`) in your web browser.

## Project Structure

*   `.env`: Environment variables for the project (ignored by Git).
*   `.env.example`: Example environment variables.
*   `docker-compose.yml`: Defines the services for the application, including MeiliSearch and potentially other components.
*   `data/`: Directory for persistent data (e.g., databases, MeiliSearch data).

---
Enjoy using KaraKeep!

