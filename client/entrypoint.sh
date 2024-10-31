#!/bin/bash

echo "window._env_ = {" > /usr/local/apache2/htdocs/env-config.js
echo "  REACT_APP_API_BASE_URL: '$REACT_APP_API_BASE_URL'," >> /usr/local/apache2/htdocs/env-config.js
echo "};" >> /usr/local/apache2/htdocs/env-config.js

# Start Apache
httpd-foreground
