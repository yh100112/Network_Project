from tkinter import *
import os
from os import *

window = Tk()
window.title("Network Control")
window.geometry("450x217")

def create():
    print("create Network Topology(Mininet)")
    os.system("gnome-terminal -e 'sudo python3 tree.py'")


def same_switch_Flow():
    print("Flow Rule Update")
    os.system("gnome-terminal -e './flow_same_switch.sh'")
def drop_same_switch_Flow():
    print("Drop Flow Rule")
    os.system("gnome-terminal -e './del_flow_same_switch.sh'")

def h2_h4_Flow():
    print("Flow Rule Update")
    os.system("gnome-terminal -e './flow_h2_h4.sh'")
def drop_h2_h4_Flow():
    print("Drop Flow Rule")
    os.system("gnome-terminal -e './del_flow_h2_h4.sh'")


title = Label(window,text="Network Management System",font=("맑은 고딕",17,"bold"))


topology = Label(window,text="Network Topology : ", font=("맑은 고딕", 13,"bold"))
flowName1 = Label(window,text="Same Switch        : ", font=("맑은 고딕", 13,"bold"))
flowName2 = Label(window,text="host2 <-> host4   : ", font=("맑은 고딕", 13,"bold"))


topology_create = Button(window,text="Create",font=("맑은 고딕",11,"bold"),command=create)

flowName1_add = Button(window,text="FlowRule Add",font=("맑은 고딕",11,"bold"),command=same_switch_Flow)
flowName1_drop = Button(window,text="FlowRule Drop",font=("맑은 고딕",11,"bold"),command=drop_same_switch_Flow)

flowName2_add = Button(window,text="FlowRule Add",font=("맑은 고딕",11,"bold"),command=h2_h4_Flow)
flowName2_drop = Button(window,text="FlowRule Drop",font=("맑은 고딕",11,"bold"),command=drop_h2_h4_Flow)


topology_create.place(x=180,y=57)
flowName1_add.place(x=180,y=110) 
flowName1_drop.place(x=310,y=110) 
flowName2_add.place(x=180,y=160) 
flowName2_drop.place(x=310,y=160) 

title.place(relx=0.5,y=20,anchor="center") 
topology.place(x=15,y=60) 
flowName1.place(x=15,y=110) 
flowName2.place(x=15,y=160) 

window.mainloop()
