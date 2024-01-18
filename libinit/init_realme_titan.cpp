/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_variant.h>
#include <libinit_utils.h>
#include <unistd.h>
#include "vendor_init.h"

static const variant_info_t titan_info = {
    .hwc_value = "",
    .sku_value = "titan",

    .brand = "Realme",
    .device = "titan",
    .marketname = "Realme 10 Pro Plus 5G",
    .model = "RMX3686",
    .build_fingerprint = "Realme/titan/titan:12/SP1A.210812.016/1692902291560:user/release-keys"
};


static const std::vector<variant_info_t> variants = {
    titan_info
};

void vendor_load_properties() {
    if (access("/system/bin/recovery", F_OK) != 0) {
        search_variant(variants);
    }
}