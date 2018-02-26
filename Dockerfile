# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM maven:3.5-jdk-8-slim

RUN apt-get update -q -y \
  && apt-get install -y --no-install-recommends \
    curl \
    git \
    make \
    python-setuptools \
    python2.7 \
    python2.7-dev \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/bin/bash" ]
