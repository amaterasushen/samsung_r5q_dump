#!/system/bin/sh
# Copyright (c) 2016, Samsung Electronics Co., Ltd.

# PDP : Preloaded-Data Preservation

# Unzip & un-tar
if [[ -f /data/pdp_bkup/apps_apks.tar.zip ]]; then
  echo "[PDP] [pdp_prep___fb_.s_]  un-zip ap___apk_.t__.z__ to /d /pd" > /dev/kmsg
  /system/bin/unzip /data/pdp_bkup/apps_apks.tar.zip -d /data/pdp_bkup/
else
  echo "[PDP] [pdp_prep___fb_.s_]  !!! something is wrong !!  there is no PDP backup file" > /dev/kmsg
fi

if [[ -f /data/pdp_bkup/apps_apks.tar ]]; then
  echo "[PDP] [pdp_prep___fb_.s_]  un-tar ap___apk_.t__ to /d /a__" > /dev/kmsg
  /system/bin/tar -xpf /data/pdp_bkup/apps_apks.tar -C /data
else
  echo "[PDP] [pdp_prep___fb_.s_]  !!! something is wrong !!  ap___apk_.t__ file is not exist" > /dev/kmsg
fi

if [[ -f /data/pdp_bkup/apps_apks.zip ]]; then
  echo "[PDP] [pdp_prepare_fbe.sh]  un-zip ap___apk_.z__ to /d /a__" > /dev/kmsg
  /system/bin/unzip /data/pdp_bkup/apps_apks.zip -d /data

  find /data/app/ -type d -exec chmod -v 771 {} \;
  find /data/app/ -type f -exec chmod -v 771 {} \;
fi


if [[ -f /data/pdp_bkup/pdp_ssapps.tar.gz ]]; then
  echo "[PDP] [pdp_prepare_fbe.sh]  gunzip & un-tar pdp_ssapps.t__.g_ to /d /a__" > /dev/kmsg
  /system/bin/tar -zxpf /data/pdp_bkup/pdp_ssapps.tar.gz -C /data
else
  echo "[PDP] [pdp_prepare_fbe.sh]  Not found pdp_ssapps.t__.g_ " > /dev/kmsg
fi

if [[ -f /data/pdp_bkup/pdp_ggapps.tar.gz ]]; then
  echo "[PDP] [pdp_prepare_fbe.sh]  gunzip & un-tar pdp_ggapps.t__.g_ to /d /a__" > /dev/kmsg
  /system/bin/tar -zxpf /data/pdp_bkup/pdp_ggapps.tar.gz -C /data
else
  echo "[PDP] [pdp_prepare_fbe.sh]  Not found pdp_ggapps.t__.g_ " > /dev/kmsg
fi
# echo "[PDP] pdp_prep___fb_.s_  gunzip & un-tar pdp_alap__.t__.g_ to /da__/a__" > /dev/kmsg
# /system/bin/tar -zxpf /data/pdp_bkup/pdp_alapps.tar.gz -C /data


echo "[PDP] [pdp_prep___fb_.s_]  un-tar app__de_.tar to /d /a__" > /dev/kmsg
/system/bin/tar -xpf /data/pdp_bkup/apps_dex.tar -C /data

if [[ -f /data/pdp_bkup/apps_dex.zip ]]; then
  echo "[PDP] [pdp_prep___fb_.s_]  unzip app__de_.z__ to /d /a__" > /dev/kmsg
  /system/bin/unzip /data/pdp_bkup/apps_dex.zip -d /data
fi

# Rename file to pdp_bkup
echo "[PDP] [pdp_prep___fb_.s_]  rename app__apk_.tar.z__ to pd__bku_.t__.z__" > /dev/kmsg
/system/bin/rm -f /data/pdp_bkup/pdp_bkup.tar.zip
/system/bin/mv -f /data/pdp_bkup/apps_apks.tar.zip /data/pdp_bkup/pdp_bkup.tar.zip

# remove temporary *.tar files
echo "[PDP] [pdp_prep___fb_.s_]  rm app__apk_.tar, app__de_.tar at /d" > /dev/kmsg
/system/bin/rm -f /data/pdp_bkup/apps_apks.tar
/system/bin/rm -f /data/pdp_bkup/apps_dex.tar

# let know current status, init process is waiting for this
echo "[PDP] [pdp_prep___fb_.s_]  unz__ & unt___ done" > /dev/kmsg
# /system/bin/mkdir -p --mode='a-rwx' /data/pdp_bkup/pfbe_done
/system/bin/mkdir -p /data/pdp_bkup/pfbe_done