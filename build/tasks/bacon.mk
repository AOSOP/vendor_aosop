# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
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

# -----------------------------------------------------------------
# AOSP Optimized OTA update package

ifneq ($(BUILD_WITH_COLORS),0)
    include $(TOP_DIR)vendor/aosop/build/core/colors.mk
endif

OPTIMIZED_TARGET_PACKAGE := $(PRODUCT_OUT)/optimized-$(OPTIMIZED_VERSION).zip

.PHONY: bacon aosop optimized
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(OPTIMIZED_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(OPTIMIZED_TARGET_PACKAGE) > $(OPTIMIZED_TARGET_PACKAGE).md5sum

	@echo -e ${CL_RED}"                                                                                                           "${CL_RED}
	@echo -e ${CL_RED}"                                                                                                           "${CL_RED}
	@echo -e ${CL_RED}"                                                                                                           "${CL_RED}
	@echo -e ${CL_RED}"               AAA                 OOOOOOOOO        SSSSSSSSSSSSSSS      OOOOOOOOO     PPPPPPPPPPPPPPPPP   "${CL_RED}
	@echo -e ${CL_RED}"              A:::A              OO:::::::::OO    SS:::::::::::::::S   OO:::::::::OO   P::::::::::::::::P  "${CL_RED}
	@echo -e ${CL_RED}"             A:::::A           OO:::::::::::::OO S:::::SSSSSS::::::S OO:::::::::::::OO P::::::PPPPPP:::::P "${CL_RED}
	@echo -e ${CL_RED}"            A:::::::A         O:::::::OOO:::::::OS:::::S     SSSSSSSO:::::::OOO:::::::OPP:::::P     P:::::P"${CL_RED}
	@echo -e ${CL_RED}"           A:::::::::A        O::::::O   O::::::OS:::::S            O::::::O   O::::::O  P::::P     P:::::P"${CL_RED}
	@echo -e ${CL_RED}"          A:::::A:::::A       O:::::O     O:::::OS:::::S            O:::::O     O:::::O  P::::P     P:::::P"${CL_RED}
	@echo -e ${CL_RED}"         A:::::A A:::::A      O:::::O     O:::::O S::::SSSS         O:::::O     O:::::O  P::::PPPPPP:::::P "${CL_RED}
	@echo -e ${CL_RED}"        A:::::A   A:::::A     O:::::O     O:::::O  SS::::::SSSSS    O:::::O     O:::::O  P:::::::::::::PP  "${CL_RED}
	@echo -e ${CL_RED}"       A:::::A     A:::::A    O:::::O     O:::::O    SSS::::::::SS  O:::::O     O:::::O  P::::PPPPPPPPP    "${CL_RED}
	@echo -e ${CL_RED}"      A:::::AAAAAAAAA:::::A   O:::::O     O:::::O       SSSSSS::::S O:::::O     O:::::O  P::::P            "${CL_RED}
	@echo -e ${CL_RED}"     A:::::::::::::::::::::A  O:::::O     O:::::O            S:::::SO:::::O     O:::::O  P::::P            "${CL_RED}
	@echo -e ${CL_RED}"    A:::::AAAAAAAAAAAAA:::::A O::::::O   O::::::O            S:::::SO::::::O   O::::::O  P::::P            "${CL_RED}
	@echo -e ${CL_RED}"   A:::::A             A:::::AO:::::::OOO:::::::OSSSSSSS     S:::::SO:::::::OOO:::::::OPP::::::PP          "${CL_RED}
	@echo -e ${CL_RED}"  A:::::A               A:::::AOO:::::::::::::OO S::::::SSSSSS:::::S OO:::::::::::::OO P::::::::P          "${CL_RED}
	@echo -e ${CL_RED}" A:::::A                 A:::::A OO:::::::::OO   S:::::::::::::::SS    OO:::::::::OO   P::::::::P          "${CL_RED}
	@echo -e ${CL_RED}"AAAAAAA                   AAAAAAA  OOOOOOOOO      SSSSSSSSSSSSSSS        OOOOOOOOO     PPPPPPPPPP          "${CL_RED}
	@echo -e ${CL_RED}"                                                                                                           "${CL_RED}
	@echo -e ${CL_RED}"                                                                                                           "${CL_RED}
	@echo -e ${CL_GRN}"                                      BE OPTIMIZED                                                         "${CL_GRN}
	@echo -e ${CL_GRN}"                                  BUILD IS READY TO USE                                                    "${CL_GRN}
	@echo -e ${CL_GRN}"$(OPTIMIZED_TARGET_PACKAGE)                                                                                "${CL_GRN}
	@echo -e ${CL_GRN}"Enjoy The Optimized ROM $(OPTIMIZED_BUILD_TYPE) build                                                      "${CL_GRN}

optimized: bacon

aosop: bacon
