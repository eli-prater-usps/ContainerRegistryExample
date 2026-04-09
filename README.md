# ContainerRegistryExample

A barebones example of building a Docker image and pushing it to the [GitHub Container Registry (GHCR)](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry).

## How it works

1. Every push to `main` triggers the [Publish Docker Image](.github/workflows/docker-publish.yml) workflow.
2. The workflow builds the `Dockerfile` and pushes the image to:
   ```
   ghcr.io/<owner>/<repo>:latest
   ```
3. Authentication uses the built-in `GITHUB_TOKEN` — no extra secrets needed.

## Making the image publicly available

After the first workflow run the package will appear in your GitHub profile under **Packages**.  
By default it is **private**. To make it public:

1. Go to **https://github.com/users/\<owner\>/packages/container/\<repo\>/settings**  
   (replace `<owner>` and `<repo>` with your GitHub username/organization and repository name).
2. Scroll down to **Danger Zone** → **Change visibility** → select **Public** → confirm.

Once public, anyone can pull the image without authentication:

```bash
docker pull ghcr.io/<owner>/<repo>:latest
```