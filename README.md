Description
-----------

Enables [backports](http://backports-master.debian.org/) repository for Debian.

Attributes
----------

- `node['apt_backports']['distribution']`

Defaults to `squeeze-backports`. Backports release codename suitable for your debian installation.

- `node['apt_backports']['mirror']`

Defaults to `http://backports.debian.org/debian-backports`. Backport repository mirror URI you'd like to use.


Usage
-----

Just include `apt-backports` in your node's `run_list`. Optionally specify `distribution` and `mirror`.

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[apt-backports]"
  ],
  "apt_backports": {
    "distribution": "squeeze-backports",
    "mirror": "http://YOURMIRROR.debian.org/debian-backports"
  }
}
```

License and Authors
-------------------

Author:: Arkency <dev@arkency.com>

Copyright 2013, Arkency

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
