import numpy as np
import matplotlib.pyplot as plt
import math as m


#fonction entre 0 et 1
def f (x,Amp=1):
    dilx=1
    dily=2
    Amp=Amp*dily
    x=x*dilx
    if x<=dilx/5:
        return 0
    else :
        return (-m.cos(x)+m.cos(dilx/5))*Amp



#^^^^^^^^^^^^^^^^^^^^^^^#
#       PROGRAMME       #
#_______________________#

def FindCoef(nbPoints=1e5, deg=10):
    
    #nombre de point : (testé et ok jusqu'a 1e6)
    n=int(nbPoints)

    x=np.linspace(0,1,n)

    #tracage de la fonction à approximer
    y=[]
    for t in range (0,n): 
        y.append(f(x[t]))
    plt.plot(x,y,label="réelle")

    #calcul des coeficients (p) et tracage du polynôme associé (P)
    p=np.polyfit(x,y,deg)
    P=np.poly1d(p)
    plt.plot(x,P(x),label="approximation")

    plt.show()

    p2=[]
    for k in range (1,len(p)+1):
            p2.append(p[-k])

    print ("p : \n", p)
    print ("p renversé : \n", p2)

    return None

def FindByPoint(degh=10,amph=1):
    xh=[]
    yh=[]

    xh.append(0.0)
    yh.append(0.0)
    
    with open("curve.csv","r") as f:
        #x,y
        f.readline()
        
        for ligne in f :

            ligne2=ligne.split('"')
            xh.append(float(ligne2[0].replace(",",".")))
            yh.append(amph*float(ligne2[1].replace(",",".")))

        f.close()
        
    ph=np.polyfit(xh,yh,degh)
    Ph=np.poly1d(ph)

    plt.plot(xh,yh,label="points récupérés")
    plt.plot(xh,Ph(xh),label="approximation")
    plt.show()

    p2h=[]
    pth=[]
    for k in range (1,len(ph)+1):
        pth.append(ph[k-1])
        p2h.append(ph[-k])

    print ("p : \n", pth)
    print ("p renversé : \n", p2h)
    
def test(q,aRenverser=True):
    
    if aRenverser :
        b=[]
        for k in range (1,len(q)+1):
            b.append(q[-k])
        q=b
        
    x=np.linspace(0,1,1000)
    Q=np.poly1d(q)
    plt.plot(x,Q(x),label="coef testés")
    plt.show()
    
def traitement (marge=20):
    #t,Vx,Vy,vorticite,[Fx,Fy,Fz],un truc en trop
    valeurs=[]
    Fx=0
    S=0
    
    with open ("force pression.csv","r") as f:
        for i in range (marge):
            f.readline()
                    
        for ligne in f :
            
            ligne2=ligne.split(',')
            valeurs.append(float(ligne2[4].replace("[","")))

        for i in valeurs :
            S=S+i
        Fx=S/len(valeurs)

        print (Fx)

        f.close()

    return None
