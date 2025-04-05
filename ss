//profile-title: base64:Q2FsbSBEb3duIPCfkpnwn4yz4piY77iP8J+SmQ==
//profile-update-interval: 7
//subscription-userinfo: upload=0; download=0; total=10737418240000000; expire=0
//support-url: https://t.me/azadi_az_inja_migzare
{
  "log": {
    "disabled": true,
    "level": "panic"
  },
  "dns": {
    "servers": [
      {
        "tag": "Internet-dns",
        "address": "tcp://76.76.2.2",
        "strategy": "ipv4_only",
        "detour": "Internet"
      },
      {
        "tag": "direct-dns",
        "address": "8.8.8.8",
        "strategy": "ipv4_only",
        "detour": "direct"
      }
    ],
    "rules": [
      {
        "outbound": "any",
        "server": "direct-dns",
        "rewrite_ttl": 20
      },
      {
        "domain_regex": [
          ".*\\.ir$",
          ".*\\.xn--mgba3a4f16a$"
        ],
        "server": "direct-dns",
        "rewrite_ttl": 20
      }
    ],
    "strategy": "ipv4_only",
    "independent_cache": true
  },
  "inbounds": [
    {
      "type": "tun",
      "tag": "tun-in",
      "interface_name": "Azadi-VPN",
      "mtu": 9000,
      "address": "172.18.0.1/30",
      "auto_route": true,
      "strict_route": true,
      "route_exclude_address": [
        "192.168.0.0/16",
        "fc00::/7"
      ],
      "stack": "mixed",
      "domain_strategy": "ipv4_only"
    }
  ],
  "outbounds": [
    {
      "type": "selector",
      "tag": "Internet",
      "outbounds": [
        "Best Latency",
        "🇨🇭 𝐘𝐀𝐏𝐂-1\n@azadi_az_inja_migzare",
        "🇨🇭 𝐘𝐀𝐏𝐂-1-IPv6\n@azadi_az_inja_migzare",
        "🇨🇭 𝐘𝐀𝐏𝐂-2\n@azadi_az_inja_migzare",
        "🇳🇱 IRCP\n@Ln2Ray",
        "🇩🇪 JNIR-IPv6\n@JavidnamanIran"
      ]
    },
    {
      "type": "urltest",
      "tag": "Best Latency",
      "outbounds": [
        "🇨🇭 𝐘𝐀𝐏𝐂-1\n@azadi_az_inja_migzare",
        "🇨🇭 𝐘𝐀𝐏𝐂-1-IPv6\n@azadi_az_inja_migzare",
        "🇨🇭 𝐘𝐀𝐏𝐂-2\n@azadi_az_inja_migzare",
        "🇳🇱 IRCP\n@Ln2Ray",
        "🇩🇪 JNIR-IPv6\n@JavidnamanIran"
      ],
      "url": "http://1.1.1.1/",
      "interval": "3m0s",
      "tolerance": 1,
      "idle_timeout": "9m0s"
    },
    {
      "type": "hysteria2",
      "tag": "🇨🇭 𝐘𝐀𝐏𝐂-1\n@azadi_az_inja_migzare",
      "domain_strategy": "ipv4_only",
      "server": "YAPC-1.afshin.ir",
      "server_port": 0,
      "server_ports": "35000:45000",
      "hop_interval": "30s",
      "obfs": {
        "type": "salamander",
        "password": "Yet-Another-Public-Config-1"
      },
      "password": "Yet-Another-Public-Config-1",
      "tls": {
        "enabled": true,
        "server_name": "YAPC-1.afshin.ir",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACAFoxGSyE0q9rP5MpxnApUbq9Oc4a35tfrjQ9wXEKboKwAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇨🇭 𝐘𝐀𝐏𝐂-1-IPv6\n@azadi_az_inja_migzare",
      "domain_strategy": "ipv6_only",
      "server": "YAPC-1.afshin.ir",
      "server_port": 0,
      "server_ports": "35000:45000",
      "hop_interval": "30s",
      "obfs": {
        "type": "salamander",
        "password": "Yet-Another-Public-Config-1"
      },
      "password": "Yet-Another-Public-Config-1",
      "tls": {
        "enabled": true,
        "server_name": "YAPC-1.afshin.ir",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACAFoxGSyE0q9rP5MpxnApUbq9Oc4a35tfrjQ9wXEKboKwAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
    {
      "type": "vless",
      "tag": "🇨🇭 𝐘𝐀𝐏𝐂-2\n@azadi_az_inja_migzare",
      "domain_strategy": "ipv4_only",
      "server": "YAPC-1.afshin.ir",
      "server_port": 443,
      "uuid": "7c317161-5cf8-4cbc-811a-d1297c41bb23",
      "flow": "xtls-rprx-vision",
      "tls": {
        "enabled": true,
        "server_name": "YAPC-1.afshin.ir",
        "alpn": "h2",
        "min_version": "1.3",
        "max_version": "1.3",
        "utls": {
          "enabled": true,
          "fingerprint": "randomized"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "hysteria2",
      "tag": "🇳🇱 IRCP\n@Ln2Ray",
      "domain_strategy": "ipv4_only",
      "server": "chopper.88981401.xyz",
      "server_port": 0,
      "server_ports": "35000:45000",
      "hop_interval": "10s",
      "obfs": {
        "type": "salamander",
        "password": "Telegram--\u003e@Ln2Ray"
      },
      "password": "Telegram--\u003e@Ln2Ray",
      "tls": {
        "enabled": true,
        "server_name": "chopper.55994421.xyz",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AEv+DQBHAAAgACCv/adP9Sbsji0Ksj8E4HLmKQyZGvxV6YsFXE1t1mtMLgAIAAEA",
            "AQABAAMAFGNob3BwZXIuNTU5OTQ0MjEueHl6AAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
    {
      "type": "vless",
      "tag": "🇩🇪 JNIR-IPv6\n@JavidnamanIran",
      "domain_strategy": "ipv6_only",
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
      "type": "direct",
      "tag": "direct"
    }
  ],
  "route": {
    "rules": [
      {
        "action": "sniff"
      },
      {
        "type": "logical",
        "mode": "or",
        "rules": [
          {
            "inbound": "dns-in"
          },
          {
            "port": 53
          },
          {
            "protocol": "dns"
          }
        ],
        "action": "hijack-dns"
      },
      {
        "network": "tcp",
        "port": 853,
        "action": "reject",
        "method": "default"
      },
      {
        "network": "udp",
        "port": [
          443,
          853
        ],
        "action": "reject",
        "method": "default"
      },
      {
        "ip_is_private": true,
        "outbound": "direct"
      },
      {
        "domain_regex": [
          ".*\\.ir$",
          ".*\\.xn--mgba3a4f16a$"
        ],
        "outbound": "direct"
      },
      {
        "protocol": "stun",
        "action": "reject",
        "method": "default"
      },
      {
        "source_ip_cidr": [
          "224.0.0.0/3",
          "ff00::/8"
        ],
        "ip_cidr": [
          "224.0.0.0/3",
          "ff00::/8"
        ],
        "action": "reject",
        "method": "default"
      }
    ],
    "auto_detect_interface": true,
    "override_android_vpn": true
  },
  "experimental": {
    "cache_file": {
      "enabled": true,
      "path": "cache.db",
      "cache_id": "saeed"
    },
    "clash_api": {
      "external_controller": "127.0.0.1:9090",
      "access_control_allow_origin": "https://yacd.metacubex.one",
      "access_control_allow_private_network": true
    }
  }
}
