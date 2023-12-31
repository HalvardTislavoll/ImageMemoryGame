#! /usr/bin/env python3
#  -*- coding: utf-8 -*-
#
# GUI module generated by PAGE version 8.0M
#  in conjunction with Tcl version 8.6
#    Dec 06, 2023 12:28:51 PM CET  platform: Linux

import sys
import tkinter as tk
import tkinter.ttk as ttk
from tkinter.constants import *
import os.path

_script = sys.argv[0]
_location = os.path.dirname(_script)

import bondegaard_support

_bgcolor = '#919191'
_fgcolor = 'black'
_tabfg1 = 'black' 
_tabfg2 = 'white' 
_bgmode = 'light' 
_tabbg1 = '#d9d9d9' 
_tabbg2 = 'gray40' 

_style_code_ran = 0
def _style_code():
    global _style_code_ran
    if _style_code_ran: return
        
    try: bondegaard_support.root.tk.call('source',
                os.path.join(_location, 'themes', 'notsodark.tcl'))
    except: pass
    style = ttk.Style()
    style.theme_use('notsodark')
    style.configure('.', font = "TkDefaultFont")
    _style_code_ran = 1

class Toplevel1:
    def __init__(self, top=None):
        '''This class configures and populates the toplevel window.
           top is the toplevel containing window.'''

        top.geometry("1456x738+1976+199")
        top.minsize(1, 1)
        top.maxsize(3825, 1050)
        top.resizable(0,  0)
        top.title("Toplevel 0")
        top.configure(background="#919191")
        top.configure(highlightbackground="#919191")
        top.configure(highlightcolor="black")

        self.top = top
        self.user = tk.StringVar()

        self.menubar = tk.Menu(top,font="TkMenuFont",bg='#919191',fg=_fgcolor)
        top.configure(menu = self.menubar)

        self.sub_menu = tk.Menu(self.menubar, activebackground='#d9d9d9'
                ,activeforeground='black', background='#919191'
                ,disabledforeground='#6d6d6d'
                ,font="-family {DejaVu Sans} -size 10", foreground='black'
                ,tearoff=0)
        photo_location = os.path.join(_location,"./assets/button_graphics/hamburger_menu.png")
        global _img0
        _img0 = tk.PhotoImage(file=photo_location)
        self.menubar.add_cascade(activebackground='#d9d9d9'
                ,activeforeground='black', font="-family {DejaVu Sans} -size 10"
                ,image=_img0, label='H', menu=self.sub_menu, )
        photo_location = os.path.join(_location,"./assets/button_graphics/preferences.png")
        global _img1
        _img1 = tk.PhotoImage(file=photo_location)
        self.sub_menu.add_command(activebackground='#d9d9d9'
                ,activeforeground='black'
                ,command=bondegaard_support.on_preferences, compound='left'
                ,font="-family {DejaVu Sans} -size 10", image=_img1
                ,label='Preferences')
        photo_location = os.path.join(_location,"./assets/button_graphics/app-exit.png")
        global _img2
        _img2 = tk.PhotoImage(file=photo_location)
        self.sub_menu.add_command(activebackground='#d9d9d9'
                ,activeforeground='black', command=bondegaard_support.on_TBtnExit
                ,compound='left', font="-family {DejaVu Sans} -size 10"
                ,image=_img2, label='Exit')

        _style_code()
        self.TLbl_Time = ttk.Label(self.top)
        self.TLbl_Time.place(x=16, y=687, height=40, width=100)
        self.TLbl_Time.configure(font="-family {DejaVu Sans} -size 12 -weight bold")
        self.TLbl_Time.configure(relief="flat")
        self.TLbl_Time.configure(anchor='center')
        self.TLbl_Time.configure(justify='left')
        self.TLbl_Time.configure(text='''Time''')
        self.TLbl_Time.configure(compound='left')

        self.TLbl_Status = ttk.Label(self.top)
        self.TLbl_Status.place(x=202, y=687, height=40, width=495)
        self.TLbl_Status.configure(font="-family {DejaVu Sans} -size 12 -weight bold")
        self.TLbl_Status.configure(relief="flat")
        self.TLbl_Status.configure(anchor='center')
        self.TLbl_Status.configure(justify='left')
        self.TLbl_Status.configure(text='''Status''')
        self.TLbl_Status.configure(compound='left')

        self.TSeparator1 = ttk.Separator(self.top)
        self.TSeparator1.place(x=0, y=681, width=1356)

        self.Spinbox1 = tk.Spinbox(self.top, from_=1.0, to=9.0)
        self.Spinbox1.place(x=1181, y=687, height=40, width=48)
        self.Spinbox1.configure(activebackground="#d9d9d9")
        self.Spinbox1.configure(background="white")
        self.Spinbox1.configure(command=bondegaard_support.on_spinbox)
        self.Spinbox1.configure(disabledbackground="#f5deb3")
        self.Spinbox1.configure(disabledforeground="black")
        self.Spinbox1.configure(font="-family {DejaVu Sans} -size 10")
        self.Spinbox1.configure(foreground="white")
        self.Spinbox1.configure(highlightbackground="black")
        self.Spinbox1.configure(readonlybackground="#f5deb3")
        self.Spinbox1.configure(selectbackground="#d9d9d9")

        self.Frame0 = tk.Frame(self.top)
        self.Frame0.place(x=676, y=0, height=680, width=678)
        self.Frame0.configure(relief='flat')
        self.Frame0.configure(borderwidth="2")
        self.Frame0.configure(background="#919191")
        self.Frame0.configure(highlightbackground="#919191")

        self.Canvas1 = tk.Canvas(self.Frame0)
        self.Canvas1.place(x=10, y=7, height=665, width=659)
        self.Canvas1.configure(background="#919191")
        self.Canvas1.configure(borderwidth="4")
        self.Canvas1.configure(highlightbackground="#919191")
        self.Canvas1.configure(selectbackground="#d9d9d9")

        self.Frame1 = tk.Frame(self.top)
        self.Frame1.place(x=0, y=0, height=680, width=678)
        self.Frame1.configure(relief='flat')
        self.Frame1.configure(borderwidth="2")
        self.Frame1.configure(background="#919191")
        self.Frame1.configure(highlightbackground="#919191")

        self.Canvas0 = tk.Canvas(self.Frame1)
        self.Canvas0.place(x=10, y=10, height=660, width=660)
        self.Canvas0.configure(background="#919191")
        self.Canvas0.configure(borderwidth="4")
        self.Canvas0.configure(highlightbackground="#919191")
        self.Canvas0.configure(selectbackground="#d9d9d9")

        self.TBtnExit = ttk.Button(self.top)
        self.TBtnExit.place(x=1241, y=687, height=40, width=100)
        self.TBtnExit.configure(command=bondegaard_support.on_TBtnExit)
        self.TBtnExit.configure(text='''Exit''')
        photo_location = os.path.join(_location,"./assets/button_graphics/app-exit.png")
        global _img3
        _img3 = tk.PhotoImage(file=photo_location)
        self.TBtnExit.configure(image=_img3)
        self.TBtnExit.configure(compound='left')

        self.Frame3 = tk.Frame(self.top)
        self.Frame3.place(x=676, y=0, height=680, width=678)
        self.Frame3.configure(relief='flat')
        self.Frame3.configure(borderwidth="2")
        self.Frame3.configure(background="#919191")
        self.Frame3.configure(highlightbackground="#919191")

        self.TLblHeading = ttk.Label(self.Frame3)
        self.TLblHeading.place(x=7, y=8, height=61, width=664)
        self.TLblHeading.configure(font="-family {Andika} -size 24 -weight bold")
        self.TLblHeading.configure(relief="flat")
        self.TLblHeading.configure(anchor='center')
        self.TLblHeading.configure(justify='left')
        self.TLblHeading.configure(text='''Lotto''')
        self.TLblHeading.configure(compound='left')

        self.Scrolledtext1 = ScrolledText(self.Frame3)
        self.Scrolledtext1.place(x=21, y=75, height=601, width=639)
        self.Scrolledtext1.configure(background="#919191")
        self.Scrolledtext1.configure(font="TkTextFont")
        self.Scrolledtext1.configure(highlightbackground="#919191")
        self.Scrolledtext1.configure(insertborderwidth="3")
        self.Scrolledtext1.configure(relief="flat")
        self.Scrolledtext1.configure(selectbackground="#d9d9d9")
        self.Scrolledtext1.configure(wrap="none")

        self.Frame2 = tk.Frame(self.top)
        self.Frame2.place(x=9, y=10, height=665, width=668)
        self.Frame2.configure(relief='flat')
        self.Frame2.configure(borderwidth="2")
        self.Frame2.configure(background="#919191")
        self.Frame2.configure(highlightbackground="#919191")

        self.Canvas2_1 = tk.Canvas(self.Frame2)
        self.Canvas2_1.place(x=7, y=7, height=210, width=210)
        self.Canvas2_1.configure(background="#919191")
        self.Canvas2_1.configure(borderwidth="4")
        self.Canvas2_1.configure(highlightbackground="#919191")
        self.Canvas2_1.configure(relief="solid")
        self.Canvas2_1.configure(selectbackground="#d9d9d9")

        self.Canvas2_2 = tk.Canvas(self.Frame2)
        self.Canvas2_2.place(x=226, y=7, height=210, width=210)
        self.Canvas2_2.configure(background="#919191")
        self.Canvas2_2.configure(borderwidth="4")
        self.Canvas2_2.configure(highlightbackground="#919191")
        self.Canvas2_2.configure(relief="solid")
        self.Canvas2_2.configure(selectbackground="#d9d9d9")

        self.Canvas2_3 = tk.Canvas(self.Frame2)
        self.Canvas2_3.place(x=446, y=7, height=210, width=210)
        self.Canvas2_3.configure(background="#919191")
        self.Canvas2_3.configure(borderwidth="4")
        self.Canvas2_3.configure(highlightbackground="#919191")
        self.Canvas2_3.configure(relief="solid")
        self.Canvas2_3.configure(selectbackground="#d9d9d9")

        self.Canvas2_4 = tk.Canvas(self.Frame2)
        self.Canvas2_4.place(x=7, y=226, height=210, width=210)
        self.Canvas2_4.configure(background="#919191")
        self.Canvas2_4.configure(borderwidth="4")
        self.Canvas2_4.configure(highlightbackground="#919191")
        self.Canvas2_4.configure(relief="solid")
        self.Canvas2_4.configure(selectbackground="#d9d9d9")

        self.Canvas2_5 = tk.Canvas(self.Frame2)
        self.Canvas2_5.place(x=226, y=226, height=210, width=210)
        self.Canvas2_5.configure(background="#919191")
        self.Canvas2_5.configure(borderwidth="4")
        self.Canvas2_5.configure(highlightbackground="#919191")
        self.Canvas2_5.configure(relief="solid")
        self.Canvas2_5.configure(selectbackground="#d9d9d9")

        self.Canvas2_6 = tk.Canvas(self.Frame2)
        self.Canvas2_6.place(x=446, y=226, height=210, width=210)
        self.Canvas2_6.configure(background="#919191")
        self.Canvas2_6.configure(borderwidth="4")
        self.Canvas2_6.configure(highlightbackground="#919191")
        self.Canvas2_6.configure(relief="solid")
        self.Canvas2_6.configure(selectbackground="#d9d9d9")

        self.Canvas2_7 = tk.Canvas(self.Frame2)
        self.Canvas2_7.place(x=7, y=444, height=210, width=210)
        self.Canvas2_7.configure(background="#919191")
        self.Canvas2_7.configure(borderwidth="4")
        self.Canvas2_7.configure(highlightbackground="#919191")
        self.Canvas2_7.configure(relief="solid")
        self.Canvas2_7.configure(selectbackground="#d9d9d9")

        self.Canvas2_8 = tk.Canvas(self.Frame2)
        self.Canvas2_8.place(x=226, y=444, height=210, width=210)
        self.Canvas2_8.configure(background="#919191")
        self.Canvas2_8.configure(borderwidth="4")
        self.Canvas2_8.configure(highlightbackground="#919191")
        self.Canvas2_8.configure(relief="solid")
        self.Canvas2_8.configure(selectbackground="#d9d9d9")

        self.Canvas2_9 = tk.Canvas(self.Frame2)
        self.Canvas2_9.place(x=446, y=444, height=210, width=210)
        self.Canvas2_9.configure(background="#919191")
        self.Canvas2_9.configure(borderwidth="4")
        self.Canvas2_9.configure(highlightbackground="#919191")
        self.Canvas2_9.configure(relief="solid")
        self.Canvas2_9.configure(selectbackground="#d9d9d9")

        self.Frame4 = tk.Frame(self.top)
        self.Frame4.place(x=9, y=10, height=665, width=686)
        self.Frame4.configure(relief='groove')
        self.Frame4.configure(borderwidth="2")
        self.Frame4.configure(relief="groove")
        self.Frame4.configure(background="#919191")
        self.Frame4.configure(highlightbackground="#919191")

        self.Frame5 = tk.Frame(self.Frame4)
        self.Frame5.place(x=77, y=144, height=225, width=425)
        self.Frame5.configure(relief='flat')
        self.Frame5.configure(borderwidth="2")
        self.Frame5.configure(background="#919191")
        self.Frame5.configure(highlightbackground="#919191")

        self.TLabel2_2 = ttk.Label(self.Frame5)
        self.TLabel2_2.place(x=46, y=119, height=31, width=154)
        self.TLabel2_2.configure(font="-family {DejaVu Sans} -size 10")
        self.TLabel2_2.configure(relief="flat")
        self.TLabel2_2.configure(anchor='e')
        self.TLabel2_2.configure(justify='left')
        self.TLabel2_2.configure(text='''Spiller 3:''')
        self.TLabel2_2.configure(compound='left')

        self.TLabel2_3 = ttk.Label(self.Frame5)
        self.TLabel2_3.place(x=46, y=169, height=31, width=154)
        self.TLabel2_3.configure(font="-family {DejaVu Sans} -size 10")
        self.TLabel2_3.configure(relief="flat")
        self.TLabel2_3.configure(anchor='e')
        self.TLabel2_3.configure(justify='left')
        self.TLabel2_3.configure(text='''Spiller 4:''')
        self.TLabel2_3.configure(compound='left')

        self.TLabel2 = ttk.Label(self.Frame5)
        self.TLabel2.place(x=46, y=19, height=31, width=154)
        self.TLabel2.configure(font="-family {DejaVu Sans} -size 10")
        self.TLabel2.configure(relief="flat")
        self.TLabel2.configure(anchor='e')
        self.TLabel2.configure(justify='left')
        self.TLabel2.configure(text='''Spiller 1:''')
        self.TLabel2.configure(compound='left')

        self.TLabel2_1 = ttk.Label(self.Frame5)
        self.TLabel2_1.place(x=46, y=69, height=31, width=154)
        self.TLabel2_1.configure(font="-family {DejaVu Sans} -size 10")
        self.TLabel2_1.configure(relief="flat")
        self.TLabel2_1.configure(anchor='e')
        self.TLabel2_1.configure(justify='left')
        self.TLabel2_1.configure(text='''Spiller 2:''')
        self.TLabel2_1.configure(compound='left')

        self.TEntry1 = ttk.Entry(self.Frame5)
        self.TEntry1.place(x=216, y=19, height=33, width=206)
        self.TEntry1.configure(font="-family {DejaVu Sans} -size 10")
        self.TEntry1.configure(justify='center')
        self.TEntry1.configure(textvariable=self.user)
        self.TEntry1.configure(cursor="fleur")

        self.TEntry2 = ttk.Entry(self.Frame5)
        self.TEntry2.place(x=216, y=69, height=33, width=206)
        self.TEntry2.configure(font="-family {DejaVu Sans} -size 10")
        self.TEntry2.configure(justify='center')
        self.TEntry2.configure(textvariable=self.user)
        self.TEntry2.configure(cursor="fleur")

        self.TEntry3 = ttk.Entry(self.Frame5)
        self.TEntry3.place(x=216, y=119, height=33, width=206)
        self.TEntry3.configure(font="-family {DejaVu Sans} -size 10")
        self.TEntry3.configure(justify='center')
        self.TEntry3.configure(textvariable=self.user)
        self.TEntry3.configure(cursor="fleur")

        self.TEntry4 = ttk.Entry(self.Frame5)
        self.TEntry4.place(x=216, y=169, height=33, width=206)
        self.TEntry4.configure(font="-family {DejaVu Sans} -size 10")
        self.TEntry4.configure(justify='center')
        self.TEntry4.configure(textvariable=self.user)
        self.TEntry4.configure(cursor="fleur")

        self.TLabel1 = ttk.Label(self.Frame4)
        self.TLabel1.place(x=176, y=62, height=51, width=344)
        self.TLabel1.configure(font="-family {DejaVu Sans} -size 18 -weight bold")
        self.TLabel1.configure(relief="flat")
        self.TLabel1.configure(anchor='center')
        self.TLabel1.configure(justify='left')
        self.TLabel1.configure(text='''Spillere:''')
        self.TLabel1.configure(compound='left')

        self.TBtnPlay = ttk.Button(self.Frame4)
        self.TBtnPlay.place(x=294, y=470, height=33, width=98)
        self.TBtnPlay.configure(command=bondegaard_support.on_TBtnPlay)
        self.TBtnPlay.configure(text='''Spill''')
        self.TBtnPlay.configure(compound='left')

# The following code is added to facilitate the Scrolled widgets you specified.
class AutoScroll(object):
    '''Configure the scrollbars for a widget.'''
    def __init__(self, master):
        #  Rozen. Added the try-except clauses so that this class
        #  could be used for scrolled entry widget for which vertical
        #  scrolling is not supported. 5/7/14.
        try:
            vsb = ttk.Scrollbar(master, orient='vertical', command=self.yview)
        except:
            pass
        hsb = ttk.Scrollbar(master, orient='horizontal', command=self.xview)
        try:
            self.configure(yscrollcommand=self._autoscroll(vsb))
        except:
            pass
        self.configure(xscrollcommand=self._autoscroll(hsb))
        self.grid(column=0, row=0, sticky='nsew')
        try:
            vsb.grid(column=1, row=0, sticky='ns')
        except:
            pass
        hsb.grid(column=0, row=1, sticky='ew')
        master.grid_columnconfigure(0, weight=1)
        master.grid_rowconfigure(0, weight=1)
        # Copy geometry methods of master  (taken from ScrolledText.py)
        methods = tk.Pack.__dict__.keys() | tk.Grid.__dict__.keys() \
                  | tk.Place.__dict__.keys()
        for meth in methods:
            if meth[0] != '_' and meth not in ('config', 'configure'):
                setattr(self, meth, getattr(master, meth))

    @staticmethod
    def _autoscroll(sbar):
        '''Hide and show scrollbar as needed.'''
        def wrapped(first, last):
            first, last = float(first), float(last)
            if first <= 0 and last >= 1:
                sbar.grid_remove()
            else:
                sbar.grid()
            sbar.set(first, last)
        return wrapped

    def __str__(self):
        return str(self.master)

def _create_container(func):
    '''Creates a ttk Frame with a given master, and use this new frame to
    place the scrollbars and the widget.'''
    def wrapped(cls, master, **kw):
        container = ttk.Frame(master)
        container.bind('<Enter>', lambda e: _bound_to_mousewheel(e, container))
        container.bind('<Leave>', lambda e: _unbound_to_mousewheel(e, container))
        return func(cls, container, **kw)
    return wrapped

class ScrolledText(AutoScroll, tk.Text):
    '''A standard Tkinter Text widget with scrollbars that will
    automatically show/hide as needed.'''
    @_create_container
    def __init__(self, master, **kw):
        tk.Text.__init__(self, master, **kw)
        AutoScroll.__init__(self, master)

import platform
def _bound_to_mousewheel(event, widget):
    child = widget.winfo_children()[0]
    if platform.system() == 'Windows' or platform.system() == 'Darwin':
        child.bind_all('<MouseWheel>', lambda e: _on_mousewheel(e, child))
        child.bind_all('<Shift-MouseWheel>', lambda e: _on_shiftmouse(e, child))
    else:
        child.bind_all('<Button-4>', lambda e: _on_mousewheel(e, child))
        child.bind_all('<Button-5>', lambda e: _on_mousewheel(e, child))
        child.bind_all('<Shift-Button-4>', lambda e: _on_shiftmouse(e, child))
        child.bind_all('<Shift-Button-5>', lambda e: _on_shiftmouse(e, child))

def _unbound_to_mousewheel(event, widget):
    if platform.system() == 'Windows' or platform.system() == 'Darwin':
        widget.unbind_all('<MouseWheel>')
        widget.unbind_all('<Shift-MouseWheel>')
    else:
        widget.unbind_all('<Button-4>')
        widget.unbind_all('<Button-5>')
        widget.unbind_all('<Shift-Button-4>')
        widget.unbind_all('<Shift-Button-5>')

def _on_mousewheel(event, widget):
    if platform.system() == 'Windows':
        widget.yview_scroll(-1*int(event.delta/120),'units')
    elif platform.system() == 'Darwin':
        widget.yview_scroll(-1*int(event.delta),'units')
    else:
        if event.num == 4:
            widget.yview_scroll(-1, 'units')
        elif event.num == 5:
            widget.yview_scroll(1, 'units')

def _on_shiftmouse(event, widget):
    if platform.system() == 'Windows':
        widget.xview_scroll(-1*int(event.delta/120), 'units')
    elif platform.system() == 'Darwin':
        widget.xview_scroll(-1*int(event.delta), 'units')
    else:
        if event.num == 4:
            widget.xview_scroll(-1, 'units')
        elif event.num == 5:
            widget.xview_scroll(1, 'units')
def start_up():
    bondegaard_support.main()

if __name__ == '__main__':
    bondegaard_support.main()




