FROM ubuntu


# Set working directory
WORKDIR /var/www

USER root

# Install dependencies
RUN apt-get update && apt-get install -y \
    nodejs

RUN apt-get update && apt-get install -y \
    npm

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*


# Copy existing application directory contents
COPY . /var/www

#RUN useradd www
RUN chown www:www /var/www

#
#CMD ['chown', 'www:www /var/www']
