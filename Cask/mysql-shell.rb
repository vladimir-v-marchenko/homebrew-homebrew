cask 'mysql-shell' do
  version '8.0.3-dmr'
  sha256 '8bdf89645ab8eec12382b9ff3a388f4ab0405b1cdebcfcd904f2471c1818a7ae'

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version}-macos10.12-x86-64bit.dmg"
  name 'MySQL Shell'
  homepage 'https://dev.mysql.com/downloads/shell/'

  pkg "mysql-shell-#{version}-macos10.12-x86-64bit.pkg"

  uninstall pkgutil: 'com.mysql.shell'

  zap trash: '~/.mysqlsh'
end
