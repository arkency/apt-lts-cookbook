distribution = node['apt_lts']['distribution']
mirror       = node['apt_lts']['mirror']

apt_repository distribution do
  uri mirror
  components %w(main)
  distribution distribution
  action :add
  deb_src true
end
