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
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import java.util.LinkedList;
import java.util.List;

public abstract class kw
  implements kh
{
  private Context a;
  protected List<com.estrongs.android.view.a.a> b = new LinkedList();
  private int c;
  private View d;
  private SparseArray<kz> e = new SparseArray();
  private at f;
  private LinearLayout g;
  private int h;
  private View.OnClickListener i = new kx(this);
  private View.OnLongClickListener j = new ky(this);
  
  public kw(Context paramContext, int paramInt)
  {
    a = paramContext;
    c = paramInt;
    f = at.a(a);
    b();
  }
  
  private void a(com.estrongs.android.view.a.a parama, kz paramkz, boolean paramBoolean)
  {
    Button localButton = kz.b(paramkz);
    Object localObject = parama.getIcon();
    if (localObject == null)
    {
      localObject = g.a(f.a(parama.b()), f.c(2131558714));
      parama.a((Drawable)localObject);
      int k = a.getResources().getDimensionPixelSize(2131165273);
      ((Drawable)localObject).setBounds(0, 0, k, k);
      localButton.setCompoundDrawables((Drawable)localObject, null, null, null);
      localObject = parama.getTitle();
      if (localObject != null) {
        break label152;
      }
      localButton.setText(parama.a());
    }
    for (;;)
    {
      paramkz.a();
      return;
      if ((localObject instanceof DrawableWrapper))
      {
        android.support.v4.b.a.a.a((Drawable)localObject, f.c(2131558714));
        break;
      }
      g.a((Drawable)localObject, f.c(2131558714));
      break;
      label152:
      localButton.setText((CharSequence)localObject);
    }
  }
  
  private void b()
  {
    d = k.a(a).inflate(2130903427, null);
    g = ((LinearLayout)d.findViewById(2131624809));
  }
  
  private void c(int paramInt)
  {
    if (h > paramInt)
    {
      k = paramInt;
      while (k < h)
      {
        ((kz)e.get(k)).b();
        k += 1;
      }
    }
    int k = h;
    if (k < paramInt)
    {
      kz localkz = (kz)e.get(k);
      if (localkz == null)
      {
        localkz = a(k);
        e.put(k, localkz);
        g.addView(kz.a(localkz), new LinearLayout.LayoutParams(-1, a.getResources().getDimensionPixelSize(2131165305)));
      }
      for (;;)
      {
        k += 1;
        break;
        localkz.a();
      }
    }
    h = paramInt;
  }
  
  public View a()
  {
    return d;
  }
  
  protected kz a(int paramInt)
  {
    LinearLayout localLinearLayout = (LinearLayout)k.a(a).inflate(2130903295, null);
    Button localButton = (Button)localLinearLayout.findViewById(2131624536);
    kz localkz = new kz(this);
    kz.a(localkz, localLinearLayout);
    kz.a(localkz, localButton);
    kz.a(localkz).setTag(Integer.valueOf(paramInt));
    kz.a(localkz).setOnClickListener(i);
    kz.a(localkz).setOnLongClickListener(j);
    return localkz;
  }
  
  public abstract void a(int paramInt, com.estrongs.android.view.a.a parama);
  
  public void a(List<com.estrongs.android.view.a.a> paramList)
  {
    b = paramList;
    int m = paramList.size();
    if (m != h) {
      c(m);
    }
    int k = 0;
    if (k < m)
    {
      paramList = (kz)e.get(k);
      com.estrongs.android.view.a.a locala = (com.estrongs.android.view.a.a)b.get(k);
      if (k == 0) {}
      for (boolean bool = true;; bool = false)
      {
        a(locala, paramList, bool);
        k += 1;
        break;
      }
    }
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
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.kw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */