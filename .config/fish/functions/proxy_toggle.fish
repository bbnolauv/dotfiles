function proxy_toggle
    if set -q http_proxy
        set -e http_proxy
        set -e https_proxy
        set -e all_proxy
        echo "🚫 Proxy disabled."
    else
        set -gx http_proxy "http://127.0.0.1:7897"
        set -gx https_proxy "http://127.0.0.1:7897"
        set -gx all_proxy "socks5://127.0.0.1:7897"
        echo "🌐 Proxy enabled: 127.0.0.1:7897"
    end
end
