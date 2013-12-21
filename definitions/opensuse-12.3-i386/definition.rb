Veewee::Definition.declare({
  :cpu_count => "4",
  :memory_size=> "1024",
  :disk_size => "20480",
  :disk_format => "VMDK",
  :hostiocache => "off",
  :os_type_id => "OpenSUSE",
  :virtualbox => { 
    :vm_options => [
      "hwvirtex" => "off",
      "hwvirtexexcl" => "off",
      "nestedpaging" => "off",
      "natdnshostresolver1" => "on"
    ]
  },
  :iso_file => "openSUSE-12.3-NET-i586.iso",
  :iso_src => "http://download.opensuse.org/distribution/12.3/iso/openSUSE-12.3-NET-i586.iso",
  :iso_md5 => "764ae9d76de1e9813621b1606e97a41d",
  :iso_download_timeout => "1000",
  :boot_wait => "10", 
  :boot_cmd_sequence => [
    "<Esc><Enter>",
    "linux netdevice=eth0 netsetup=dhcp ",
    "install=http://download.opensuse.org/distribution/12.3/repo/oss/ insecure=1 ",
    "lang=en_US autoyast=http://%IP%:%PORT%/autoinst.xml ",
    "textmode=1",
    "<Enter>"
  ],
  :kickstart_port => "7129",
  :kickstart_timeout => "10000",
  :kickstart_file => ["autoinst.xml", "autoinst.xml"],
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7229",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p' | sudo -S bash '%f'",
  :shutdown_cmd => "shutdown -P now",
  :postinstall_files => [
    "base.sh",
    "ruby.sh",
    "chef.sh",
    "vagrant.sh",
    "virtualbox.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => "10000"
})