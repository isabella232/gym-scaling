# Copyright 2019 Adobe. All rights reserved.
# This file is licensed to you under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License. You may obtain a copy
# of the License at http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software distributed under
# the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR REPRESENTATIONS
# OF ANY KIND, either express or implied. See the License for the specific language
# governing permissions and limitations under the License.

IMAGE_TAG=gym-scaling
DOCKER_FILE=Dockerfile

build:
	@docker build -t $(IMAGE_TAG) -f $(DOCKER_FILE) .

run:
	@docker run -e DISPLAY=$(SCALING_DISPLAY) -ti gym-scaling:latest

train:
	@docker run -e DISPLAY=$(SCALING_DISPLAY) -ti gym-scaling:latest /bin/bash -c "python3 train_deepq.py"