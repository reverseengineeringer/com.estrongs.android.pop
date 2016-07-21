package com.estrongs.android.ui.c.b;

import android.content.res.Resources;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.ap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public class a
{
  private FileExplorerActivity a;
  private LinearLayout b;
  private com.estrongs.android.ui.c.a c;
  private List<String> d = null;
  private f e = null;
  private Object f = new Object();
  private List<com.estrongs.android.ui.c.a.a> g;
  private List<com.estrongs.android.ui.c.a.a> h;
  private List<View> i;
  private List<View> j;
  private Map<String, com.estrongs.android.ui.c.a.a> k;
  private long l;
  private long m;
  private final long n = 259200000L;
  private com.estrongs.android.ui.c.a.b o;
  private Handler p = new Handler();
  private boolean q;
  
  public a(FileExplorerActivity paramFileExplorerActivity, com.estrongs.android.ui.c.a parama)
  {
    a = paramFileExplorerActivity;
    c = parama;
    e();
  }
  
  private LinearLayout a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramInt2 == paramInt1 + 1)
    {
      if (g.size() % 2 == 0) {
        return a(2, true, paramBoolean);
      }
      if (paramBoolean)
      {
        LinearLayout localLinearLayout = new LinearLayout(FexApplication.a());
        localLinearLayout.setGravity(3);
        localLinearLayout.setOrientation(0);
        View localView = k.a(FexApplication.a()).inflate(2130903127, null);
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
        leftMargin = a.getResources().getDimensionPixelSize(2131165262);
        rightMargin = a.getResources().getDimensionPixelSize(2131165262);
        localLinearLayout.addView(localView, localLayoutParams);
        return localLinearLayout;
      }
      return a(2, true, paramBoolean);
    }
    return a(2, false, false);
  }
  
  private LinearLayout a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    LinearLayout localLinearLayout = new LinearLayout(FexApplication.a());
    localLinearLayout.setGravity(3);
    localLinearLayout.setOrientation(0);
    int i2 = 0;
    if (i2 < paramInt)
    {
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, -2, 1.0F);
      label85:
      int i1;
      label119:
      Object localObject;
      if (i2 == 0)
      {
        leftMargin = a.getResources().getDimensionPixelSize(2131165255);
        rightMargin = a.getResources().getDimensionPixelSize(2131165312);
        int i3 = t();
        i1 = i3;
        if (paramBoolean1)
        {
          i1 = i3;
          if (i2 == paramInt - 1)
          {
            if (!paramBoolean2) {
              break label198;
            }
            i1 = 2130903128;
          }
        }
        if (i1 != -1) {
          break label204;
        }
        localObject = new TextView(FexApplication.a());
        ((View)localObject).setVisibility(4);
      }
      for (;;)
      {
        localLinearLayout.addView((View)localObject, localLayoutParams);
        i2 += 1;
        break;
        leftMargin = a.getResources().getDimensionPixelSize(2131165312);
        rightMargin = a.getResources().getDimensionPixelSize(2131165255);
        break label85;
        label198:
        i1 = -1;
        break label119;
        label204:
        localObject = k.a(FexApplication.a()).inflate(i1, null);
      }
    }
    return localLinearLayout;
  }
  
  private void a(i parami)
  {
    Object localObject = a;
    localObject = (com.estrongs.android.ui.c.a.d)k.get(localObject);
    if (localObject == null) {
      return;
    }
    ((com.estrongs.android.ui.c.a.d)localObject).b(b, c);
    ((com.estrongs.android.ui.c.a.d)localObject).a(b, c);
  }
  
  private void a(String paramString)
  {
    com.estrongs.android.ui.c.a.d locald = new com.estrongs.android.ui.c.a.d(a);
    String str2 = z.b(paramString);
    String str1 = str2;
    if (TextUtils.isEmpty(str2))
    {
      str1 = str2;
      if (ap.aH(paramString)) {
        str1 = com.estrongs.fs.impl.usb.e.b(paramString).k();
      }
    }
    locald.a(str1);
    locald.b(0L, 0L);
    locald.a(new b(this, paramString));
    locald.b(paramString);
    if (!d.contains(paramString)) {
      d.add(paramString);
    }
    k.put(paramString, locald);
  }
  
  private void a(List<String> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      a((String)paramList.next());
    }
  }
  
  private boolean b(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (k != null)
    {
      bool1 = bool2;
      if (k.containsKey(paramString))
      {
        k.remove(paramString);
        bool1 = true;
      }
    }
    bool2 = bool1;
    if (d != null)
    {
      bool2 = bool1;
      if (d.contains(paramString))
      {
        d.remove(paramString);
        bool2 = true;
      }
    }
    return bool2;
  }
  
  private void e()
  {
    i = new ArrayList();
    j = new ArrayList();
    k = new HashMap();
  }
  
  private void f()
  {
    List localList = g();
    String str = com.estrongs.android.pop.b.b();
    if (localList.remove(str)) {
      localList.add(0, str);
    }
    a(localList);
  }
  
  private List<String> g()
  {
    if (d == null) {
      d = h();
    }
    return d;
  }
  
  private List<String> h()
  {
    List localList = ap.a();
    String str = com.estrongs.android.pop.b.b();
    if (localList.remove(str)) {
      localList.add(0, str);
    }
    return localList;
  }
  
  private void i()
  {
    label36:
    Iterator localIterator;
    if (g == null)
    {
      g = new ArrayList();
      if (h != null) {
        break label123;
      }
      h = new ArrayList();
      localIterator = d.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext()) {
        break label149;
      }
      String str = (String)localIterator.next();
      com.estrongs.android.ui.c.a.a locala = (com.estrongs.android.ui.c.a.a)k.get(str);
      if (locala != null)
      {
        if ((ap.bl(str)) && (!ap.bL(str)))
        {
          g.add(locala);
          continue;
          g.clear();
          break;
          label123:
          h.clear();
          break label36;
        }
        h.add(locala);
      }
    }
    label149:
    j();
  }
  
  private void j()
  {
    o = new com.estrongs.android.ui.c.a.b(a);
    g.add(o);
  }
  
  private void k()
  {
    l();
    m();
  }
  
  private void l()
  {
    if (g == null) {
      return;
    }
    int i1;
    label34:
    int i2;
    label36:
    LinearLayout localLinearLayout;
    LinearLayout.LayoutParams localLayoutParams;
    if (g.size() % 2 == 0)
    {
      i1 = g.size() / 2;
      i2 = 0;
      if ((i2 < i1) && (i.size() < i1))
      {
        localLinearLayout = a(i2, i1, true);
        i.add(localLinearLayout);
        localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
        if (i2 != i1 - 1) {
          break label144;
        }
      }
    }
    label144:
    for (bottomMargin = a.getResources().getDimensionPixelSize(2131165273);; bottomMargin = a.getResources().getDimensionPixelSize(2131165255))
    {
      b.addView(localLinearLayout, localLayoutParams);
      i2 += 1;
      break label36;
      break;
      i1 = g.size() / 2 + 1;
      break label34;
    }
  }
  
  private void m()
  {
    if ((h == null) || (h.size() <= 0)) {
      return;
    }
    int i1;
    label46:
    Object localObject1;
    Object localObject2;
    int i2;
    label114:
    boolean bool;
    if (h.size() % 2 == 0)
    {
      i1 = h.size() / 2;
      if (j.size() >= i1) {
        break label219;
      }
      localObject1 = new LinearLayout.LayoutParams(-1, com.estrongs.android.ui.d.g.a(a, 1.0F));
      bottomMargin = a.getResources().getDimensionPixelSize(2131165273);
      localObject2 = s();
      b.addView((View)localObject2, (ViewGroup.LayoutParams)localObject1);
      i2 = 0;
      if (i2 < i1)
      {
        if (i1 != i2 + 1) {
          break label221;
        }
        bool = true;
        label128:
        localObject1 = a(2, bool, false);
        j.add(localObject1);
        localObject2 = new LinearLayout.LayoutParams(-1, -2);
        if (i2 != i1 - 1) {
          break label226;
        }
      }
    }
    label219:
    label221:
    label226:
    for (bottomMargin = a.getResources().getDimensionPixelSize(2131165290);; bottomMargin = a.getResources().getDimensionPixelSize(2131165255))
    {
      b.addView((View)localObject1, (ViewGroup.LayoutParams)localObject2);
      i2 += 1;
      break label114;
      break;
      i1 = h.size() / 2 + 1;
      break label46;
      break;
      bool = false;
      break label128;
    }
  }
  
  private void n()
  {
    if (i == null) {}
    for (;;)
    {
      return;
      int i1 = 0;
      while (i1 < i.size())
      {
        LinearLayout localLinearLayout = (LinearLayout)i.get(i1);
        int i2 = 0;
        while (i2 < localLinearLayout.getChildCount())
        {
          View localView = localLinearLayout.getChildAt(i2);
          ((com.estrongs.android.ui.c.a.a)g.get(i1 * 2 + i2)).a(localView);
          localView.requestFocus();
          i2 += 1;
        }
        i1 += 1;
      }
    }
  }
  
  private void o()
  {
    if (j == null) {}
    for (;;)
    {
      return;
      int i1 = 0;
      while (i1 < j.size())
      {
        LinearLayout localLinearLayout = (LinearLayout)j.get(i1);
        int i2 = 0;
        while (i2 < localLinearLayout.getChildCount())
        {
          View localView = localLinearLayout.getChildAt(i2);
          if (!(localView instanceof TextView)) {
            ((com.estrongs.android.ui.c.a.a)h.get(i1 * 2 + i2)).a(localView);
          }
          i2 += 1;
        }
        i1 += 1;
      }
    }
  }
  
  private void p()
  {
    a.a(new c(this));
  }
  
  private void q()
  {
    synchronized (f)
    {
      if (e == null)
      {
        e = new f(this, k.values());
        e.start();
      }
      return;
    }
  }
  
  private void r()
  {
    new d(this).start();
  }
  
  private View s()
  {
    View localView = new View(a);
    localView.setBackgroundColor(a.getResources().getColor(2131558491));
    return localView;
  }
  
  private int t()
  {
    return 2130903130;
  }
  
  private List<String> u()
  {
    if ((d == null) || (d.size() == 0))
    {
      d = new CopyOnWriteArrayList();
      d.addAll(v());
    }
    return d;
  }
  
  private List<String> v()
  {
    return ap.a();
  }
  
  private void w()
  {
    p.post(new e(this));
  }
  
  public void a()
  {
    q = false;
    b.setVisibility(0);
    i();
    k();
    n();
    o();
    q();
    r();
  }
  
  public void a(LinearLayout paramLinearLayout)
  {
    b = paramLinearLayout;
    f();
    p();
  }
  
  public void b()
  {
    if (q) {
      return;
    }
    q = true;
    d();
    c.notifyDataSetChanged();
  }
  
  public void c()
  {
    r();
  }
  
  public void d()
  {
    b.removeAllViews();
    i.clear();
    j.clear();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */