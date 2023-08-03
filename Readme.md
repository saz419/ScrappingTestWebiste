# Simple HTML Page Dockerized

This project demonstrates a simple HTML page served using Docker. The Docker image includes the `index.html` file along with any additional assets, and it uses `http-server` to serve the content on port 8080. Additionally, `localtunnel` is set up to generate a temporary public URL for external access to the page.

## Getting Started

Follow the steps below to run the simple HTML page using Docker:

### Prerequisites

- Docker: Make sure you have Docker installed on your system. You can download and install Docker from the official website: [Docker](https://www.docker.com/get-started).

### Clone the Repository

First, clone this repository to your local machine:

```bash
git clone https://github.com/your-username/simple-html-page-dockerized.git
cd simple-html-page-dockerized
```

### Run with Docker Compose

```bash
docker compose up --build
```

### Get the public IP of container to enter tunnel link

```bash
docker exec -it scrappingtestwebiste-web-1 curl ifconfig.me
```

This command will start the container and expose port 8080 on your host machine.

### Access the Page

Open your web browser and visit [http://localhost:8080](http://localhost:8080) to access the simple HTML page served by the Docker container.

### External Access (Optional)

If you want to share the page with others through a temporary public URL, you can use `localtunnel`. While the container is running, open a new terminal or command prompt window and use the following command:

```bash
docker exec -it scrappingtestwebiste-web-1 lt --port 8080
```

This command will generate a temporary public URL, which you can share with others for external access to the page.

### Stopping the Container

To stop the Docker container, press `Ctrl + C` in the terminal where the container is running. Alternatively, you can run the following command:

```bash
docker stop $(docker ps -qf "ancestor=simple-html-page")
```

## Additional Notes

- If you have any additional assets (e.g., images, CSS files, etc.) that you want to include in the Docker image, place them in the same directory as the `index.html`, and they will be copied to the container when building the image.
- The `localtunnel` URL is temporary and will expire after some time. For a more permanent solution, consider deploying the HTML page to a proper web hosting service.

## License

This project is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute it as you like.

---

Feel free to customize this README file to suit your project's specific details. You can add more sections, update the descriptions, and provide any other information that might be relevant to your project.