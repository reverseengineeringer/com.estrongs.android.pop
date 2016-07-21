package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v7.graphics.drawable.DrawableWrapper;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.esclasses.ESScrollView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import java.util.LinkedList;
import java.util.List;

public abstract class kr
  implements kh
{
  private Context a;
  protected List<com.estrongs.android.view.a.a> b = new LinkedList();
  boolean c = false;
  private int d;
  private View e;
  private SparseArray<kv> f = new SparseArray();
  private at g;
  private LinearLayout h;
  private int i;
  private ESScrollView j;
  private View k;
  private View l;
  private View.OnClickListener m = new ks(this);
  private View.OnLongClickListener n = new kt(this);
  
  public kr(Context paramContext, int paramInt)
  {
    a = paramContext;
    d = paramInt;
    g = at.a(a);
    e();
  }
  
  private void a(com.estrongs.android.view.a.a parama, kv paramkv, boolean paramBoolean)
  {
    Button localButton = kv.b(paramkv);
    Object localObject = parama.getIcon();
    if (localObject == null)
    {
      localObject = g.a(g.a(parama.b()), g.c(2131558714));
      parama.a((Drawable)localObject);
      int i1 = a.getResources().getDimensionPixelSize(2131165273);
      ((Drawable)localObject).setBounds(0, 0, i1, i1);
      localButton.setCompoundDrawables((Drawable)localObject, null, null, null);
      localObject = parama.getTitle();
      if (localObject != null) {
        break label152;
      }
      localButton.setText(parama.a());
    }
    for (;;)
    {
      paramkv.a();
      return;
      if ((localObject instanceof DrawableWrapper))
      {
        android.support.v4.b.a.a.a((Drawable)localObject, g.c(2131558714));
        break;
      }
      g.a((Drawable)localObject, g.c(2131558714));
      break;
      label152:
      localButton.setText((CharSequence)localObject);
    }
  }
  
  private void c(int paramInt)
  {
    if (i > paramInt)
    {
      i1 = paramInt;
      while (i1 < i)
      {
        ((kv)f.get(i1)).b();
        i1 += 1;
      }
    }
    int i1 = i;
    if (i1 < paramInt)
    {
      kv localkv = (kv)f.get(i1);
      if (localkv == null)
      {
        localkv = a(i1);
        f.put(i1, localkv);
        h.addView(kv.a(localkv), 0, new LinearLayout.LayoutParams(-1, a.getResources().getDimensionPixelSize(2131165305)));
      }
      for (;;)
      {
        i1 += 1;
        break;
        localkv.a();
      }
    }
    i = paramInt;
  }
  
  private void e()
  {
    e = k.a(a).inflate(2130903426, null);
    j = ((ESScrollView)e.findViewById(2131624808));
    k = e.findViewById(2131624807);
    l = e.findViewById(2131624810);
    j.getView();
    j.setOnScrollListener(new ku(this));
    h = ((LinearLayout)e.findViewById(2131624809));
  }
  
  public View a()
  {
    return e;
  }
  
  protected kv a(int paramInt)
  {
    LinearLayout localLinearLayout = (LinearLayout)k.a(a).inflate(2130903295, null);
    Button localButton = (Button)localLinearLayout.findViewById(2131624536);
    kv localkv = new kv(this);
    kv.a(localkv, localLinearLayout);
    kv.a(localkv, localButton);
    kv.a(localkv).setTag(Integer.valueOf(paramInt));
    kv.a(localkv).setOnClickListener(m);
    kv.a(localkv).setOnLongClickListener(n);
    return localkv;
  }
  
  public abstract void a(int paramInt, com.estrongs.android.view.a.a parama);
  
  public void a(List<com.estrongs.android.view.a.a> paramList)
  {
    b = paramList;
    int i2 = paramList.size();
    if (i2 != i) {
      c(i2);
    }
    int i1 = 0;
    if (i1 < i2)
    {
      paramList = (kv)f.get(i1);
      com.estrongs.android.view.a.a locala = (com.estrongs.android.view.a.a)b.get(i1);
      if (i1 == 0) {}
      for (boolean bool = true;; bool = false)
      {
        a(locala, paramList, bool);
        i1 += 1;
        break;
      }
    }
    b();
  }
  
  public com.estrongs.android.view.a.a b(int paramInt)
  {
    try
    {
      com.estrongs.android.view.a.a locala = (com.estrongs.android.view.a.a)b.get(paramInt);
      return locala;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public void b()
  {
    h.setVisibility(0);
    ESScrollView.a(j, h);
    k.setVisibility(8);
    l.setVisibility(8);
    c = false;
  }
  
  public void c()
  {
    ESScrollView.a(j, h);
  }
  
  public void d() {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.kr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */