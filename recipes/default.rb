distribution = node['apt-backports']['distribution']
mirror       = node['apt-backports']['mirror']

apt_repository distribution do
  uri mirror
  components %w(main)
  distribution distribution
  action :add
end
