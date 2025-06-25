# Updated 25 June 2025 - Reference from wordpress.org: https://make.wordpress.org/cli/handbook/installing/
FROM wordpress

# Install requirements for wp-cli support
RUN apt-get update \
  && apt-get install -y sudo less mysql-client \
  && rm -rf /var/lib/apt/lists/*

# Add WP-CLI 
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
COPY wp-cli.phar /usr/local/bin
RUN chmod +x /usr/local/bin/wp-cli.phar
