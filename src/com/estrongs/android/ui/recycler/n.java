package com.estrongs.android.ui.recycler;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.SimpleItemAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class n
  extends SimpleItemAnimator
{
  protected ArrayList<RecyclerView.ViewHolder> a = new ArrayList();
  protected ArrayList<RecyclerView.ViewHolder> b = new ArrayList();
  protected ArrayList<RecyclerView.ViewHolder> c = new ArrayList();
  protected ArrayList<RecyclerView.ViewHolder> d = new ArrayList();
  private ArrayList<RecyclerView.ViewHolder> e = new ArrayList();
  private ArrayList<RecyclerView.ViewHolder> f = new ArrayList();
  private ArrayList<y> g = new ArrayList();
  private ArrayList<x> h = new ArrayList();
  private ArrayList<ArrayList<RecyclerView.ViewHolder>> i = new ArrayList();
  private ArrayList<ArrayList<y>> j = new ArrayList();
  private ArrayList<ArrayList<x>> k = new ArrayList();
  private int l = 0;
  
  private void a(List<x> paramList, RecyclerView.ViewHolder paramViewHolder)
  {
    int m = paramList.size() - 1;
    while (m >= 0)
    {
      x localx = (x)paramList.get(m);
      if ((a(localx, paramViewHolder)) && (a == null) && (b == null)) {
        paramList.remove(localx);
      }
      m -= 1;
    }
  }
  
  private boolean a(x paramx, RecyclerView.ViewHolder paramViewHolder)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    if (b == paramViewHolder) {
      b = null;
    }
    for (;;)
    {
      cn.c(itemView, 1.0F);
      cn.a(itemView, 0.0F);
      cn.b(itemView, 0.0F);
      dispatchChangeFinished(paramViewHolder, bool1);
      bool1 = true;
      do
      {
        return bool1;
        bool1 = bool2;
      } while (a != paramViewHolder);
      a = null;
      bool1 = true;
    }
  }
  
  private void b(x paramx)
  {
    if (a != null) {
      a(paramx, a);
    }
    if (b != null) {
      a(paramx, b);
    }
  }
  
  protected void a()
  {
    if (!isRunning()) {
      dispatchAnimationsFinished();
    }
  }
  
  protected void a(RecyclerView.ViewHolder paramViewHolder)
  {
    Object localObject = itemView;
    a.add(paramViewHolder);
    localObject = cn.s((View)localObject);
    ((ex)localObject).b(0.0F).a(getAddDuration()).a(new t(this, paramViewHolder, (ex)localObject)).c();
  }
  
  protected void a(RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object localObject = itemView;
    paramInt1 = paramInt3 - paramInt1;
    paramInt2 = paramInt4 - paramInt2;
    if (paramInt1 != 0) {
      cn.s((View)localObject).b(0.0F);
    }
    if (paramInt2 != 0) {
      cn.s((View)localObject).c(0.0F);
    }
    b.add(paramViewHolder);
    localObject = cn.s((View)localObject);
    ((ex)localObject).a(getMoveDuration()).a(new u(this, paramViewHolder, paramInt1, paramInt2, (ex)localObject)).c();
  }
  
  protected void a(x paramx)
  {
    View localView = null;
    Object localObject = a;
    if (localObject == null) {}
    for (localObject = null;; localObject = itemView)
    {
      RecyclerView.ViewHolder localViewHolder = b;
      if (localViewHolder != null) {
        localView = itemView;
      }
      if (localObject != null)
      {
        d.add(a);
        localObject = cn.s((View)localObject).a(getChangeDuration());
        ((ex)localObject).b(e - c);
        ((ex)localObject).c(f - d);
        ((ex)localObject).a(0.0F).a(new v(this, paramx, (ex)localObject)).c();
      }
      if (localView != null)
      {
        d.add(b);
        localObject = cn.s(localView);
        ((ex)localObject).b(0.0F).c(0.0F).a(getChangeDuration()).a(1.0F).a(new w(this, paramx, (ex)localObject, localView)).c();
      }
      return;
    }
  }
  
  void a(List<RecyclerView.ViewHolder> paramList)
  {
    int m = paramList.size() - 1;
    while (m >= 0)
    {
      cn.s(getitemView).b();
      m -= 1;
    }
  }
  
  public boolean animateAdd(RecyclerView.ViewHolder paramViewHolder)
  {
    endAnimation(paramViewHolder);
    cn.a(itemView, itemView.getWidth());
    f.add(paramViewHolder);
    return true;
  }
  
  public boolean animateChange(RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = cn.o(itemView);
    float f2 = cn.p(itemView);
    float f3 = cn.f(itemView);
    endAnimation(paramViewHolder1);
    int m = (int)(paramInt3 - paramInt1 - f1);
    int n = (int)(paramInt4 - paramInt2 - f2);
    cn.a(itemView, f1);
    cn.b(itemView, f2);
    cn.c(itemView, f3);
    if ((paramViewHolder2 != null) && (itemView != null))
    {
      endAnimation(paramViewHolder2);
      cn.a(itemView, -m);
      cn.b(itemView, -n);
      cn.c(itemView, 0.0F);
    }
    h.add(new x(paramViewHolder1, paramViewHolder2, paramInt1, paramInt2, paramInt3, paramInt4, null));
    return true;
  }
  
  public boolean animateMove(RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = itemView;
    paramInt1 = (int)(paramInt1 + cn.o(itemView));
    paramInt2 = (int)(paramInt2 + cn.p(itemView));
    endAnimation(paramViewHolder);
    int m = paramInt3 - paramInt1;
    int n = paramInt4 - paramInt2;
    if ((m == 0) && (n == 0))
    {
      dispatchMoveFinished(paramViewHolder);
      return false;
    }
    if (m != 0) {
      cn.a(localView, -m);
    }
    if (n != 0) {
      cn.b(localView, -n);
    }
    g.add(new y(paramViewHolder, paramInt1, paramInt2, paramInt3, paramInt4, null));
    return true;
  }
  
  public boolean animateRemove(RecyclerView.ViewHolder paramViewHolder)
  {
    endAnimation(paramViewHolder);
    e.add(paramViewHolder);
    return true;
  }
  
  public void b(int paramInt)
  {
    l = paramInt;
  }
  
  protected void b(RecyclerView.ViewHolder paramViewHolder)
  {
    ex localex = cn.s(itemView);
    localex.a(getRemoveDuration()).a(0.0F).a(new s(this, paramViewHolder, localex)).c();
    c.add(paramViewHolder);
  }
  
  public void endAnimation(RecyclerView.ViewHolder paramViewHolder)
  {
    View localView = itemView;
    cn.s(localView).b();
    int m = g.size() - 1;
    while (m >= 0)
    {
      if (g.get(m)).a == paramViewHolder)
      {
        cn.b(localView, 0.0F);
        cn.a(localView, 0.0F);
        dispatchMoveFinished(paramViewHolder);
        g.remove(m);
      }
      m -= 1;
    }
    a(h, paramViewHolder);
    if (e.remove(paramViewHolder))
    {
      cn.c(localView, 1.0F);
      dispatchRemoveFinished(paramViewHolder);
    }
    if (f.remove(paramViewHolder))
    {
      cn.c(localView, 1.0F);
      dispatchAddFinished(paramViewHolder);
    }
    m = k.size() - 1;
    ArrayList localArrayList;
    while (m >= 0)
    {
      localArrayList = (ArrayList)k.get(m);
      a(localArrayList, paramViewHolder);
      if (localArrayList.isEmpty()) {
        k.remove(m);
      }
      m -= 1;
    }
    m = j.size() - 1;
    if (m >= 0)
    {
      localArrayList = (ArrayList)j.get(m);
      int n = localArrayList.size() - 1;
      for (;;)
      {
        if (n >= 0)
        {
          if (geta != paramViewHolder) {
            break label293;
          }
          cn.b(localView, 0.0F);
          cn.a(localView, 0.0F);
          dispatchMoveFinished(paramViewHolder);
          localArrayList.remove(n);
          if (localArrayList.isEmpty()) {
            j.remove(m);
          }
        }
        m -= 1;
        break;
        label293:
        n -= 1;
      }
    }
    m = i.size() - 1;
    while (m >= 0)
    {
      localArrayList = (ArrayList)i.get(m);
      if (localArrayList.remove(paramViewHolder))
      {
        cn.c(localView, 1.0F);
        dispatchAddFinished(paramViewHolder);
        if (localArrayList.isEmpty()) {
          i.remove(m);
        }
      }
      m -= 1;
    }
    if ((!c.remove(paramViewHolder)) || ((!a.remove(paramViewHolder)) || ((!d.remove(paramViewHolder)) || (b.remove(paramViewHolder))))) {}
    a();
  }
  
  public void endAnimations()
  {
    int m = g.size() - 1;
    Object localObject1;
    Object localObject2;
    while (m >= 0)
    {
      localObject1 = (y)g.get(m);
      localObject2 = a.itemView;
      cn.b((View)localObject2, 0.0F);
      cn.a((View)localObject2, 0.0F);
      dispatchMoveFinished(a);
      g.remove(m);
      m -= 1;
    }
    m = e.size() - 1;
    while (m >= 0)
    {
      dispatchRemoveFinished((RecyclerView.ViewHolder)e.get(m));
      e.remove(m);
      m -= 1;
    }
    m = f.size() - 1;
    while (m >= 0)
    {
      localObject1 = (RecyclerView.ViewHolder)f.get(m);
      cn.c(itemView, 1.0F);
      dispatchAddFinished((RecyclerView.ViewHolder)localObject1);
      f.remove(m);
      m -= 1;
    }
    m = h.size() - 1;
    while (m >= 0)
    {
      b((x)h.get(m));
      m -= 1;
    }
    h.clear();
    if (!isRunning()) {
      return;
    }
    m = j.size() - 1;
    int n;
    while (m >= 0)
    {
      localObject1 = (ArrayList)j.get(m);
      n = ((ArrayList)localObject1).size() - 1;
      while (n >= 0)
      {
        localObject2 = (y)((ArrayList)localObject1).get(n);
        View localView = a.itemView;
        cn.b(localView, 0.0F);
        cn.a(localView, 0.0F);
        dispatchMoveFinished(a);
        ((ArrayList)localObject1).remove(n);
        if (((ArrayList)localObject1).isEmpty()) {
          j.remove(localObject1);
        }
        n -= 1;
      }
      m -= 1;
    }
    m = i.size() - 1;
    while (m >= 0)
    {
      localObject1 = (ArrayList)i.get(m);
      n = ((ArrayList)localObject1).size() - 1;
      while (n >= 0)
      {
        localObject2 = (RecyclerView.ViewHolder)((ArrayList)localObject1).get(n);
        cn.c(itemView, 1.0F);
        dispatchAddFinished((RecyclerView.ViewHolder)localObject2);
        ((ArrayList)localObject1).remove(n);
        if (((ArrayList)localObject1).isEmpty()) {
          i.remove(localObject1);
        }
        n -= 1;
      }
      m -= 1;
    }
    m = k.size() - 1;
    while (m >= 0)
    {
      localObject1 = (ArrayList)k.get(m);
      n = ((ArrayList)localObject1).size() - 1;
      while (n >= 0)
      {
        b((x)((ArrayList)localObject1).get(n));
        if (((ArrayList)localObject1).isEmpty()) {
          k.remove(localObject1);
        }
        n -= 1;
      }
      m -= 1;
    }
    a(c);
    a(b);
    a(a);
    a(d);
    dispatchAnimationsFinished();
  }
  
  public boolean isRunning()
  {
    return (!f.isEmpty()) || (!h.isEmpty()) || (!g.isEmpty()) || (!e.isEmpty()) || (!b.isEmpty()) || (!c.isEmpty()) || (!a.isEmpty()) || (!d.isEmpty()) || (!j.isEmpty()) || (!i.isEmpty()) || (!k.isEmpty());
  }
  
  public void runPendingAnimations()
  {
    int m;
    int n;
    label24:
    int i1;
    if (!e.isEmpty())
    {
      m = 1;
      if (g.isEmpty()) {
        break label72;
      }
      n = 1;
      if (h.isEmpty()) {
        break label77;
      }
      i1 = 1;
      label36:
      if (f.isEmpty()) {
        break label82;
      }
    }
    label72:
    label77:
    label82:
    for (int i2 = 1;; i2 = 0)
    {
      if ((m != 0) || (n != 0) || (i2 != 0) || (i1 != 0)) {
        break label88;
      }
      return;
      m = 0;
      break;
      n = 0;
      break label24;
      i1 = 0;
      break label36;
    }
    label88:
    Object localObject1 = e.iterator();
    while (((Iterator)localObject1).hasNext()) {
      b((RecyclerView.ViewHolder)((Iterator)localObject1).next());
    }
    e.clear();
    Object localObject2;
    label211:
    label291:
    long l1;
    label366:
    long l2;
    if (n != 0)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(g);
      j.add(localObject1);
      g.clear();
      localObject2 = new o(this, (ArrayList)localObject1);
      if (m != 0) {
        cn.a(get0a.itemView, (Runnable)localObject2, getRemoveDuration());
      }
    }
    else
    {
      if (i1 != 0)
      {
        localObject1 = new ArrayList();
        ((ArrayList)localObject1).addAll(h);
        k.add(localObject1);
        h.clear();
        localObject2 = new p(this, (ArrayList)localObject1);
        if (m == 0) {
          break label428;
        }
        cn.a(get0a.itemView, (Runnable)localObject2, getRemoveDuration());
      }
      if (i2 == 0) {
        break label436;
      }
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(f);
      i.add(localObject1);
      f.clear();
      localObject2 = new q(this, (ArrayList)localObject1);
      if ((m == 0) && (n == 0) && (i1 == 0)) {
        break label456;
      }
      if (m == 0) {
        break label438;
      }
      l1 = getRemoveDuration();
      if (n == 0) {
        break label444;
      }
      l2 = getMoveDuration();
      label376:
      if (i1 == 0) {
        break label450;
      }
    }
    label428:
    label436:
    label438:
    label444:
    label450:
    for (long l3 = getChangeDuration();; l3 = 0L)
    {
      l2 = Math.max(l2, l3);
      cn.a(get0itemView, (Runnable)localObject2, l1 + l2);
      return;
      ((Runnable)localObject2).run();
      break label211;
      ((Runnable)localObject2).run();
      break label291;
      break;
      l1 = 0L;
      break label366;
      l2 = 0L;
      break label376;
    }
    label456:
    ((Runnable)localObject2).run();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */