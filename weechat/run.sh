#!/bin/sh

chown -R weechat:weechat /weechat
exec su-exec weechat /usr/bin/weechat "$@"
