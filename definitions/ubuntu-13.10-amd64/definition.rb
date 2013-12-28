Veewee::Definition.declare({
  :cpu_count => "4",
  :memory_size=> "1024",
  :disk_size => "20480",
  :disk_format => "VMDK",
  :hostiocache => "off",
  :os_type_id => "Ubuntu_64",
  :virtualbox => { 
    :vm_options => [
      "hwvirtex" => "off",
      "nestedpaging" => "off",
      "natdnshostresolver1" => "on"
    ]
  },
  :iso_file => "ubuntu-13.10-server-amd64.iso",
  :iso_src => "http://releases.ubuntu.com/13.10/ubuntu-13.10-server-amd64.iso",
  :iso_md5 => "4d1a8b720cdd14b76ed9410c63a00d0e",
  :iso_download_timeout => "1000",
  :boot_wait => "10", 
  :boot_cmd_sequence => [
    "<Esc><Esc><Enter> ",
    "/install/vmlinuz ",
    "noapic ",
    "preseed/url=http://%IP%:%PORT%/preseed.cfg ",
    "debian-installer=en_US ",
    "auto ",
    "locale=en_US ",
    "kbd-chooser/method=us ",
    "hostname=%NAME% ",
    "fb=false ",
    "debconf/frontend=noninteractive ",
    "keyboard-configuration/modelcode=SKIP ",
    "keyboard-configuration/layout=USA ",
    "keyboard-configuration/variant=USA ",
    "console-setup/ask_detect=false ",
    "initrd=/install/initrd.gz -- <Enter>"
  ],
  :kickstart_port => "7130",
  :kickstart_timeout => "10000",
  :kickstart_file => "preseed.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7230",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p' | sudo -S bash '%f'",
  :shutdown_cmd => "shutdown -P now",
  :postinstall_files => [
    "base.sh",
    "ruby.sh",
    "vagrant.sh",
    "virtualbox.sh",
    "chef.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => "10000"
})
