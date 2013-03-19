distribution = node['apt_backports']['distribution']
mirror       = node['apt_backports']['mirror']

apt_repository distribution do
  uri mirror
  components %w(main)
  distribution distribution
  action :add
end
