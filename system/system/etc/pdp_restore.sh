#!/system/bin/sh
# Copyright (c) 2016, Samsung Electronics Co., Ltd.

# PDP : Preloaded-Data Preservation

# Unzip & un-tar
if [[ -f /cache/pdp_bkup/pdp_bkup.tar.zip ]]; then
  echo "[PDP] [pdp_res____.s_]  un-zip ap___apk_.t__.zip to /d /pd" > /dev/kmsg
  /system/bin/unzip /cache/pdp_bkup/pdp_bkup.tar.zip -d /data/pdp_bkup/
else
  echo "[PDP] [pdp_res____.s_]  !!! something is wrong !!  there is no PDP backup file" > /dev/kmsg
fi

if [[ -f /data/pdp_bkup/apps_apks.tar ]]; then
  echo "[PDP] [pdp_res____.s_]  un-tar ap___apk_.t__ to /d /a__" > /dev/kmsg
  /system/bin/tar -xpf /data/pdp_bkup/apps_apks.tar -C /data
else
  echo "[PDP] [pdp_res____.s_]  !!! something is wrong !!  ap___apk_.t__ file is not exist" > /dev/kmsg
fi


# RAM-loading files
if [[ -f /data/pdp_bkup/pdp_ssapps.tar.gz ]]; then
  echo "[PDP] [pdp_res____.s_]  gunzip & un-tar pdp_ssapps.t__.g_ to /d /a__" > /dev/kmsg
  /system/bin/tar -zxpf /data/pdp_bkup/pdp_ssapps.tar.gz -C /data
else
  echo "[PDP] [pdp_res____.s_]  Not found pdp_ssapps.t__.g_ " > /dev/kmsg
fi

if [[ -f /data/pdp_bkup/pdp_ggapps.tar.gz ]]; then
  echo "[PDP] [pdp_res____.s_]  gunzip & un-tar pdp_ggapps.t__.g_ to /d /a__" > /dev/kmsg
  /system/bin/tar -zxpf /data/pdp_bkup/pdp_ggapps.tar.gz -C /data
else
  echo "[PDP] [pdp_res____.s_]  Not found pdp_ggapps.t__.g_ " > /dev/kmsg
fi
# echo "[PDP] [pdp_res____.s_]  gunzip & un-tar pdp_alap__.t__.g_ to /da__/a__" > /dev/kmsg
# /system/bin/tar -zxpf /data/pdp_bkup/pdp_alapps.tar.gz -C /data


# Copy files
# -p option can preserve the additional attributes: context, links, xattr, all
echo "[PDP] [pdp_res____.s_]  mv p___bk__.t__.z__ from /c to /d" > /dev/kmsg
/system/bin/mv -f /cache/pdp_bkup/pdp_bkup.tar.zip /data/pdp_bkup/pdp_bkup.tar.zip

if [[ -f /cache/pdp_bkup/pdp_list.txt ]]; then
  echo "[PDP] [pdp_res____.s_]  mv p___li__.txt from /c to /d" > /dev/kmsg
  /system/bin/mv -f /cache/pdp_bkup/pdp_list.txt /data/pdp_bkup/pdp_list.txt
fi

# remove files
echo "[PDP] [pdp_res____.s_]  rm p___bk__.tar at /d" > /dev/kmsg
/system/bin/rm -f /data/pdp_bkup/apps_apks.tar

# echo "[PDP] [pdp_res____.s_]  rm files at /ca" > /dev/kmsg
# /system/bin/rm -f /cache/pdp_bkup/pdp_bkup.tar.gz
# /system/bin/rm -f /cache/pdp_bkup/pdp_list.txt
# /system/bin/rm -f /cache/pdp_bkup/pdp_cc_done.txt

# remove the /pdp_bkup folder at /cache : doesn't work
# echo -p i -t "[PDP] [pdp_res____.s_]  rmdir /c____/p___b___ folder" > /dev/kmsg
# /system/bin/rm -r -f /cache/pdp_bkup
