Veewee::Session.declare({
  :cpu_count => "4",
  :memory_size=> "1024",
  :disk_size => "10000",
  :disk_format => "VMDK",
  :hostiocache => "on",
  :os_type_id => "Debian_64",
  :virtualbox => { 
    :vm_options => [
      "hwvirtex" => "off",
      "hwvirtexexcl" => "off",
      "nestedpaging" => "off",
      "natdnshostresolver1" => "on"
    ]
  },
  :iso_file => "debian-7.1.0-amd64-netinst.iso",
  :iso_src => "http://cdimage.debian.org/cdimage/release/7.1.0/amd64/iso-cd/debian-7.1.0-amd64-netinst.iso",
  :iso_md5 => "80f498a1f9daa76bc911ae13692e4495",
  :iso_download_timeout => "1000",
  :boot_wait => "10",
  :boot_cmd_sequence => [
    "<Esc>",
    "install ",
    "preseed/url=http://%IP%:%PORT%/preseed.cfg ",
    "debian-installer=en_US ",
    "auto ",
    "locale=en_US ",
    "kbd-chooser/method=de ",
    "netcfg/get_hostname=%NAME% ",
    "netcfg/get_domain=tbpro.de ",
    "fb=false ",
    "debconf/frontend=noninteractive ",
    "console-setup/ask_detect=false ",
    "console-keymaps-at/keymap=de ",
    "keyboard-configuration/xkb-keymap=de ",
    "<Enter>"
  ],
  :kickstart_port => "7123",
  :kickstart_timeout => "10000",
  :kickstart_file => "preseed.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "deploy",
  :ssh_password => "deploy",
  :ssh_key => "",
  :ssh_host_port => "7223",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p' | sudo -S bash '%f'",
  :shutdown_cmd => "halt -p",
  :postinstall_files => [
    "base.sh",
    "vagrant.sh",
    "virtualbox.sh",
    "ruby.sh",
    "chef.sh",
    "cleanup.sh"
  ],
  :postinstall_timeout => "10000"
})
