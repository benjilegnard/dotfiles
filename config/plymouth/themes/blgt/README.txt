blgt — Plymouth theme (Catppuccin Mocha)

Files
-----
blgt.plymouth
blgt.script
logo.png  (150x150 placeholder — replace with your own PNG and keep the same name)

Install
-------
1) Copy the folder to your system themes directory:

   sudo mkdir -p /usr/share/plymouth/themes/blgt
   sudo cp -r blgt/* /usr/share/plymouth/themes/blgt/

2) Set as the default theme:

   • Ubuntu/Debian:
     sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/blgt/blgt.plymouth 100
     sudo update-alternatives --set default.plymouth /usr/share/plymouth/themes/blgt/blgt.plymouth
     sudo update-initramfs -u

   • Fedora/RHEL/Arch/others with plymouth-set-default-theme:
     sudo plymouth-set-default-theme -R blgt

3) (Optional) Test without rebooting:

   sudo plymouthd
   sudo plymouth --show-splash
   sleep 3
   sudo plymouth quit

Notes
-----
• The theme sets a Catppuccin Mocha gradient (mantle → base) and centers a 150×150 PNG.
• If your logo.png isn’t 150×150, the script scales it to 150×150 at runtime.
• Put any additional assets in /usr/share/plymouth/themes/blgt and reference them by filename in blgt.script.
