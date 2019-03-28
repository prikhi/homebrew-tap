cask 'remote-for-mac' do
  version '9.9.11'
  sha256 'cdd02536166c5491962fd52b013640d9e0b50c77f62b0652578e850a36db648f'
  release = '5713'

  url "https://s3.amazonaws.com/remoteappz/Remote-for-Mac-#{release}.pkg.zip"
  name 'Remote for Mac'
  homepage 'https://cherpake.com/remote-for-mac/'

  pkg "Remote-for-Mac-#{release}.pkg"

  uninstall login_item: 'Remote for Mac',
            quit: 'com.cherpake.macrc.server',
            pkgutil: 'com.cherpake.pkg.macrc.server'

  zap trash: [
               '~/Library/Application Support/com.cherpake.macrc.server',
               '~/Library/Caches/com.cherpake.macrc.server',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.cherpake.macrc.server',
               '~/Library/Logs/Remote for Mac',
               '~/Library/Preferences/com.cherpake.macrc.server.plist',
             ]
end
