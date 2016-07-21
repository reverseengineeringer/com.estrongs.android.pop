package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.theme.at;
import java.util.List;
import java.util.Map;

public abstract class f
  extends a
{
  protected String[] h;
  protected final int i = 5;
  protected final String j = "extra";
  private SparseArray<l> k = new SparseArray();
  private int l = 0;
  private int m = -1;
  private boolean n = false;
  private boolean o = true;
  private com.estrongs.android.view.a.a p = new com.estrongs.android.view.a.a(2130838565, 2131231405).a(new g(this));
  private com.estrongs.android.view.a.a q = new com.estrongs.android.view.a.a(2130838565, 2131231405).a(new h(this));
  private ka r;
  private View.OnClickListener s = new i(this);
  private View.OnLongClickListener t = new j(this);
  
  public f(Context paramContext, boolean paramBoolean)
  {
    this(paramContext, paramBoolean, true);
  }
  
  public f(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext, paramBoolean1);
    h();
    o = paramBoolean2;
    int i1 = f.c(2131558745);
    if (!o) {
      i1 = f.c(2131558718);
    }
    b(i1);
  }
  
  private void b(boolean paramBoolean)
  {
    if (!n) {
      return;
    }
    l locall = (l)k.get(4);
    if (paramBoolean)
    {
      a(locall, q, 4);
      a.set(4, q);
      return;
    }
    a(locall, p, 4);
    a.set(4, p);
  }
  
  private void f(int paramInt)
  {
    if (paramInt > 5) {
      throw new IllegalStateException("Can't show more than 5 items in the bottom toolbar!");
    }
    if (l > paramInt)
    {
      i1 = paramInt;
      while (i1 < l)
      {
        ((l)k.get(i1)).b();
        i1 += 1;
      }
    }
    int i1 = l;
    if (i1 < paramInt)
    {
      l locall = (l)k.get(i1);
      if (locall == null)
      {
        locall = c(i1);
        k.put(i1, locall);
      }
      for (;;)
      {
        i1 += 1;
        break;
        locall.a();
      }
    }
    l = paramInt;
  }
  
  private void k()
  {
    a.clear();
    Map localMap = i();
    if ((localMap == null) || (localMap.isEmpty())) {
      throw new IllegalStateException("MenuItemMap is not inited correctly!");
    }
    int i1 = 0;
    while (i1 < h.length)
    {
      String str = h[i1];
      com.estrongs.android.view.a.a locala;
      if (str.equals("extra"))
      {
        locala = p;
        n = true;
      }
      while (locala == null)
      {
        throw new IllegalStateException("Can't find toolbar item : " + str);
        locala = (com.estrongs.android.view.a.a)localMap.get(str);
      }
      a.add(locala);
      i1 += 1;
    }
    if (n) {
      a.add(4, p);
    }
  }
  
  private void l()
  {
    r = new k(this, b, d);
  }
  
  protected void a(l paraml, com.estrongs.android.view.a.a parama, int paramInt)
  {
    Button localButton = b;
    boolean bool = parama.isEnabled();
    Object localObject2 = parama.getIcon();
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = d(parama.b());
      ((Drawable)localObject1).mutate();
      parama.a((Drawable)localObject1);
    }
    if (parama.h() != 0)
    {
      localObject2 = com.estrongs.android.ui.d.g.a((Drawable)localObject1, parama.h());
      paramInt = b.getResources().getDimensionPixelSize(2131165273);
      ((Drawable)localObject2).setBounds(0, 0, paramInt, paramInt);
      if (!ad.a(b).at()) {
        break label187;
      }
      localButton.setCompoundDrawables(null, (Drawable)localObject2, null, null);
      localObject1 = parama.getTitle();
      if (localObject1 != null) {
        break label177;
      }
      localButton.setText(parama.a());
    }
    for (;;)
    {
      if (!bool) {
        break label217;
      }
      paraml.a(true);
      ((Drawable)localObject2).setAlpha(255);
      return;
      localObject2 = localObject1;
      if (g == 0) {
        break;
      }
      localObject2 = com.estrongs.android.ui.d.g.a((Drawable)localObject1, g);
      break;
      label177:
      localButton.setText((CharSequence)localObject1);
      continue;
      label187:
      localButton.setPadding(0, 0, 0, 0);
      localButton.setCompoundDrawables((Drawable)localObject2, null, null, null);
      localButton.setText("");
    }
    label217:
    paraml.a(false);
    ((Drawable)localObject2).setAlpha(120);
  }
  
  public void a(boolean paramBoolean, String... paramVarArgs)
  {
    if (paramVarArgs == null) {
      return;
    }
    int i2 = 0;
    label8:
    Object localObject1;
    int i1;
    if (i2 < paramVarArgs.length)
    {
      localObject1 = paramVarArgs[i2];
      i1 = 0;
      label23:
      if (i1 >= h.length) {
        break label292;
      }
      if (!h[i1].equals(localObject1)) {
        break label99;
      }
    }
    for (;;)
    {
      int i3 = i1;
      if (i1 == -1)
      {
        if ("extra".equals(localObject1)) {
          i3 = 4;
        }
      }
      else {
        if ((!n) || (i3 != 4) || ("extra".equals(localObject1))) {
          break label136;
        }
      }
      for (;;)
      {
        i2 += 1;
        break label8;
        break;
        label99:
        i1 += 1;
        break label23;
        com.estrongs.android.util.l.e("ESMenu", "Only menuItems that are shown can be disabled:" + (String)localObject1);
        continue;
        label136:
        localObject1 = (l)k.get(i3);
        Object localObject2;
        if (paramBoolean)
        {
          b.setTextColor(f.c(2131558722));
          ((l)localObject1).a(true);
          localObject1 = b.getCompoundDrawables();
          i3 = localObject1.length;
          i1 = 0;
          while (i1 < i3)
          {
            localObject2 = localObject1[i1];
            if (localObject2 != null) {
              ((Drawable)localObject2).setAlpha(255);
            }
            i1 += 1;
          }
        }
        else
        {
          ((l)localObject1).a(false);
          b.setTextColor(-7829368);
          localObject1 = b.getCompoundDrawables();
          i3 = localObject1.length;
          i1 = 0;
          while (i1 < i3)
          {
            localObject2 = localObject1[i1];
            if (localObject2 != null) {
              ((Drawable)localObject2).setAlpha(120);
            }
            i1 += 1;
          }
        }
      }
      label292:
      i1 = -1;
    }
  }
  
  protected void a(String[] paramArrayOfString)
  {
    int i1 = 5;
    if (paramArrayOfString == null) {
      throw new NullPointerException("MenuSet has not inited!");
    }
    h = paramArrayOfString;
    int i2 = h.length;
    if (i2 > 5) {
      n = true;
    }
    for (;;)
    {
      if (l != i1) {
        f(i1);
      }
      k();
      i1 = 0;
      while (i1 < l)
      {
        a((l)k.get(i1), a(i1), i1);
        i1 += 1;
      }
      n = false;
      i1 = i2;
    }
  }
  
  public void b(String... paramVarArgs)
  {
    a(false, paramVarArgs);
  }
  
  protected l c(int paramInt)
  {
    LinearLayout localLinearLayout = (LinearLayout)com.estrongs.android.pop.esclasses.k.a(b).inflate(2130903324, null);
    Button localButton = (Button)localLinearLayout.findViewById(2131625174);
    localButton.setClickable(false);
    Object localObject = new LinearLayout.LayoutParams(0, -1);
    localButton.setSingleLine();
    weight = 1.0F;
    ((LinearLayout)c).addView(localLinearLayout, paramInt, (ViewGroup.LayoutParams)localObject);
    localObject = new l(this);
    a = localLinearLayout;
    b = localButton;
    a.setTag(Integer.valueOf(paramInt));
    a.setOnClickListener(s);
    a.setOnLongClickListener(t);
    a.setFocusable(true);
    if (m != -1) {
      b.setTextColor(b.getResources().getColor(m));
    }
    return (l)localObject;
  }
  
  protected Drawable d(int paramInt)
  {
    return f.b(paramInt);
  }
  
  public void e(int paramInt)
  {
    m = paramInt;
  }
  
  public boolean e()
  {
    return super.e();
  }
  
  public boolean f()
  {
    if (n)
    {
      l locall = (l)k.get(4);
      if ((locall != null) && (a.isEnabled())) {
        p.f();
      }
      return true;
    }
    return super.f();
  }
  
  public void g()
  {
    super.g();
    if ((n) && (r != null) && (r.c())) {
      r.d();
    }
  }
  
  protected abstract void h();
  
  protected abstract Map<String, com.estrongs.android.view.a.a> i();
  
  public void j()
  {
    if (n)
    {
      if ((r != null) && (r.c())) {
        r.d();
      }
      b(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */