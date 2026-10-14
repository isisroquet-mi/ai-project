"""Reproduce las figuras ilustrativas y verifica los resultados numéricos.
Ejecutar desde cualquier carpeta: python code/verify.py
No calibra ni estima datos del Perú. No reemplaza la prueba ni Lean.
"""
from pathlib import Path
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

ROOT = Path(__file__).resolve().parents[1]
FIG = ROOT / 'slides' / 'figures'
FIG.mkdir(parents=True, exist_ok=True)
M, F, KB = 10.0, 2.0, 1.0
NAVY, TEAL, GOLD = '#17324D', '#168F8A', '#BD7822'
plt.rcParams.update({'font.family':'DejaVu Sans','font.size':12,
 'axes.spines.top':False,'axes.spines.right':False,'axes.labelcolor':NAVY,
 'text.color':NAVY,'axes.grid':True,'grid.alpha':.17,'pdf.fonttype':42})

def opt(k, f=F): return np.sqrt(2*f/k)
def cost(e, k, m=M, f=F): return m+f/e+k*e/2
def value(k, m=M, f=F): return m+np.sqrt(2*f*k)
def overrun(k, lam, kb=KB, m=M, f=F):
    return np.log(value(k,m,f)/value(lam*k+(1-lam)*kb,m,f))

# Mínimo global, FOC y unicidad por la identidad exacta, en una malla amplia.
rng = np.random.default_rng(261014)
k = np.exp(rng.uniform(-3,3,3000))
f = np.exp(rng.uniform(-3,3,3000))
m = rng.uniform(0,25,3000)
q = opt(k,f)
e = q*np.exp(rng.uniform(-3,3,3000))
assert np.allclose(-f/q**2+k/2,0,atol=1e-12)
assert np.allclose(cost(e,k,m,f)-cost(q,k,m,f), k*(e-q)**2/(2*e),rtol=1e-10,atol=1e-10)
assert np.all(cost(e,k,m,f)>=cost(q,k,m,f)-1e-10)
k2=k*1.1
assert np.all(opt(k2,f)<q)
assert np.all(1/opt(k2,f)>1/q)
assert np.all(value(k2,m,f)>value(k,m,f))
# Comparativas estáticas y punto de equilibrio del sobrecosto.
ratios=np.linspace(.5,1.5,301)
for lam in (0,.5,1):
    rr=overrun(ratios,lam)
    if lam<1:
        assert np.all(rr[ratios<1]<0)
        assert np.all(rr[ratios>1]>0)
    else: assert np.allclose(rr,0)
assert np.isclose(overrun(1,0),0)
ls=np.linspace(0,1,101)
assert np.all(np.diff(overrun(1.5,ls))<0)
assert np.all(np.diff(overrun(.5,ls))>0)
assert np.allclose(overrun(ratios,1),0)
for kk in (.5,1,1.5):
    h=1e-5
    de=(opt(kk+h)-opt(kk-h))/(2*h)
    dt=(1/opt(kk+h)-1/opt(kk-h))/(2*h)
    dc=(value(kk+h)-value(kk-h))/(2*h)
    assert np.isclose(de,-np.sqrt(2*F)/(2*kk**1.5),rtol=1e-8)
    assert np.isclose(dt,1/(2*np.sqrt(2*F*kk)),rtol=1e-8)
    assert np.isclose(dc,F/np.sqrt(2*F*kk),rtol=1e-8)

fig, ax=plt.subplots(figsize=(7.2,4.2),layout='constrained')
ee=np.linspace(.45,5,500)
for kk,c in ((1,TEAL),(2,NAVY)):
    ax.plot(ee,cost(ee,kk)-M,color=c,lw=2.5,label=fr'$\kappa={kk}$')
    qq=opt(kk)
    ax.scatter([qq],[value(kk)-M],s=55,color=c,zorder=5)
    ax.axvline(qq,color=c,ls=':',lw=1.3)
ax.set(xlabel=r'Intensidad $e$',ylabel=r'Costo adicional $K(e)-M$',ylim=(1.4,6),xlim=(.45,5))
ax.legend(frameon=False,loc='upper right')
fig.savefig(FIG/'cost_intensity.pdf'); plt.close(fig)

fig,ax=plt.subplots(figsize=(9,3.9),layout='constrained')
ax.plot(ratios,ratios**(-.5),color=TEAL,lw=2.7,label=r'Intensidad $e^*/e_0$')
ax.plot(ratios,ratios**(.5),color=NAVY,lw=2.7,label=r'Duración $T^*/T_0$')
ax.axhline(1,color='#8090A0',lw=1,ls=':'); ax.axvline(1,color='#8090A0',lw=1,ls=':')
ax.set(xlabel=r'Fricción relativa $\kappa^A/\bar\kappa$',ylabel='Razón respecto de la línea base',xlim=(.5,1.5),ylim=(.65,1.5))
ax.legend(frameon=False,loc='upper right')
fig.savefig(FIG/'speed_duration.pdf');plt.close(fig)

fig,ax=plt.subplots(figsize=(9,3.9),layout='constrained')
for lam,c,style in ((0,NAVY,'-'),(.5,TEAL,'-'),(1,GOLD,'--')):
    ax.plot(ratios,overrun(ratios,lam),color=c,lw=2.7,ls=style,label=fr'$\lambda={lam:g}$')
ax.axvline(1,color='#8090A0',lw=1,ls=':')
ax.set(xlabel=r'Fricción relativa $\kappa^A/\bar\kappa$',ylabel=r'$R=\log(K^A/K^V)$',xlim=(.5,1.5),ylim=(-.055,.04))
ax.legend(frameon=False,loc='lower right')
ax.annotate('Costo superior al previsto',xy=(1.32,.025),xytext=(1.07,.032),fontsize=10)
ax.annotate('Costo inferior al previsto',xy=(.7,-.026),xytext=(.52,-.045),fontsize=10)
fig.savefig(FIG/'overrun.pdf');plt.close(fig)
print('OK: FOC, mínimo global, orden de resultados, derivadas y anticipación. Figuras reproducidas.')
