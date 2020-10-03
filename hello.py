#!/usr/bin/env python

import pygtk
pygtk.require('2.0')
import gtk

class PyApp(gtk.Window):
    def __init__(self):
        super(PyApp, self).__init__()

        self.set_title("PyGtk Hello")
        self.connect("destroy", gtk.main_quit)
        self.set_size_request(200, 150)
        self.set_position(gtk.WIN_POS_CENTER)
        self.show()

if __name__ == "__main__":
    PyApp()
    gtk.main()
