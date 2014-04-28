Veewee::Definition.declare({
  :cpu_count => "4",
  :memory_size=> "1024",
  :disk_size => "20480",
  :disk_format => "VMDK",
  :hostiocache => "off",
  :os_type_id => "RedHat6",
  :virtualbox => { 
    :vm_options => [
      "hwvirtex" => "off",
      "nestedpaging" => "off",
      "natdnshostresolver1" => "on"
    ]
  },
  :iso_file => "CentOS-6.5-i386-minimal.iso",
  :iso_src => "http://yum.singlehop.com/CentOS/6.5/isos/i386/CentOS-6.5-i386-minimal.iso",
  :iso_md5 => "a4f27ab51d0d2c9d36b68c56b39f752b",
  :iso_download_timeout => "1000",
  :boot_wait => "10", 
  :boot_cmd_sequence => [
    "<Tab> text ks=http://%IP%:%PORT%/ks.cfg<Enter>"
  ],
  :kickstart_port => "7123",
  :kickstart_timeout => "10000",
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7223",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p' | sudo -S bash '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
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