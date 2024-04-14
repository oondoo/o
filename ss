//profile-title: base64:Q2FsbSBEb3duIPCfkpnwn4yz4piY77iP8J+SmQ==
//profile-update-interval: 7
//subscription-userinfo: upload=0; download=0; total=10737418240000000; expire=0
vless://9cd6e660-fa72-415d-a60d-64aa16574ab0@172.66.213.38:8080?path=%2F&security=none&encryption=none&host=EnRheo.BALe.Bio&type=ws#%40server_housing03-All
d2FycDovLzE4OC4xMTQuOTguMjI0Ojk4Ny8/aWZwPTUtMTAmJmRldG91cj1oeTI6Ly92cG54d0AyMTcuMTk2LjEwNi43MDozMzAwMy8/aW5zZWN1cmU9MSZzbmk9d3d3LnNwZWVkdGVzdC5uZXQmb2Jmcz1zYWxhbWFuZGVyJm9iZnMtcGFzc3dvcmQ9dnBueHcjVlBOLVhXLkhZMvCfh7jwn4eq
d2FycDovLzE4OC4xMTQuOTguMjI0Ojk4Ny8/aWZwPTUtMTAmJmRldG91cj10dWljOi8vN2U0NDk2MWYtYzFjNy00ODljLTk2NTQtNThmN2Q0YWY2NzkxOnh3dnBub0AyMTcuMTk2LjEwNi43MDoyOTAxNC8/Y29uZ2VzdGlvbl9jb250cm9sPWJiciZ1ZHBfcmVsYXlfbW9kZT1uYXRpdmUmYWxwbj1oMyUyQ3NwZHklMkYzLjEmYWxsb3dfaW5zZWN1cmU9MSNWUE4tWFcuVFVJQ/Cfh7jwn4eq
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
        "domain": "cp.cloudflare.com",
        "server": "dns-remote",
        "rewrite_ttl": 3000
      }
    ],
    "final": "dns-remote",
    "static_ips": {
      "sky.rethinkdns.com": [
        "188.114.96.0",
        "188.114.97.0",
        "2a06:98c1:3121::",
        "2a06:98c1:3120::",
        "104.18.203.232",
        "104.18.202.232",
        "172.64.194.29",
        "172.64.195.29",
        "2606:4700:e6::ac40:c31d",
        "2606:4700:e6::ac40:c21d"
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
        "WARP § 0",
        "🇫🇷VPNXW § 1"
      ],
      "default": "auto"
    },
    {
      "type": "urltest",
      "tag": "auto",
      "outbounds": [
        "WARP § 0",
        "🇫🇷VPNXW § 1"
      ],
      "url": "http://cp.cloudflare.com/",
      "interval": "10m0s",
      "idle_timeout": "1h40m0s"
    },
    {
      "type": "wireguard",
      "tag": "WARP § 0",
      "local_address": [
        "172.16.0.2/24",
        "2606:4700:110:816c:cb4f:1429:550:6b87/128"
      ],
      "private_key": "UDmB4qMLQX/NSPKEg6UpMOpcOVZFrMhx5LkOAA/RjGk=",
      "server": "188.114.98.224",
      "server_port": 987,
      "peer_public_key": "bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=",
      "reserved": "AAAA",
      "mtu": 1280,
      "fake_packets": "5-10",
      "fake_packets_size": "40-100",
      "fake_packets_delay": "20-250"
    },
    {
      "type": "hysteria2",
      "tag": "🇫🇷VPNXW § 1",
      "detour": "WARP § 0",
      "server": "51.159.77.153",
      "server_port": 33390,
      "password": "dongtaiwang.com",
      "tls": {
        "enabled": true,
        "server_name": "www.speedtest.net",
        "insecure": true
      }
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
      "secret": "1y0yiWSb9pCjdo1U"
    }
  }
}
