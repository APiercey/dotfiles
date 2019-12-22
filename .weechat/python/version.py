import sys

import weechat

if weechat.register('test', 'test', 'test', 'test', 'test', 'shutdown', ''):
    weechat.prnt('', str(sys.version))
    weechat.prnt('', str(sys.path))
