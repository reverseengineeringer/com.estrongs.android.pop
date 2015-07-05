package com.estrongs.android.ui.c.b;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class a
{
  protected FileExplorerActivity a;
  protected LinearLayout b;
  protected boolean c;
  protected List<com.estrongs.android.ui.c.a.a> d;
  protected Map<String, com.estrongs.android.ui.c.a.a> e;
  protected List<String> f;
  protected SharedPreferences g;
  protected boolean h = false;
  private List<View> i = new ArrayList();
  
  public a(FileExplorerActivity paramFileExplorerActivity, LinearLayout paramLinearLayout, boolean paramBoolean)
  {
    a = paramFileExplorerActivity;
    b = paramLinearLayout;
    c = cc.a();
    b.setVisibility(0);
    g = a.getSharedPreferences("home_page", 0);
    if (paramBoolean)
    {
      r();
      return;
    }
    b.removeAllViews();
    a(k());
    a(k(), false);
  }
  
  private void a(int paramInt)
  {
    label24:
    Object localObject1;
    if (paramInt == 0)
    {
      b.setVisibility(8);
      int j = (paramInt - 1) / j();
      paramInt = 0;
      if (paramInt >= j + 1) {
        return;
      }
      if (i.size() <= paramInt * 2) {
        break label80;
      }
      localObject1 = (LinearLayout)i.get(paramInt * 2);
    }
    for (;;)
    {
      paramInt += 1;
      break label24;
      b.setVisibility(0);
      break;
      label80:
      if (paramInt > 0)
      {
        localObject1 = new ViewGroup.LayoutParams(-1, 1);
        localObject2 = q();
        i.add(localObject2);
        b.addView((View)localObject2, (ViewGroup.LayoutParams)localObject1);
      }
      localObject1 = d();
      i.add(localObject1);
      Object localObject2 = new ViewGroup.LayoutParams(-1, -2);
      b.addView((View)localObject1, (ViewGroup.LayoutParams)localObject2);
    }
  }
  
  private void a(int paramInt, View paramView)
  {
    paramView = (LinearLayout)paramView;
    int j = j();
    int k = Math.min((paramInt + 1) * j(), e());
    List localList = d.subList(j * paramInt, k);
    paramInt = 0;
    if (paramInt < paramView.getChildCount())
    {
      View localView = paramView.getChildAt(paramInt);
      if (paramInt < localList.size() * 2)
      {
        localView.setVisibility(0);
        if (paramInt % 2 == 0) {
          ((com.estrongs.android.ui.c.a.a)localList.get(paramInt / 2)).a(localView);
        }
      }
      for (;;)
      {
        paramInt += 1;
        break;
        localView.setVisibility(4);
      }
    }
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    int j = (paramInt - 1) / j();
    paramInt = 0;
    if (paramInt < i.size())
    {
      View localView = (View)i.get(paramInt);
      if (paramInt <= (j + 1 - 1) * 2)
      {
        localView.setVisibility(0);
        if ((paramInt % 2 == 0) && (paramBoolean)) {
          a(paramInt / 2, localView);
        }
      }
      for (;;)
      {
        paramInt += 1;
        break;
        localView.setVisibility(8);
      }
    }
  }
  
  private void m()
  {
    if (f == null) {
      f = new ArrayList();
    }
    Map localMap = g.getAll();
    if ((localMap == null) || (!localMap.containsKey(f())))
    {
      f = g();
      return;
    }
    f = n();
  }
  
  private List<String> n()
  {
    String str = g.getString(f(), "");
    ArrayList localArrayList = new ArrayList();
    if ((str != null) && (!str.equals(""))) {
      Collections.addAll(localArrayList, str.split(","));
    }
    return localArrayList;
  }
  
  private void o()
  {
    if (d == null) {
      d = new ArrayList();
    }
    for (;;)
    {
      Iterator localIterator = f.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (String)localIterator.next();
        localObject = (com.estrongs.android.ui.c.a.a)e.get(localObject);
        if (localObject != null) {
          d.add(localObject);
        }
      }
      d.clear();
    }
  }
  
  private View p()
  {
    View localView = new View(FexApplication.a());
    localView.setBackgroundResource(2130837568);
    return localView;
  }
  
  private View q()
  {
    View localView = new View(FexApplication.a());
    localView.setBackgroundResource(2130837568);
    return localView;
  }
  
  private void r()
  {
    int j = 0;
    while (j < b.getChildCount())
    {
      i.add(b.getChildAt(j));
      j += 1;
    }
  }
  
  public void a()
  {
    h();
    m();
    o();
    a(e());
    a(e(), true);
    b();
  }
  
  public void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  protected abstract void b();
  
  protected void c()
  {
    SharedPreferences.Editor localEditor = g.edit();
    if (f.size() == 0) {
      localEditor.remove(f());
    }
    for (;;)
    {
      localEditor.commit();
      return;
      StringBuilder localStringBuilder = new StringBuilder();
      int j = 0;
      while (j < f.size())
      {
        if (j > 0) {
          localStringBuilder.append(",");
        }
        localStringBuilder.append((String)f.get(j));
        j += 1;
      }
      localEditor.putString(f(), localStringBuilder.toString());
    }
  }
  
  protected LinearLayout d()
  {
    LinearLayout localLinearLayout = new LinearLayout(FexApplication.a());
    localLinearLayout.setGravity(3);
    localLinearLayout.setOrientation(0);
    int j = 0;
    if (j < j())
    {
      if (j > 0)
      {
        localObject = new ViewGroup.LayoutParams(1, -1);
        localLinearLayout.addView(p(), (ViewGroup.LayoutParams)localObject);
      }
      Object localObject = new LinearLayout.LayoutParams(-1, -2);
      if (j() > 1) {
        localObject = new LinearLayout.LayoutParams(0, -2, 1.0F);
      }
      View localView = g.a(FexApplication.a()).inflate(i(), null);
      localView.setId(j % j());
      if (localObject == null) {
        localLinearLayout.addView(localView);
      }
      for (;;)
      {
        j += 1;
        break;
        localLinearLayout.addView(localView, (ViewGroup.LayoutParams)localObject);
      }
    }
    return localLinearLayout;
  }
  
  protected int e()
  {
    return d.size();
  }
  
  protected abstract String f();
  
  protected abstract List<String> g();
  
  protected abstract void h();
  
  protected abstract int i();
  
  protected abstract int j();
  
  protected abstract int k();
  
  public void l()
  {
    h = false;
    m();
    o();
    a(e());
    a(e(), true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */