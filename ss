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
        "address": "https://8.8.8.8/dns-query",
        "address_resolver": "direct-dns",
        "detour": "Internet"
      },
      {
        "tag": "Best Latency-dns",
        "address": "https://8.8.8.8/dns-query",
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
  "inbounds": [
    {
      "type": "tun",
      "tag": "tun-in",
      "interface_name": "tun0",
      "mtu": 9000,
      "inet4_address": "172.19.0.1/30",
      "inet6_address": "fdfe:dcba:9876::1/126",
      "auto_route": true,
      "strict_route": true,
      "stack": "mixed",
      "sniff": true
    },
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
        "🇳🇱 𝐈𝐑𝐂𝐏\n@Ln2Ray § hy2+ech",
        "🇳🇱 𝐈𝐑𝐂𝐏 | 𝐢𝐩𝐯𝟔\n@Ln2Ray § hy2+ech",
        "🇳🇱 𝐈𝐑𝐂𝐏 | 𝟐\n@Ln2Ray § hy2+ech",
        "🇳🇱 𝐈𝐑𝐂𝐏 | 𝟐 | 𝐢𝐩𝐯𝟔\n@Ln2Ray § hy2+ech",
        "🇳🇱 𝐈𝐑𝐂𝐏 | 𝟏\u0026𝟐\n@Ln2Ray § vl+ws+tls+cdn+frag",
        "🇳🇱 𝐈𝐑𝐂𝐏 | 𝟏\u0026𝟐 | 𝐢𝐩𝐯𝟔\n@Ln2Ray § vl+ws+tls+cdn+frag",
        "🇸🇪SE 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕",
        "🇸🇪SE 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare § vl+ws+tls+cdn+frag",
        "🇫🇮FI 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕",
        "🇫🇮FI 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 𝐢𝐩𝐯𝟔",
        "🇫🇮FI 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 vl+ws+tls+cdn+frag",
        "🇫🇮FI 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 𝐢𝐩𝐯𝟔 vl+ws+tls+cdn+frag",
        "🇦🇹AT 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕",
        "🇦🇹AT 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 𝐢𝐩𝐯𝟔",
        "🇦🇹AT 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 vl+ws+tls+cdn+frag",
        "🇦🇹AT 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 𝐢𝐩𝐯𝟔 vl+ws+tls+cdn+frag",
        "🇳🇱 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare",
        "🇳🇱 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare § 0",
        "🇳🇱 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 | 𝐢𝐩𝐯𝟔\n@azadi_az_inja_migzare",
        "🇺🇸 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare",
        "🇺🇸 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare § 0",
        "🇺🇸 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 | 𝐢𝐩𝐯𝟔\n@azadi_az_inja_migzare",
        "🇦🇺 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare",
        "🇦🇺 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 | 𝟐\n@azadi_az_inja_migzare"
       
      ]
    },
    {
      "type": "urltest",
      "tag": "Best Latency",
      "outbounds": [
      	"🇳🇱 𝐈𝐑𝐂𝐏\n@Ln2Ray § hy2+ech",
        "🇳🇱 𝐈𝐑𝐂𝐏 | 𝐢𝐩𝐯𝟔\n@Ln2Ray § hy2+ech",
        "🇳🇱 𝐈𝐑𝐂𝐏 | 𝟐\n@Ln2Ray § hy2+ech",
        "🇳🇱 𝐈𝐑𝐂𝐏 | 𝟐 | 𝐢𝐩𝐯𝟔\n@Ln2Ray § hy2+ech",
        "🇳🇱 𝐈𝐑𝐂𝐏 | 𝟏\u0026𝟐\n@Ln2Ray § vl+ws+tls+cdn+frag",
        "🇳🇱 𝐈𝐑𝐂𝐏 | 𝟏\u0026𝟐 | 𝐢𝐩𝐯𝟔\n@Ln2Ray § vl+ws+tls+cdn+frag",
        "🇸🇪SE 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕",
        "🇸🇪SE 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare § vl+ws+tls+cdn+frag",
        "🇫🇮FI 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕",
        "🇫🇮FI 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 𝐢𝐩𝐯𝟔",
        "🇫🇮FI 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 vl+ws+tls+cdn+frag",
        "🇫🇮FI 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 𝐢𝐩𝐯𝟔 vl+ws+tls+cdn+frag",
        "🇦🇹AT 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕",
        "🇦🇹AT 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 𝐢𝐩𝐯𝟔",
        "🇦🇹AT 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 vl+ws+tls+cdn+frag",
        "🇦🇹AT 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 𝐢𝐩𝐯𝟔 vl+ws+tls+cdn+frag",
        "🇳🇱 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare",
        "🇳🇱 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare § 0",
        "🇳🇱 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 | 𝐢𝐩𝐯𝟔\n@azadi_az_inja_migzare",
        "🇺🇸 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare",
        "🇺🇸 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare § 0",
        "🇺🇸 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 | 𝐢𝐩𝐯𝟔\n@azadi_az_inja_migzare",
        "🇦🇺 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare",
        "🇦🇺 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 | 𝟐\n@azadi_az_inja_migzare"
      ],
      "url": "http://www.google.com/generate_204",
      "interval": "10m0s",
      "tolerance": 50,
      "idle_timeout": "30m0s"
    },
    {
      "type": "hysteria2",
      "tag": "🇳🇱 𝐈𝐑𝐂𝐏\n@Ln2Ray § hy2+ech",
      "server": "193.38.54.48",
      "server_port": 443,
      "obfs": {
        "type": "salamander",
        "password": "@ln2ray-5bdf790f-0af2-4481-a624-41b66e7e3489"
      },
      "password": "@ln2ray-5bdf790f-0af2-4481-a624-41b66e7e3489",
      "tls": {
        "enabled": true,
        "server_name": "let-him-cook.ircp.online",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACCc2kqEYGusiYc5fj1smMpQJYQLckpS1bgOaCDLvoiofgAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇳🇱 𝐈𝐑𝐂𝐏 | 𝐢𝐩𝐯𝟔\n@Ln2Ray § hy2+ech",
      "server": "2a09:7c44:0:14::1",
      "server_port": 443,
      "obfs": {
        "type": "salamander",
        "password": "@ln2ray-5bdf790f-0af2-4481-a624-41b66e7e3489"
      },
      "password": "@ln2ray-5bdf790f-0af2-4481-a624-41b66e7e3489",
      "tls": {
        "enabled": true,
        "server_name": "let-him-cook.ircp.online",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACCc2kqEYGusiYc5fj1smMpQJYQLckpS1bgOaCDLvoiofgAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },

    {
      "type": "hysteria2",
      "tag": "🇳🇱 𝐈𝐑𝐂𝐏 | 𝟐\n@Ln2Ray § hy2+ech",
      "server": "37.221.127.169",
      "server_port": 443,
      "obfs": {
        "type": "salamander",
        "password": "@ln2ray-5bdf790f-0af2-4481-a624-41b66e7e3489-2"
      },
      "password": "@ln2ray-5bdf790f-0af2-4481-a624-41b66e7e3489-2",
      "tls": {
        "enabled": true,
        "server_name": "let-her-cook.ircp.online",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACDEm4x9dlkKtLblXP7y0ZjKr7g6DdP2WaOgIjI6ujcnTQAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇳🇱 𝐈𝐑𝐂𝐏 | 𝟐 | 𝐢𝐩𝐯𝟔\n@Ln2Ray § hy2+ech",
      "server": "2a09:7c44:0:13::1",
      "server_port": 443,
      "obfs": {
        "type": "salamander",
        "password": "@ln2ray-5bdf790f-0af2-4481-a624-41b66e7e3489-2"
      },
      "password": "@ln2ray-5bdf790f-0af2-4481-a624-41b66e7e3489-2",
      "tls": {
        "enabled": true,
        "server_name": "let-her-cook.ircp.online",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACDEm4x9dlkKtLblXP7y0ZjKr7g6DdP2WaOgIjI6ujcnTQAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
    
    {
      "type": "vless",
      "tag": "🇳🇱 𝐈𝐑𝐂𝐏 | 𝟏\u0026𝟐\n@Ln2Ray § vl+ws+tls+cdn+frag",
      "tls_fragment": {
        "enabled": true,
        "size": "10-20",
        "sleep": "0"
      },
      "server": "188.114.96.12",
      "server_port": 443,
      "uuid": "5bdf790f-0af2-4481-a624-41b66e7e3489",
      "tls": {
        "enabled": true,
        "server_name": "cdn.ircp.online",
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
        "path": "/@ln2ray",
        "headers": {
          "Host": "cdn.ircp.online"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "🇳🇱 𝐈𝐑𝐂𝐏 | 𝟏\u0026𝟐 | 𝐢𝐩𝐯𝟔\n@Ln2Ray § vl+ws+tls+cdn+frag",
      "tls_fragment": {
        "enabled": true,
        "size": "10-20",
        "sleep": "0"
      },
      "server": "2a06:98c1:3121::c",
      "server_port": 443,
      "uuid": "5bdf790f-0af2-4481-a624-41b66e7e3489",
      "tls": {
        "enabled": true,
        "server_name": "cdn.ircp.online",
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
        "path": "/@ln2ray",
        "headers": {
          "Host": "cdn.ircp.online"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "hysteria2",
      "tag": "🇸🇪SE 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕",
      "server": "85.224.36.164",
      "server_port": 443,
      "obfs": {
        "type": "salamander",
        "password": "@azadi_az_inja_migzare"
      },
      "password": "zCBVQV9M9YGd",
      "tls": {
        "enabled": true,
        "server_name": "sahand.seyed-ali-khamenei-binamous.site",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
        	"-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACDg4EJndExgiJsI56wNbuVMgAV90eAL7cDXrs1g+VSqSAAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
     
     {
      "type": "vless",
      "tag": "🇸🇪SE 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare § vl+ws+tls+cdn+frag",
      "tls_fragment": {
        "enabled": true,
        "size": "10-20",
        "sleep": "0"
      },
      "server": "188.114.96.12",
      "server_port": 443,
      "uuid": "29cf96e6-8008-4233-a883-4b5daeb72309",
      "tls": {
        "enabled": true,
        "server_name": "helloworld.seyed-ali-khamenei-binamous.site",
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
        "path": "/@azadi_az_inja_migzare",
        "headers": {
          "Host": "helloworld.seyed-ali-khamenei-binamous.site"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "hysteria2",
      "tag": "🇫🇮FI 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕",
      "server": "37.27.40.21",
      "server_port": 443,
      "obfs": {
        "type": "salamander",
        "password": "tVHUA6na0Cyu"
      },
      "password": "https://t.me/javidnamanIran",
      "tls": {
        "enabled": true,
        "server_name": "alborz.seyed-ali-khamenei-binamous.site",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
       		"-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACDFjn9bYsyxCVBoOlDicUgxNykCK9UufM7XhMoot6uDIQAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇫🇮FI 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 𝐢𝐩𝐯𝟔",
      "server": "2a01:4f9:c012:cece::1",
      "server_port": 443,
      "obfs": {
        "type": "salamander",
      "password": "tVHUA6na0Cyu"
      },
      "password": "https://t.me/javidnamanIran",
      "tls": {
        "enabled": true,
        "server_name": "alborz.seyed-ali-khamenei-binamous.site",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
          "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACDFjn9bYsyxCVBoOlDicUgxNykCK9UufM7XhMoot6uDIQAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
            ]
        }
      }
    },
    {
      "type": "vless",
      "tag": "🇫🇮FI 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 vl+ws+tls+cdn+frag",
      "tls_fragment": {
        "enabled": true,
        "size": "10-20",
        "sleep": "0"
      },
      "server": "188.114.96.12",
      "server_port": 443,
      "uuid": "ba4f3a16-6294-47ef-94b8-1f7ac93c68b9",
      "tls": {
        "enabled": true,
        "server_name": "duckngo.seyed-ali-khamenei-binamous.site",
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
        "path": "/@azadi_az_inja_migzare",
        "headers": {
          "Host": "duckngo.seyed-ali-khamenei-binamous.site"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "🇫🇮FI 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 𝐢𝐩𝐯𝟔 vl+ws+tls+cdn+frag",
      "tls_fragment": {
        "enabled": true,
        "size": "10-20",
        "sleep": "0"
      },
      "server": "2a01:4f9:c012:cece::1",
      "server_port": 443,
      "uuid": "ba4f3a16-6294-47ef-94b8-1f7ac93c68b9",
      "tls": {
        "enabled": true,
        "server_name": "duckngo.seyed-ali-khamenei-binamous.site",
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
        "path": "/@azadi_az_inja_migzare",
        "headers": {
          "Host": "duckngo.seyed-ali-khamenei-binamous.site"
        }
      },
      "packet_encoding": "xudp"
    },
    
    
    {
      "type": "hysteria2",
      "tag": "🇦🇹AT 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕",
      "server": "5.181.21.84",
      "server_port": 443,
      "obfs": {
        "type": "salamander",
        "password": "FBrEbtKlW48Z"
      },
      "password": "@azadi_az_inja_migzare",
      "tls": {
        "enabled": true,
        "server_name": "sabalan.seyed-ali-khamenei-binamous.site",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
       		 "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACDPkwcped6BMFIzNJOhtAFxKRtW31aVNjMh8TgHuksEfAAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇦🇹AT 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 𝐢𝐩𝐯𝟔",
      "server": "2a13:6305:0:6::1",
      "server_port": 443,
      "obfs": {
        "type": "salamander",
      "password": "FBrEbtKlW48Z"
      },
      "password": "@azadi_az_inja_migzare",
      "tls": {
        "enabled": true,
        "server_name": "sabalan.seyed-ali-khamenei-binamous.site",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACDPkwcped6BMFIzNJOhtAFxKRtW31aVNjMh8TgHuksEfAAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
            ]
        }
      }
    },
    
     {
      "type": "vless",
      "tag": "🇦🇹AT 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 vl+ws+tls+cdn+frag",
      "tls_fragment": {
        "enabled": true,
        "size": "10-20",
        "sleep": "0"
      },
      "server": "188.114.96.12",
      "server_port": 443,
      "uuid": "4f5f38f2-e659-4901-976b-13fa54544bd6",
      "tls": {
        "enabled": true,
        "server_name": "pathfinder.seyed-ali-khamenei-binamous.site",
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
        "path": "/https://t.me/javidnamaniran",
        "headers": {
          "Host": "pathfinder.seyed-ali-khamenei-binamous.site"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "🇦🇹AT 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 𝐢𝐩𝐯𝟔 vl+ws+tls+cdn+frag",
      "tls_fragment": {
        "enabled": true,
        "size": "10-20",
        "sleep": "0"
      },
      "server": "2a06:98c1:3121::c",
      "server_port": 443,
      "uuid": "4f5f38f2-e659-4901-976b-13fa54544bd6",
      "tls": {
        "enabled": true,
        "server_name": "pathfinder.seyed-ali-khamenei-binamous.site",
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
        "path": "/https://t.me/javidnamaniran",
        "headers": {
          "Host": "pathfinder.seyed-ali-khamenei-binamous.site"
        }
      },
      "packet_encoding": "xudp"
    },
    
    {
      "type": "hysteria2",
      "tag": "🇳🇱 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare",
      "server": "188.166.43.138",
      "server_port": 443,
      "obfs": {
        "type": "salamander",
        "password": "Kh4meNeIGetL0stFromIran2024"
      },
      "password": "b947d658-8140-4ea0-ba18-23a6d48788bb",
      "tls": {
        "enabled": true,
        "server_name": "dgtlocn-nl.hideandsurf.com",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACBi/mj/3n7AqtnENy7dYtjEAIc21UWexNzeTtTEVoarAQAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
    {
      "type": "vless",
      "tag": "🇳🇱 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare § 0",
      "tls_fragment": {
        "enabled": true,
        "size": "10-20",
        "sleep": "0"
      },
      "server": "188.114.96.12",
      "server_port": 443,
      "uuid": "b947d658-8140-4ea0-ba18-23a6d48788bb",
      "tls": {
        "enabled": true,
        "server_name": "dgtlocn-nl-cdn.hideandsurf.com",
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
        "path": "/Kh4meNeIGetL0stFromIran2024",
        "headers": {
          "Host": "dgtlocn-nl-cdn.hideandsurf.com"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "🇳🇱 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 | 𝐢𝐩𝐯𝟔\n@azadi_az_inja_migzare",
      "tls_fragment": {
        "enabled": true,
        "size": "10-20",
        "sleep": "0"
      },
      "server": "2a06:98c1:3121::c",
      "server_port": 443,
      "uuid": "b947d658-8140-4ea0-ba18-23a6d48788bb",
      "tls": {
        "enabled": true,
        "server_name": "dgtlocn-nl-cdn.hideandsurf.com",
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
        "path": "/Kh4meNeIGetL0stFromIran2024",
        "headers": {
          "Host": "dgtlocn-nl-cdn.hideandsurf.com"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "hysteria2",
      "tag": "🇺🇸 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare",
      "server": "24.199.84.113",
      "server_port": 443,
      "obfs": {
        "type": "salamander",
        "password": "Kh4meNeIGetL0stFromIran2024"
      },
      "password": "b947d658-8140-4ea0-ba18-23a6d48788bb",
      "tls": {
        "enabled": true,
        "server_name": "freedom.hideandsurf.com",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACD1ixEyxjexM4m9OTmxqKaX2mYZdyj9RtrbnOqit1mABQAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
    {
      "type": "vless",
      "tag": "🇺🇸 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare § 0",
      "tls_fragment": {
        "enabled": true,
        "size": "10-20",
        "sleep": "0"
      },
      "server": "188.114.96.12",
      "server_port": 443,
      "uuid": "b947d658-8140-4ea0-ba18-23a6d48788bb",
      "tls": {
        "enabled": true,
        "server_name": "iran.hideandsurf.com",
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
        "path": "/Kh4meNeIGetL0stFromIran2024",
        "headers": {
          "Host": "iran.hideandsurf.com"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "🇺🇸 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 | 𝐢𝐩𝐯𝟔\n@azadi_az_inja_migzare",
      "tls_fragment": {
        "enabled": true,
        "size": "10-20",
        "sleep": "0"
      },
      "server": "2a06:98c1:3121::c",
      "server_port": 443,
      "uuid": "b947d658-8140-4ea0-ba18-23a6d48788bb",
      "tls": {
        "enabled": true,
        "server_name": "iran.hideandsurf.com",
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
        "path": "/Kh4meNeIGetL0stFromIran2024",
        "headers": {
          "Host": "iran.hideandsurf.com"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "hysteria2",
      "tag": "🇦🇺 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕\n@azadi_az_inja_migzare",
      "server": "152.69.179.155",
      "server_port": 443,
      "obfs": {
        "type": "salamander",
        "password": "azadi1"
      },
      "password": "azadi1",
      "tls": {
        "enabled": true,
        "server_name": "azadi1.dgi000.store",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACB4u436hfAkDe/FpuMFekdb9tO3/BF/kP6sVFgZpiyJVQAIAAEA",
            "AQABAAMAIFstLXBxLXNpZ25hdHVyZS1zY2hlbWVzLWVuYWJsZWRdAAA=",
            "-----END ECH CONFIGS-----"
          ]
        }
      }
    },
    {
      "type": "hysteria2",
      "tag": "🇦🇺 𝐅𝐮𝐜𝐤 𝐒𝐞𝐝𝐢𝐭𝐢𝐨𝐧 𝐨𝐟 𝟏𝟑𝟓𝟕 | 𝟐\n@azadi_az_inja_migzare",
      "server": "158.179.18.187",
      "server_port": 443,
      "up_mbps": 10000,
      "down_mbps": 10000,
      "obfs": {
        "type": "salamander",
        "password": "azadi2"
      },
      "password": "azadi2",
      "tls": {
        "enabled": true,
        "server_name": "azadi2.dgi000.store",
        "alpn": "h3",
        "min_version": "1.3",
        "max_version": "1.3",
        "ech": {
          "enabled": true,
          "pq_signature_schemes_enabled": true,
          "config": [
            "-----BEGIN ECH CONFIGS-----",
            "AFf+DQBTAAAgACCkinnV7xhAgfgYMag1gZvWrsODivfQnc24kR2wTsH1RgAIAAEA",
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
      }
    ],
    "final": "Internet",
    "auto_detect_interface": true,
    "override_android_vpn": true
  },
  "experimental": {
    "cache_file": {
      "enabled": true,
      "path": "cache.db",
      "cache_id": "BamdadSepid"
    }
  }
}
