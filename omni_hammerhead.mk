#
# Copyright (C) 2018 Unlegacy Android Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit some common omni stuff.
$(call inherit-product-if-exists, vendor/omni/config/common.mk)

# Inherit full-base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from tf device
$(call inherit-product, device/lge/hammerhead/device.mk)

# Setup device specific product configuration.
PRODUCT_NAME   := omni_hammerhead
PRODUCT_DEVICE := hammerhead
PRODUCT_BRAND  := google
PRODUCT_MODEL  := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Device build info and fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT="google/hammerhead/hammerhead:6.0.1/M4B30X/3237893:user/release-keys" \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 M4B30X 3237893 release-keys"