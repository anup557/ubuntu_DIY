import gi

gi.require_version('Notify', '0.7')
from gi.repository import GLib, Notify

Notify.init("Name")
notification = Notify.Notification()
notification.set_hint('value', GLib.Variant.new_int32(22))
