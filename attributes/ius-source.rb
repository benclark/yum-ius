default['yum']['ius-source']['repositoryid'] = 'ius-source'
default['yum']['ius-source']['enabled'] = false
default['yum']['ius-source']['failovermethod'] = 'priority'
default['yum']['ius-source']['gpgkey'] = 'http://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-source']['gpgcheck'] = true
case node['platform_version'].to_i
when 5
  default['yum']['ius-source']['description'] = 'IUS Community Packages for Enterprise Linux 5 - $basearch Source'
  default['yum']['ius-source']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el5-source&arch=$basearch'
when 6
  default['yum']['ius-source']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Source'
  default['yum']['ius-source']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el6-source&arch=$basearch'
end
