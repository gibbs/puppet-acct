# @summary acct config
#
# @api private
#
class acct::config {
  assert_private()

  if $acct::manage_defaults {
    file { '/etc/default/acct':
      ensure => file,
      owner  => 0,
      group  => 0,
      mode   => '0644',
      content => epp('acct/acct.epp', {
        defaults => $acct::defaults,
      })
    }
  }
}
