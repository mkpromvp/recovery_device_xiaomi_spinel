#!/sbin/sh

sleep 2

# Mount base partitions (dynamic A/B)
mount /dev/block/mapper/system_a /system_root 2>/dev/null
mount /dev/block/mapper/system_b /system_root 2>/dev/null

mount /dev/block/mapper/system_ext_a /system_ext 2>/dev/null
mount /dev/block/mapper/system_ext_b /system_ext 2>/dev/null

mount /dev/block/mapper/product_a /product 2>/dev/null
mount /dev/block/mapper/product_b /product 2>/dev/null

mount /dev/block/mapper/vendor_a /vendor 2>/dev/null
mount /dev/block/mapper/vendor_b /vendor 2>/dev/null

mount /dev/block/mapper/mi_ext_a /mi_ext 2>/dev/null
mount /dev/block/mapper/mi_ext_b /mi_ext 2>/dev/null

# optional read-only remount (safe for EROFS)
mount -o remount,ro /system_root 2>/dev/null
mount -o remount,ro /system_ext 2>/dev/null
mount -o remount,ro /product 2>/dev/null
mount -o remount,ro /vendor 2>/dev/null

exit 0
