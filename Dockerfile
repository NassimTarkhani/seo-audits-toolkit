# Use official Node.js 18 Alpine image for smaller size and stability
FROM node:18-alpine

# Enable corepack and prepare pnpm (if you use pnpm)
RUN corepack enable && corepack prepare pnpm@9.1.0 --activate

# Set working directory inside container
WORKDIR /app

# Copy all files to container
COPY . .

# Install dependencies (adjust if you use npm instead of pnpm)
RUN pnpm install

# Build the app (adjust if your app requires a build step)
RUN pnpm build

# Expose port 3000 (adjust if your app uses a different port)
EXPOSE 3000

# Start the app
CMD ["pnpm", "start"]
