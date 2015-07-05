package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.view.a.a;
import java.util.LinkedList;
import java.util.List;

public abstract class ck
  implements jj
{
  protected List<a> a = new LinkedList();
  private Context b;
  private int c;
  private int d;
  private View e;
  private LinearLayout f;
  private LinearLayout g;
  private SparseArray<cn> h = new SparseArray();
  private al i;
  private View.OnClickListener j = new cl(this);
  private View.OnLongClickListener k = new cm(this);
  
  public ck(Context paramContext, int paramInt)
  {
    b = paramContext;
    c = paramInt;
    i = al.a(b);
    b();
  }
  
  private void a(a parama, cn paramcn, boolean paramBoolean)
  {
    Button localButton = cn.a(paramcn);
    Drawable localDrawable = parama.getIcon();
    Object localObject = localDrawable;
    if (localDrawable == null)
    {
      localObject = i.c(parama.b());
      ((Drawable)localObject).mutate();
      parama.a((Drawable)localObject);
    }
    int m = b.getResources().getDimensionPixelSize(2131296262);
    ((Drawable)localObject).setBounds(0, 0, m, m);
    ((Drawable)localObject).clearColorFilter();
    localButton.setCompoundDrawables((Drawable)localObject, null, null, null);
    localObject = parama.getTitle();
    if (localObject == null) {
      localButton.setText(parama.a());
    }
    for (;;)
    {
      paramcn.b();
      return;
      localButton.setText((CharSequence)localObject);
    }
  }
  
  private void b()
  {
    e = g.a(b).inflate(2130903111, null);
    f = ((LinearLayout)e.findViewById(2131361980));
    g = ((LinearLayout)e.findViewById(2131362154));
  }
  
  private void c(int paramInt)
  {
    int m;
    if (paramInt > d)
    {
      m = d * 2;
      if (m < paramInt * 2)
      {
        cn localcn2 = (cn)h.get(m);
        cn localcn1 = localcn2;
        if (localcn2 == null)
        {
          localcn1 = a(m);
          h.put(m, localcn1);
          if (m % 2 != 0) {
            break label86;
          }
          f.addView(cn.b(localcn1));
        }
        for (;;)
        {
          localcn1.a();
          m += 1;
          break;
          label86:
          g.addView(cn.b(localcn1));
        }
      }
    }
    else if (paramInt < d)
    {
      m = paramInt * 2;
      while (m < d * 2)
      {
        ((cn)h.get(m)).c();
        m += 1;
      }
    }
    d = paramInt;
  }
  
  public View a()
  {
    return e;
  }
  
  protected cn a(int paramInt)
  {
    LinearLayout localLinearLayout = (LinearLayout)g.a(b).inflate(2130903172, null);
    Button localButton = (Button)localLinearLayout.findViewById(2131362073);
    localLinearLayout.findViewById(2131362075);
    cn localcn = new cn(this);
    cn.a(localcn, localLinearLayout);
    cn.a(localcn, localButton);
    cn.a(localcn).setTag(Integer.valueOf(paramInt));
    cn.a(localcn).setOnClickListener(j);
    cn.a(localcn).setOnLongClickListener(k);
    return localcn;
  }
  
  public abstract void a(int paramInt, a parama);
  
  public void a(List<a> paramList)
  {
    a = paramList;
    int n = paramList.size();
    int m = (n + 1) / 2;
    if (m != d) {
      c(m);
    }
    m = 0;
    if (m < n)
    {
      a locala = (a)paramList.get(m);
      cn localcn = (cn)h.get(m);
      if (m / 2 + 1 == d) {}
      for (boolean bool = true;; bool = false)
      {
        a(locala, localcn, bool);
        m += 1;
        break;
      }
    }
    if (n % 2 == 1)
    {
      paramList = (cn)h.get(n);
      if (paramList != null) {
        paramList.a();
      }
    }
  }
  
  public a b(int paramInt)
  {
    try
    {
      a locala = (a)a.get(paramInt);
      return locala;
    }
    catch (Exception localException) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */