# VoltroCloud Docker Images & Pterodactyl Eggs

Welcome to the official **VoltroCloud** repository for Docker images and Pterodactyl eggs! This repository contains all the necessary configurations, Dockerfiles, and JSON files used in our hosting environment.

## 📦 What's Inside?
- **Docker Images**: Custom-built images optimized for performance, security, and compatibility with Pterodactyl. All tagged package versions in this repository represent different Docker images.
- **Pterodactyl Eggs**: Pre-configured JSON files to deploy various game and application servers seamlessly.

## 🚀 How to Use

### Docker Images
1. Pull the desired image from our GitHub Container Registry (GHCR):
   ```bash
   docker pull ghcr.io/krarjan/dockerimages:21 or so
   ```
2. View all available images and tags in the **[GitHub Packages](https://github.com/KrArjan/VoltrCloud-Eggs-With-DockerImages/pkgs/container/dockerimages/versions?filters%5Bversion_type%5D=tagged)** section of this repository.
3. Use the image in your Docker environment or Pterodactyl setup.

### Pterodactyl Eggs
1. Download the JSON egg file from the `eggs/` directory.
2. Import it into your Pterodactyl panel via **Admin Panel > Nests > Import Egg**.
3. Assign the egg to a nest and deploy new servers with ease!

## 📌 Repository Structure

* [`java`](https://github.com/KrArjan/VoltrCloud-Eggs-With-DockerImages/tree/main/java/)
  * [`java8`](https://github.com/KrArjan/VoltrCloud-Eggs-With-DockerImages/tree/main/java/8)
    * `ghcr.io/krarjan/dockerimages:java_8`
  * [`java11`](https://github.com/KrArjan/VoltrCloud-Eggs-With-DockerImages/tree/main/java/11)
    * `ghcr.io/krarjan/dockerimages:java_11`
  * [`java16`](https://github.com/KrArjan/VoltrCloud-Eggs-With-DockerImages/tree/main/java/16)
    * `ghcr.io/krarjan/dockerimages:java_16`
  * [`java17`](https://github.com/KrArjan/VoltrCloud-Eggs-With-DockerImages/tree/main/java/17)
    * `ghcr.io/krarjan/dockerimages:java_17`
  * [`java18`](https://github.com/KrArjan/VoltrCloud-Eggs-With-DockerImages/tree/main/java/18)
    * `ghcr.io/krarjan/dockerimages:java_18`
  * [`java19`](https://github.com/KrArjan/VoltrCloud-Eggs-With-DockerImages/tree/main/java/19)
    * `ghcr.io/krarjan/dockerimages:java_19`
  * [`java21`](https://github.com/KrArjan/VoltrCloud-Eggs-With-DockerImages/tree/main/java/21)
    * `ghcr.io/krarjan/dockerimages:java_21`

## 🛠 Contribution
We welcome contributions! If you have improvements, feel free to open a pull request.

## 📞 Support
For any issues, contact us on **[VoltroCloud Discord](https://discord.gg/yDJRvV8Xks)** or open an issue in this repository.

---
**VoltroCloud** - Powering Next-Gen Hosting 🚀
