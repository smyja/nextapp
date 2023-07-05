FROM node:16-alpine

# Set working directory

ENV NODE_ENV=production
# Copy package.json and package-lock.json (if available)
COPY package*.json ./


# Copy the built application files
COPY ./dist ./dist
COPY ./dist ./.next
COPY ./next.config.js ./next.config.js
COPY ./public ./public
COPY ./dist/static ./_next/static
COPY ./node_modules ./node_modules
# Expose the desired port (e.g., 3000)

EXPOSE 3000

# Start the Node.js server
CMD ["npm", "run", "start"]
