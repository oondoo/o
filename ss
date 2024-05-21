//profile-title: base64:Q2FsbSBEb3duIPCfkpnwn4yz4piY77iP8J+SmQ==
//profile-update-interval: 7
//subscription-userinfo: upload=0; download=0; total=10737418240000000; expire=0
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
        "domain": "vlan244-221.azeronline.com",
        "server": "dns-direct"
      },
      {
        "domain": "cp.cloudflare.com",
        "server": "dns-remote",
        "rewrite_ttl": 3000
      }
    ],
    "final": "dns-remote",
    "static_ips": {
      "sky.rethinkdns.com": [
        "188.114.96.3",
        "188.114.97.3",
        "2a06:98c1:3121::3",
        "2a06:98c1:3120::3",
        "104.18.202.232",
        "104.18.203.232",
        "188.114.96.3",
        "188.114.97.3",
        "2a06:98c1:3120::3",
        "2a06:98c1:3121::3"
      ]
    },
    "independent_cache": true
  },
  "inbounds": [
    {
      "type": "tun",
      "tag": "tun-in",
      "mtu": 9000,
      "inet4_address": "172.19.0.1/28",
      "auto_route": true,
      "strict_route": true,
      "endpoint_independent_nat": true,
      "stack": "mixed",
      "sniff": true,
      "sniff_override_destination": true
    },
    {
      "type": "mixed",
      "tag": "mixed-in",
      "listen": "127.0.0.1",
      "listen_port": 2334,
      "sniff": true,
      "sniff_override_destination": true
    },
    {
      "type": "direct",
      "tag": "dns-in",
      "listen": "127.0.0.1",
      "listen_port": 6450,
      "override_address": "1.1.1.1",
      "override_port": 53
    }
  ],
  "outbounds": [
    {
      "type": "selector",
      "tag": "select",
      "outbounds": [
        "auto",
        "🇫🇮 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\nHysteria2",
        "🇫🇮 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\nVless-cdn"
      ],
      "default": "auto"
    },
    {
      "type": "urltest",
      "tag": "auto",
      "outbounds": [
        "🇫🇮 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\nHysteria2",
        "🇫🇮 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\nVless-cdn"
      ],
      "url": "http://cp.cloudflare.com/",
      "interval": "10m0s",
      "idle_timeout": "1h40m0s"
    },
    {
      "type": "hysteria2",
      "tag": "🇫🇮 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\nHysteria2",
      "domain_strategy": "ipv4_only",
      "server": "37.27.40.21",
      "server_port": 443,
      "obfs": {
        "type": "salamander",
        "password": "2X2lDkApzb07"
      },
      "password": "qeUUaVSyGo+C",
      "tls": {
        "enabled": true,
        "server_name": "alborz.hideandsurf.com",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACAFJYRCZAKXi0LALj940P/Rk9HyghmQHgA/4/NuM7uCUwAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
    {
      "type": "vless",
      "tag": "🇫🇮 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\nVless-cdn",
      "tls_fragment": {
        "enabled": true,
        "size": "10-20",
        "sleep": "0"
      },
      "server": "vlan244-221.azeronline.com",
      "server_port": 443,
      "uuid": "323f3148-db47-4f7c-a26e-50a53093c261",
      "tls": {
        "enabled": true,
        "server_name": "DuCkNGO.hIdEaNDSuRf.COm",
        "alpn": "http/1.1",
        "min_version": "1.3",
        "max_version": "1.3",
        "utls": {
          "enabled": true,
          "fingerprint": "chrome"
        }
      },
      "transport": {
        "type": "ws",
        "path": "/fJ4A1dBV",
        "headers": {
          "Host": "DuCkNGO.hIdEaNDSuRf.COm"
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
        "size": "1-500",
        "sleep": "0-500"
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
    "geoip": {
      "path": "geo-assets/sagernet-sing-geoip-geoip.db"
    },
    "geosite": {
      "path": "geo-assets/sagernet-sing-geosite-geosite.db"
    },
    "rules": [
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
      "external_controller": "127.0.0.1:6756",
      "secret": "-RJsJhTD9MOiTVr8"
    }
  }
}
