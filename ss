//profile-title: base64:Q2FsbSBEb3duIPCfkpnwn4yz4piY77iP8J+SmQ==
//profile-update-interval: 7
//subscription-userinfo: upload=0; download=0; total=10737418240000000; expire=0
//support-url: https://t.me/azadi_az_inja_migzare
{
  "log": {
    "level": "warn",
    "output": "box.log",
    "timestamp": true
  },
  "dns": {
    "servers": [
      {
        "tag": "dns-remote",
        "address": "udp://1.1.1.1",
        "address_resolver": "dns-direct"
      },
      {
        "tag": "dns-trick-direct",
        "address": "https://sky.rethinkdns.com/",
        "detour": "direct-fragment"
      },
      {
        "tag": "dns-direct",
        "address": "1.1.1.1",
        "address_resolver": "dns-local",
        "detour": "direct"
      },
      {
        "tag": "dns-local",
        "address": "local",
        "detour": "direct"
      },
      {
        "tag": "dns-block",
        "address": "rcode://success"
      }
    ],
    "rules": [
      {
        "domain": [
          "all-v4.dgi000.store",
          "h2.88981401.xyz",
          "all-v6.cybsecguru.com"
        ],
        "server": "dns-direct"
      },
      {
        "domain": "cp.cloudflare.com",
        "server": "dns-remote",
        "rewrite_ttl": 3000
      },
      {
        "rule_set": [
          "geoip-ir",
          "geosite-ir"
        ],
        "server": "dns-direct"
      }
    ],
    "final": "dns-remote",
    "static_ips": {
      "sky.rethinkdns.com": [
        "104.17.147.22",
        "104.17.148.22",
        "2a06:98c1:3120::3",
        "2a06:98c1:3121::3",
        "188.114.97.3",
        "188.114.96.3"
      ]
    },
    "independent_cache": true
  },
  "inbounds": [
    {
      "type": "mixed",
      "tag": "mixed-in",
      "listen": "127.0.0.1",
      "listen_port": 12334,
      "sniff": true,
      "sniff_override_destination": true,
      "set_system_proxy": true
    },
    {
      "type": "direct",
      "tag": "dns-in",
      "listen": "127.0.0.1",
      "listen_port": 16450
    }
  ],
  "outbounds": [
    {
      "type": "selector",
      "tag": "select",
      "outbounds": [
        "auto",
        "🇨🇭 Azadi",
        "🇩🇪 IRCP IPv6Only\n@Ln2Ray",
        "🇩🇪 JNIR IPv6Only\n@JavidnamanIran"
      ],
      "default": "auto"
    },
    {
      "type": "urltest",
      "tag": "auto",
      "outbounds": [
        "🇨🇭 Azadi",
        "🇩🇪 IRCP IPv6Only\n@Ln2Ray",
        "🇩🇪 JNIR IPv6Only\n@JavidnamanIran"
      ],
      "url": "http://connectivitycheck.gstatic.com/generate_204",
      "interval": "10m0s",
      "idle_timeout": "1h40m0s"
    },
    {
      "type": "hysteria2",
      "tag": "🇨🇭 Azadi",
      "domain_strategy": "prefer_ipv4",
      "server": "all-v4.dgi000.store",
      "server_port": 443,
      "obfs": {
        "type": "salamander",
        "password": "@azadi_az_inja_migzare"
      },
      "password": "@azadi_az_inja_migzare",
      "tls": {
        "enabled": true,
        "server_name": "all-v4.dgi000.store",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AEb+DQBCAAAgACAzj8BolIG68jc1kgCeQ2Fg2cDQcw5KvTycY6MwW6kMdAAIAAEA",
            "AQABAAMAD0E0LmRnaTAwMC5zdG9yZQAA",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇩🇪 IRCP IPv6Only\n@Ln2Ray",
      "domain_strategy": "prefer_ipv6",
      "server": "h2.88981401.xyz",
      "server_port": 443,
      "password": "yVdMahZlkkgk",
      "tls": {
        "enabled": true,
        "server_name": "hy2.55994421.xyz",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACBgC+U935o5TbXkGxia/GgQYBb3+goW2Z0l/6se3ObxZwAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
    {
      "type": "vless",
      "tag": "🇩🇪 JNIR IPv6Only\n@JavidnamanIran",
      "domain_strategy": "prefer_ipv6",
      "server": "all-v6.cybsecguru.com",
      "server_port": 44441,
      "uuid": "ec8a65ad-aafc-4095-9b8c-ea10890ca629",
      "tls": {
        "enabled": true,
        "server_name": "tile.openstreetmap.org",
        "min_version": "1.3",
        "max_version": "1.3",
        "utls": {
          "enabled": true,
          "fingerprint": "chrome"
        },
        "reality": {
          "enabled": true,
          "public_key": "h-tx4d8yBKf5Cevu1bPJZwrSxT3kCkaMESHBIofaalo",
          "short_id": "be4243"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "dns",
      "tag": "dns-out"
    },
    {
      "type": "direct",
      "tag": "direct"
    },
    {
      "type": "direct",
      "tag": "direct-fragment",
      "tls_fragment": {
        "enabled": true,
        "size": "10-30",
        "sleep": "2-8"
      }
    },
    {
      "type": "direct",
      "tag": "bypass"
    },
    {
      "type": "block",
      "tag": "block"
    }
  ],
  "route": {
    "rules": [
      {
        "rule_set": [
          "geoip-ir",
          "geosite-ir"
        ],
        "outbound": "direct"
      },
      {
        "inbound": "dns-in",
        "outbound": "dns-out"
      },
      {
        "port": 53,
        "outbound": "dns-out"
      },
      {
        "clash_mode": "Direct",
        "outbound": "direct"
      },
      {
        "clash_mode": "Global",
        "outbound": "select"
      }
    ],
    "rule_set": [
      {
        "type": "remote",
        "tag": "geoip-ir",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/hiddify/hiddify-geo/rule-set/country/geoip-ir.srs",
        "update_interval": "120h0m0s"
      },
      {
        "type": "remote",
        "tag": "geosite-ir",
        "format": "binary",
        "url": "https://raw.githubusercontent.com/hiddify/hiddify-geo/rule-set/country/geosite-ir.srs",
        "update_interval": "120h0m0s"
      }
    ],
    "final": "select",
    "auto_detect_interface": true,
    "override_android_vpn": true
  },
  "experimental": {
    "cache_file": {
      "enabled": true,
      "path": "clash.db"
    },
    "clash_api": {
      "external_controller": "127.0.0.1:16756",
      "secret": "iIbb-68VCltgcQtr"
    }
  }
}
