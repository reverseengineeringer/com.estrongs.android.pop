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
import com.estrongs.android.pop.esclasses.ESScrollView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.view.a.a;
import java.util.LinkedList;
import java.util.List;

public abstract class jp
  implements jj
{
  private Context a;
  protected List<a> b = new LinkedList();
  boolean c = false;
  private int d;
  private View e;
  private SparseArray<jt> f = new SparseArray();
  private al g;
  private LinearLayout h;
  private int i;
  private ESScrollView j;
  private View k;
  private View l;
  private View.OnClickListener m = new jq(this);
  private View.OnLongClickListener n = new jr(this);
  
  public jp(Context paramContext, int paramInt)
  {
    a = paramContext;
    d = paramInt;
    g = al.a(a);
    e();
  }
  
  private void a(a parama, jt paramjt, boolean paramBoolean)
  {
    Button localButton = jt.b(paramjt);
    Drawable localDrawable = parama.getIcon();
    Object localObject = localDrawable;
    if (localDrawable == null)
    {
      localObject = g.c(parama.b());
      ((Drawable)localObject).mutate();
      parama.a((Drawable)localObject);
    }
    int i1 = a.getResources().getDimensionPixelSize(2131296262);
    ((Drawable)localObject).setBounds(0, 0, i1, i1);
    ((Drawable)localObject).clearColorFilter();
    localButton.setCompoundDrawables((Drawable)localObject, null, null, null);
    localObject = parama.getTitle();
    if (localObject == null) {
      localButton.setText(parama.a());
    }
    for (;;)
    {
      paramjt.a();
      return;
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
        ((jt)f.get(i1)).b();
        i1 += 1;
      }
    }
    int i1 = i;
    if (i1 < paramInt)
    {
      jt localjt = (jt)f.get(i1);
      if (localjt == null)
      {
        localjt = a(i1);
        f.put(i1, localjt);
        h.addView(jt.a(localjt), 0);
      }
      for (;;)
      {
        i1 += 1;
        break;
        localjt.a();
      }
    }
    i = paramInt;
  }
  
  private void e()
  {
    e = g.a(a).inflate(2130903252, null);
    j = ((ESScrollView)e.findViewById(2131362218));
    k = e.findViewById(2131362217);
    l = e.findViewById(2131362220);
    j.b();
    j.a(new js(this));
    h = ((LinearLayout)e.findViewById(2131362219));
  }
  
  public View a()
  {
    return e;
  }
  
  protected jt a(int paramInt)
  {
    LinearLayout localLinearLayout = (LinearLayout)g.a(a).inflate(2130903181, null);
    Button localButton = (Button)localLinearLayout.findViewById(2131362073);
    jt localjt = new jt(this);
    jt.a(localjt, localLinearLayout);
    jt.a(localjt, localButton);
    jt.a(localjt).setTag(Integer.valueOf(paramInt));
    jt.a(localjt).setOnClickListener(m);
    jt.a(localjt).setOnLongClickListener(n);
    return localjt;
  }
  
  public abstract void a(int paramInt, a parama);
  
  public void a(List<a> paramList)
  {
    b = paramList;
    int i2 = paramList.size();
    if (i2 != i) {
      c(i2);
    }
    int i1 = 0;
    if (i1 < i2)
    {
      paramList = (jt)f.get(i1);
      a locala = (a)b.get(i1);
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
  
  public a b(int paramInt)
  {
    try
    {
      a locala = (a)b.get(paramInt);
      return locala;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public void b()
  {
    h.setVisibility(0);
    ESScrollView.a(j, h);
    k.setVisibility(4);
    l.setVisibility(4);
    c = false;
  }
  
  public void c()
  {
    ESScrollView.a(j, h);
  }
  
  public void d()
  {
    if (h.getMeasuredHeight() - j.getHeight() > 0) {}
    for (c = true;; c = false)
    {
      if (c) {
        k.setVisibility(0);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.jp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */