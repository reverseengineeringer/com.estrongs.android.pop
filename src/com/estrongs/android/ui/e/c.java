package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.Drawable;
import android.util.Log;
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
import com.estrongs.android.ui.theme.al;
import java.util.List;
import java.util.Map;

public abstract class c
  extends a
{
  protected String[] g;
  protected final int h = 5;
  protected final String i = "extra";
  private SparseArray<i> j = new SparseArray();
  private int k = 0;
  private boolean l = false;
  private com.estrongs.android.view.a.a m = new com.estrongs.android.view.a.a(2130838203, 2131428057).a(new d(this));
  private com.estrongs.android.view.a.a n = new com.estrongs.android.view.a.a(2130838204, 2131428057).a(new e(this));
  private jc o;
  private View.OnClickListener p = new f(this);
  private View.OnLongClickListener q = new g(this);
  
  public c(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, paramBoolean);
    h();
  }
  
  private void b(boolean paramBoolean)
  {
    if (!l) {
      return;
    }
    i locali = (i)j.get(4);
    if (paramBoolean)
    {
      a(locali, n, 4);
      a.set(4, n);
      return;
    }
    a(locali, m, 4);
    a.set(4, m);
  }
  
  private void d(int paramInt)
  {
    if (paramInt > 5) {
      throw new IllegalStateException("Can't show more than 5 items in the bottom toolbar!");
    }
    if (k > paramInt)
    {
      i1 = paramInt;
      while (i1 < k)
      {
        ((i)j.get(i1)).b();
        i1 += 1;
      }
    }
    int i1 = k;
    if (i1 < paramInt)
    {
      i locali = (i)j.get(i1);
      if (locali == null)
      {
        locali = b(i1);
        j.put(i1, locali);
      }
      for (;;)
      {
        i1 += 1;
        break;
        locali.a();
      }
    }
    k = paramInt;
  }
  
  private void k()
  {
    a.clear();
    Map localMap = i();
    if ((localMap == null) || (localMap.isEmpty())) {
      throw new IllegalStateException("MenuItemMap is not inited correctly!");
    }
    int i1 = 0;
    while (i1 < g.length)
    {
      String str = g[i1];
      com.estrongs.android.view.a.a locala;
      if (str.equals("extra"))
      {
        locala = m;
        l = true;
      }
      while (locala == null)
      {
        throw new IllegalStateException("Can't find toolbar item : " + str);
        locala = (com.estrongs.android.view.a.a)localMap.get(str);
      }
      a.add(locala);
      i1 += 1;
    }
    if (l) {
      a.add(4, m);
    }
  }
  
  private void l()
  {
    o = new h(this, b, d);
  }
  
  protected void a(i parami, com.estrongs.android.view.a.a parama, int paramInt)
  {
    Button localButton = b;
    Drawable localDrawable = parama.getIcon();
    Object localObject = localDrawable;
    if (localDrawable == null)
    {
      localObject = c(parama.b());
      ((Drawable)localObject).mutate();
      parama.a((Drawable)localObject);
    }
    paramInt = b.getResources().getDimensionPixelSize(2131296262);
    ((Drawable)localObject).setBounds(0, 0, paramInt, paramInt);
    ((Drawable)localObject).clearColorFilter();
    if (ad.a(b).as())
    {
      localButton.setPadding(0, com.estrongs.android.ui.d.a.a(b, 7.0F), 0, 0);
      localButton.setCompoundDrawables(null, (Drawable)localObject, null, null);
      localObject = parama.getTitle();
      if (localObject == null) {
        localButton.setText(parama.a());
      }
    }
    for (;;)
    {
      parama.c(f.d(2131230736));
      localButton.setTextColor(f.d(2131230736));
      parami.a(true);
      return;
      localButton.setText((CharSequence)localObject);
      continue;
      localButton.setPadding(0, 0, 0, 0);
      localButton.setCompoundDrawables((Drawable)localObject, null, null, null);
      localButton.setText("");
    }
  }
  
  public void a(boolean paramBoolean, String... paramVarArgs)
  {
    int i2 = 0;
    Object localObject1;
    int i1;
    if (i2 < paramVarArgs.length)
    {
      localObject1 = paramVarArgs[i2];
      i1 = 0;
      label18:
      if (i1 >= g.length) {
        break label300;
      }
      if (!g[i1].equals(localObject1)) {}
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
        if ((!l) || (i3 != 4) || ("extra".equals(localObject1))) {
          break label132;
        }
      }
      for (;;)
      {
        i2 += 1;
        break;
        i1 += 1;
        break label18;
        Log.e("ESMenu", "Only menuItems that are shown can be disabled:" + (String)localObject1);
        continue;
        label132:
        Object localObject2 = (i)j.get(i3);
        if (paramBoolean)
        {
          b.setTextColor(f.d(2131230736));
          ((i)localObject2).a(true);
          localObject1 = b.getCompoundDrawables();
          i3 = localObject1.length;
          i1 = 0;
          while (i1 < i3)
          {
            localObject2 = localObject1[i1];
            if (localObject2 != null) {
              ((Drawable)localObject2).setColorFilter(null);
            }
            i1 += 1;
          }
        }
        else
        {
          ((i)localObject2).a(false);
          b.setTextColor(-7829368);
          localObject1 = new LightingColorFilter(1, -7829368);
          localObject2 = b.getCompoundDrawables();
          i3 = localObject2.length;
          i1 = 0;
          while (i1 < i3)
          {
            Object localObject3 = localObject2[i1];
            if (localObject3 != null) {
              ((Drawable)localObject3).setColorFilter((ColorFilter)localObject1);
            }
            i1 += 1;
          }
        }
      }
      return;
      label300:
      i1 = -1;
    }
  }
  
  protected void a(String[] paramArrayOfString)
  {
    int i1 = 5;
    if (paramArrayOfString == null) {
      throw new NullPointerException("MenuSet has not inited!");
    }
    g = paramArrayOfString;
    int i2 = g.length;
    if (i2 > 5) {
      l = true;
    }
    for (;;)
    {
      if (k != i1) {
        d(i1);
      }
      k();
      i1 = 0;
      while (i1 < k)
      {
        a((i)j.get(i1), a(i1), i1);
        i1 += 1;
      }
      l = false;
      i1 = i2;
    }
  }
  
  protected String[] a(String[] paramArrayOfString, String paramString)
  {
    int i2 = 0;
    int i1 = 0;
    if (i1 < paramArrayOfString.length) {
      if (!paramArrayOfString[i1].equals(paramString)) {}
    }
    for (;;)
    {
      if (i1 == -1)
      {
        return paramArrayOfString;
        i1 += 1;
        break;
      }
      paramString = new String[paramArrayOfString.length - 1];
      int i3 = 0;
      if (i2 < paramArrayOfString.length)
      {
        if (i2 == i1) {}
        for (;;)
        {
          i2 += 1;
          break;
          paramString[i3] = paramArrayOfString[i2];
          i3 += 1;
        }
      }
      return paramString;
      i1 = -1;
    }
  }
  
  protected String[] a(String[] paramArrayOfString, String paramString, int paramInt)
  {
    int i2 = 0;
    if (paramInt > paramArrayOfString.length) {
      throw new IllegalStateException("Error occured when making a new MenuSet. Illegal index!");
    }
    int i3 = paramArrayOfString.length + 1;
    String[] arrayOfString = new String[i3];
    int i1 = paramInt;
    if (paramInt < 0) {
      i1 = i3 - 1;
    }
    paramInt = 0;
    if (paramInt < i3)
    {
      if (paramInt == i1) {
        arrayOfString[paramInt] = paramString;
      }
      for (;;)
      {
        paramInt += 1;
        break;
        arrayOfString[paramInt] = paramArrayOfString[i2];
        i2 += 1;
      }
    }
    return arrayOfString;
  }
  
  protected String[] a(String[] paramArrayOfString, String paramString1, String paramString2)
  {
    String[] arrayOfString = new String[paramArrayOfString.length];
    int i1 = 0;
    if (i1 < paramArrayOfString.length)
    {
      if (paramArrayOfString[i1].equals(paramString1)) {
        arrayOfString[i1] = paramString2;
      }
      for (;;)
      {
        i1 += 1;
        break;
        arrayOfString[i1] = paramArrayOfString[i1];
      }
    }
    return arrayOfString;
  }
  
  protected i b(int paramInt)
  {
    LinearLayout localLinearLayout = (LinearLayout)com.estrongs.android.pop.esclasses.g.a(b).inflate(2130903188, null);
    Button localButton = (Button)localLinearLayout.findViewById(2131362472);
    localButton.setClickable(false);
    Object localObject;
    if (d)
    {
      localObject = new LinearLayout.LayoutParams(0, -1);
      localButton.setSingleLine();
    }
    for (;;)
    {
      weight = 1.0F;
      ((LinearLayout)c).addView(localLinearLayout, paramInt, (ViewGroup.LayoutParams)localObject);
      localObject = new i(this);
      a = localLinearLayout;
      b = localButton;
      a.setTag(Integer.valueOf(paramInt));
      a.setOnClickListener(p);
      a.setOnLongClickListener(q);
      a.setFocusable(true);
      return (i)localObject;
      localObject = new LinearLayout.LayoutParams(-1, 0);
      localButton.setMaxLines(2);
      localButton.setLines(2);
    }
  }
  
  public void b(String... paramVarArgs)
  {
    a(false, paramVarArgs);
  }
  
  protected Drawable c(int paramInt)
  {
    return f.c(paramInt);
  }
  
  public boolean e()
  {
    return super.e();
  }
  
  public boolean f()
  {
    if (l)
    {
      i locali = (i)j.get(4);
      if ((locali != null) && (a.isEnabled())) {
        m.f();
      }
      return true;
    }
    return super.f();
  }
  
  public void g()
  {
    super.g();
    if ((l) && (o != null) && (o.c())) {
      o.d();
    }
  }
  
  protected abstract void h();
  
  protected abstract Map<String, com.estrongs.android.view.a.a> i();
  
  public void j()
  {
    if (l)
    {
      if ((o != null) && (o.c())) {
        o.d();
      }
      b(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */