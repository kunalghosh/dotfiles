lua << EOF
  distant = require('distant')
  distant.setup {
      ['*'] = require('distant.settings').chip_default()
    }
EOF
