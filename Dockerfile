#     _         _       ____    ____
#    / \   _ __(_) __ _|___ \  |  _ \ _ __ ___
#   / _ \ | '__| |/ _` | __) | | |_) | '__/ _ \
#  / ___ \| |  | | (_| |/ __/  |  __/| | | (_) |
# /_/   \_\_|  |_|\__,_|_____| |_|   |_|  \___/
#
# https://github.com/P3TERX/Aria2-Pro-Docker
#
# Copyright (c) 2020-2021 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.

FROM p3terx/aria2-pro

RUN sed -i '/dir=/d' /etc/cont-init.d/28-fix && \
    sed -i '/(dir=/d' /etc/init-base
