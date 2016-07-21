package com.estrongs.android.ui.topclassify;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.util.ArrayList;
import java.util.List;

public abstract class b
{
  protected Context a;
  protected String b;
  protected List<d> c = null;
  
  public b(String paramString, Context paramContext)
  {
    a = paramContext;
    b = paramString;
    g();
    a();
  }
  
  protected String a(int paramInt)
  {
    if (a != null) {
      return a.getString(paramInt);
    }
    return "";
  }
  
  public abstract void a();
  
  public void a(d paramd)
  {
    if (c != null) {
      c.add(paramd);
    }
  }
  
  protected void a(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    if (c != null)
    {
      paramString = new d(paramString, paramInt1, paramInt2, paramInt3);
      c.add(paramString);
    }
  }
  
  public String b()
  {
    return "";
  }
  
  public abstract List<View> d();
  
  public abstract int e();
  
  public List<View> f()
  {
    List localList = d();
    ArrayList localArrayList = null;
    int m = localList.size();
    Object localObject = localArrayList;
    int n;
    if (localList != null)
    {
      localObject = localArrayList;
      if (m > 0)
      {
        localArrayList = new ArrayList();
        n = (m - 1) / e() + 1;
        i = m % e();
        if (i == 0) {
          break label293;
        }
      }
    }
    label290:
    label293:
    for (int i = e() - i;; i = 0)
    {
      int j = 0;
      LinearLayout localLinearLayout;
      if (j < n)
      {
        localLinearLayout = new LinearLayout(a);
        if ((this instanceof t)) {
          localLinearLayout.setPadding(0, a.getResources().getDimensionPixelSize(2131165262), 0, 0);
        }
        localLinearLayout.setOrientation(0);
        localObject = new LinearLayout.LayoutParams(-1, -2);
        if (e() <= 1) {
          break label290;
        }
        localObject = new LinearLayout.LayoutParams(0, -2, 1.0F);
      }
      for (;;)
      {
        int k = e() * j;
        while (k < m)
        {
          if (k < (j + 1) * e()) {
            localLinearLayout.addView((View)localList.get(k), (ViewGroup.LayoutParams)localObject);
          }
          k += 1;
        }
        if ((j == n - 1) && (i != 0))
        {
          k = 0;
          while (k < i)
          {
            localLinearLayout.addView(new View(a), new LinearLayout.LayoutParams(0, 1, 1.0F));
            k += 1;
          }
        }
        localArrayList.add(localLinearLayout);
        j += 1;
        break;
        localObject = localArrayList;
        return (List<View>)localObject;
      }
    }
  }
  
  protected void g() {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.topclassify.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */