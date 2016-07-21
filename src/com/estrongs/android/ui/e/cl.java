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
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import java.util.LinkedList;
import java.util.List;

public abstract class cl
  implements kh
{
  protected List<com.estrongs.android.view.a.a> a = new LinkedList();
  private Context b;
  private int c;
  private int d;
  private View e;
  private LinearLayout f;
  private LinearLayout g;
  private SparseArray<co> h = new SparseArray();
  private at i;
  private View.OnClickListener j = new cm(this);
  private View.OnLongClickListener k = new cn(this);
  
  public cl(Context paramContext, int paramInt)
  {
    b = paramContext;
    c = paramInt;
    i = at.a(b);
    b();
  }
  
  private void a(com.estrongs.android.view.a.a parama, co paramco, boolean paramBoolean)
  {
    Button localButton = co.a(paramco);
    Object localObject = parama.getIcon();
    if (localObject == null)
    {
      localObject = g.a(i.a(parama.b()), i.c(2131558714));
      parama.a((Drawable)localObject);
      int m = b.getResources().getDimensionPixelSize(2131165273);
      ((Drawable)localObject).setBounds(0, 0, m, m);
      localButton.setCompoundDrawables((Drawable)localObject, null, null, null);
      localObject = parama.getTitle();
      if (localObject != null) {
        break label153;
      }
      localButton.setText(parama.a());
    }
    for (;;)
    {
      paramco.b();
      return;
      if ((localObject instanceof DrawableWrapper))
      {
        android.support.v4.b.a.a.a((Drawable)localObject, i.c(2131558714));
        break;
      }
      localObject = g.a((Drawable)localObject, i.c(2131558714));
      break;
      label153:
      localButton.setText((CharSequence)localObject);
    }
  }
  
  private void b()
  {
    e = k.a(b).inflate(2130903200, null);
    f = ((LinearLayout)e.findViewById(2131623976));
    g = ((LinearLayout)e.findViewById(2131623977));
  }
  
  private void c(int paramInt)
  {
    int m;
    if (paramInt > d)
    {
      m = d * 2;
      if (m < paramInt * 2)
      {
        co localco2 = (co)h.get(m);
        co localco1 = localco2;
        if (localco2 == null)
        {
          localco1 = a(m);
          h.put(m, localco1);
          if (m % 2 != 0) {
            break label86;
          }
          f.addView(co.b(localco1));
        }
        for (;;)
        {
          localco1.a();
          m += 1;
          break;
          label86:
          g.addView(co.b(localco1));
        }
      }
    }
    else if (paramInt < d)
    {
      m = paramInt * 2;
      while (m < d * 2)
      {
        ((co)h.get(m)).c();
        m += 1;
      }
    }
    d = paramInt;
  }
  
  public View a()
  {
    return e;
  }
  
  protected co a(int paramInt)
  {
    LinearLayout localLinearLayout = (LinearLayout)k.a(b).inflate(2130903284, null);
    Button localButton = (Button)localLinearLayout.findViewById(2131624536);
    localLinearLayout.findViewById(2131624640);
    co localco = new co(this);
    co.a(localco, localLinearLayout);
    co.a(localco, localButton);
    co.a(localco).setTag(Integer.valueOf(paramInt));
    co.a(localco).setOnClickListener(j);
    co.a(localco).setOnLongClickListener(k);
    return localco;
  }
  
  public abstract void a(int paramInt, com.estrongs.android.view.a.a parama);
  
  public void a(List<com.estrongs.android.view.a.a> paramList)
  {
    a = paramList;
    int n = paramList.size();
    int m = (n + 1) / 2;
    if (m != d) {
      c(m);
    }
    m = 0;
    Object localObject;
    if (m < n)
    {
      localObject = (com.estrongs.android.view.a.a)paramList.get(m);
      co localco = (co)h.get(m);
      if (m / 2 + 1 == d) {}
      for (boolean bool = true;; bool = false)
      {
        a((com.estrongs.android.view.a.a)localObject, localco, bool);
        m += 1;
        break;
      }
    }
    if (n % 2 == 1)
    {
      localObject = (co)h.get(n);
      if (localObject != null)
      {
        a((com.estrongs.android.view.a.a)paramList.get(0), (co)localObject, false);
        co.b((co)localObject).setVisibility(4);
      }
    }
  }
  
  public com.estrongs.android.view.a.a b(int paramInt)
  {
    try
    {
      com.estrongs.android.view.a.a locala = (com.estrongs.android.view.a.a)a.get(paramInt);
      return locala;
    }
    catch (Exception localException) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */