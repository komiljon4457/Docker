#!/bin/bash
MAIN_PAGE=/usr/share/nginx/html/index.html
export DEVOPS=$(whoami)
ENV=$(printenv)

function env() {
    cat > $MAIN_PAGE << EOF
    <!DOCTYPE html>
        <html>
          <head>
             <title>Docker</title>
          </head>
          <body>
          <pre>
          <h1> HELLO WORLD </h1>
          <h1> Environment Variables </h1>
          <pre> $ENV </pre>
          </body>
        </html>
EOF
}

env
