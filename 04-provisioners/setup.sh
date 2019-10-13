#!/bin/bash
function print_usage() {
  cat <<EOF
Installs Nginx webserver and configures to listen on specified port
Command
  $0
Arguments
  --port                   : Port to listen for HTTP requests (default: 80)
  --dns_name     [Required] : FQDN by which website will be accessed

EOF
}

function throw_if_empty() {
  local name="$1"
  local value="$2"
  if [ -z "$value" ]; then
    echo "Parameter '$name' cannot be empty." 1>&2
    print_usage
    exit 13
  fi
}

#defaults
port=80

while [[ $# -gt 0 ]]
do
  key="$1"
  shift
  case $key in
      --port)
      port="$1"
      shift
      ;;
      --dns_name )
      dns_name="$1"
      shift
      ;;

    --help|-help|-h)
      print_usage
      exit 13
      ;;
    *)
      echo "ERROR: Unknown argument '$key' to script '$0'" 1>&2
      print_usage
      exit 13
  esac
done

throw_if_empty --dns_name $dns_name

#Update OS
sudo apt-get update

#Install nginx
sudo apt-get install nginx --yes

nginx_conf=$(cat <<EOF
  server {
    listen $port;
    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;
  }
EOF
)
echo "${nginx_conf}" | sudo tee /etc/nginx/sites-enabled/default > /dev/null
#Restart nginx
sudo service nginx restart