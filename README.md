# ansible-role-tshark

A brief description of the role goes here.

# Requirements

None

# Role Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `tshark_group` | name of group allowed to run `dumpcap(1)` | `{{ __tshark_group }}` |
| `tshark_group_members` | additional member of `tshark_group` | `{{ __tshark_group_members }}` |
| `tshark_log_dir` | directory where `tshark_group` can write to | `/var/log/tshark` |
| `tshark_package` | package name of `tshark` | `{{ __tshark_package }}` |


## Debian

| Variable | Default |
|----------|---------|
| `__tshark_group` | `wireshark` |
| `__tshark_group_members` | `[]` |
| `__tshark_package` | `tshark` |

## FreeBSD

| Variable | Default |
|----------|---------|
| `__tshark_group` | `network` |
| `__tshark_group_members` | `[]` |
| `__tshark_package` | `tshark` |

## OpenBSD

| Variable | Default |
|----------|---------|
| `__tshark_group` | `_wireshark` |
| `__tshark_group_members` | `[]` |
| `__tshark_package` | `tshark` |

## RedHat

| Variable | Default |
|----------|---------|
| `__tshark_group` | `wireshark` |
| `__tshark_group_members` | `[]` |
| `__tshark_package` | `wireshark` |

# Dependencies

None

# Example Playbook

```yaml
```

# License

```
Copyright (c) 2017 Tomoyuki Sakurai <tomoyukis@reallyenglish.com>

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
```

# Author Information

Tomoyuki Sakurai <tomoyukis@reallyenglish.com>

This README was created by [qansible](https://github.com/trombik/qansible)
