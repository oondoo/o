//profile-title: base64:Q2FsbSBEb3duIPCfkpnwn4yz4piY77iP8J+SmQ==
//profile-update-interval: 7
//subscription-userinfo: upload=0; download=0; total=10737418240000000; expire=0
{
  "log": {
    "disabled": true,
    "level": "panic"
  },
  "dns": {
    "servers": [
      {
        "tag": "Internet-dns",
        "address": "https://94.140.14.14/dns-query",
        "address_resolver": "direct-dns",
        "detour": "Internet"
      },
      {
        "tag": "Best Latency-dns",
        "address": "https://94.140.14.14/dns-query",
        "address_resolver": "direct-dns",
        "detour": "Best Latency"
      },
      {
        "tag": "direct-dns",
        "address": "local",
        "detour": "direct"
      },
      {
        "tag": "block-dns",
        "address": "rcode://success"
      }
    ],
    "rules": [
      {
        "domain_suffix": "",
        "server": "direct-dns",
        "rewrite_ttl": 20
      },
      {
        "outbound": "Internet",
        "server": "Internet-dns",
        "rewrite_ttl": 20
      },
      {
        "outbound": "Best Latency",
        "server": "Best Latency-dns",
        "rewrite_ttl": 20
      },
      {
        "outbound": "direct",
        "server": "direct-dns",
        "rewrite_ttl": 20
      },
      {
        "outbound": "any",
        "server": "direct-dns",
        "rewrite_ttl": 20
      }
    ],
    "disable_expire": true
  },
  "ntp": {
    "enabled": true,
    "server": "ir.pool.ntp.org",
    "server_port": 123,
    "interval": "30m0s",
    "detour": "direct"
  },
  "inbounds": [
    
    {
      "type": "mixed",
      "tag": "mixed-in",
      "listen": "0.0.0.0",
      "listen_port": 2080,
      "sniff": true
    }
  ],
  "outbounds": [
    {
      "type": "selector",
      "tag": "Internet",
      "outbounds": [
        "Best Latency",
        "🇫🇮 𝐇𝐲𝐬𝐭𝐞𝐫𝐢𝐚"
      ]
    },
    {
      "type": "urltest",
      "tag": "Best Latency",
      "outbounds": [
        "🇫🇮 𝐇𝐲𝐬𝐭𝐞𝐫𝐢𝐚"
      ],
      "url": "http://www.google.com/generate_204",
      "interval": "10m0s",
      "tolerance": 50,
      "idle_timeout": "30m0s"
    },
    {
      "type": "hysteria2",
      "tag": "🇫🇮 𝐇𝐲𝐬𝐭𝐞𝐫𝐢𝐚",
      "server": "37.27.84.192", 
      "server_port": 443,
      "up_mbps": 0, 
      "down_mbps": 0,
      "obfs": {
        "type": "salamander",
        "password": "EmdBRojW+aXe"
      },
      "password": "zjc+LBaCD7Jh",
      "tls": {
        "enabled": true,
        "insecure": false,
        "server_name": "candyman.segaro.tech", 
        "alpn": [
          "h3"
        ],
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "dynamic_record_sizing_disabled": false,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACBd19FN7R9Ncqwf60ePhvYvxOcrGijnB3hqacu8BmUbdgAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
   {
      "type": "direct",
      "tag": "direct"
    },
    {
      "type": "block",
      "tag": "block"
    },
    {
      "type": "dns",
      "tag": "dns-out"
    }
  ],
  "route": {
    "rules": [
      {
        "port": 53,
        "outbound": "dns-out"
      },
      {
        "ip_is_private": true,
        "outbound": "direct"
      },
      {
        "rule_set": "geosite-all",
        "outbound": "direct"
      },
      {
        "rule_set": "geosite-ads",
        "outbound": "block"
      },
      {
        "rule_set": "geosite-proxy",
        "outbound": "Internet"
      }
    ],
    "rule_set": [
      {
        "type": "remote",
        "tag": "geosite-all",
        "format": "binary",
        "url": "https://github.com/bootmortis/sing-geosite/releases/latest/download/geosite-all.srs"
      },
      {
        "type": "remote",
        "tag": "geosite-ads",
        "format": "binary",
        "url": "https://github.com/bootmortis/sing-geosite/releases/latest/download/geosite-ads.srs"
      },
      {
        "type": "remote",
        "tag": "geosite-proxy",
        "format": "binary",
        "url": "https://github.com/bootmortis/sing-geosite/releases/latest/download/geosite-proxy.srs"
      }
    ],
    "final": "Internet",
    "auto_detect_interface": true,
    "override_android_vpn": true
  }
}
