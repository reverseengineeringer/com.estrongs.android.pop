package com.estrongs.android.view;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.al;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.w;
import com.estrongs.fs.x;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;

public class eb
  extends cr
{
  private static Map<String, h> ar = new Hashtable();
  private static TypedMap as = null;
  private boolean a = false;
  private Map<String, Boolean> al = new HashMap();
  private boolean am = false;
  private final int an = 4;
  private int ao = 0;
  private int ap = 0;
  private boolean aq = false;
  private boolean at = false;
  private String au = null;
  int b = 1;
  protected boolean c = false;
  ep d;
  private Map<String, Integer> e = new HashMap();
  
  public eb(Activity paramActivity, com.estrongs.fs.util.a.a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
    i = new ee(this);
    i.a(new em(this));
    h.setAdapter(i);
    i.registerAdapterDataObserver(new ec(this));
    try
    {
      at = u.a().b();
      au = u.a().e();
      ap = ag.getResources().getDimensionPixelOffset(2131165254);
      return;
    }
    catch (Exception paramActivity)
    {
      for (;;) {}
    }
  }
  
  private void A()
  {
    if (c) {
      return;
    }
    c = true;
    Object localObject = b(2131624592);
    if (localObject != null) {
      ((View)localObject).setVisibility(0);
    }
    X.put("per_page", Integer.valueOf(10));
    localObject = X;
    int i = b;
    b = (i + 1);
    ((TypedMap)localObject).put("page", Integer.valueOf(i));
    X.put("load_next_page", Boolean.valueOf(true));
    if (ap.aQ(C)) {
      X.put("max_id", com.estrongs.fs.a.a.b(((h)H.get(H.size() - 1)).getPath()));
    }
    super.b(true);
    X.put("load_next_page", Boolean.valueOf(false));
  }
  
  private boolean B()
  {
    try
    {
      if (u.a().b())
      {
        if (!at)
        {
          at = true;
          return true;
        }
        if (u.a().e().equals(au)) {
          return false;
        }
        au = u.a().e();
        return true;
      }
      if (!at) {
        return false;
      }
      at = false;
      return true;
    }
    catch (Exception localException) {}
    return true;
  }
  
  public static h a(h paramh, boolean paramBoolean)
  {
    if (paramh == null) {
      return paramh;
    }
    if (paramh.getFileType().b())
    {
      paramh.putExtra("need_210_thumbnail", Boolean.valueOf(true));
      return paramh;
    }
    try
    {
      localObject = (h)ar.get(paramh.getPath());
      if (localObject == null) {
        break label289;
      }
      if (d.a().b(((h)localObject).getAbsolutePath()))
      {
        ((h)localObject).putExtra("need_210_thumbnail", Boolean.valueOf(true));
        return (h)localObject;
      }
      ar.remove(paramh.getPath());
    }
    catch (Exception paramh)
    {
      do
      {
        for (;;)
        {
          Object localObject;
          String str;
          paramh = null;
          break;
          paramh = null;
          break;
        }
      } while (!paramBoolean);
      return null;
    }
    if (as == null)
    {
      as = new TypedMap();
      as.put("from", Integer.valueOf(1));
      as.put("to", Integer.valueOf(2));
    }
    str = paramh.getPath();
    if (ap.aV(paramh.getPath()))
    {
      if (ap.aC(paramh.getPath())) {}
      for (localObject = "pictures";; localObject = "mine")
      {
        paramh = d.m(ap.f(paramh.getPath(), (String)localObject));
        paramh = d.a().a(paramh, false, false, null, as);
        if ((paramh == null) || (paramh.size() < 1)) {
          break;
        }
        localObject = (h)paramh.get(0);
        paramh = (h)localObject;
        if (localObject == null) {
          return paramh;
        }
        ((h)localObject).putExtra("need_210_thumbnail", Boolean.valueOf(true));
        ar.put(str, localObject);
        return (h)localObject;
      }
    }
    label289:
    return paramh;
  }
  
  private void c(boolean paramBoolean)
  {
    int i = 0;
    int m;
    int k;
    if (u())
    {
      int[] arrayOfInt = cu.g(ag);
      m = Math.min(arrayOfInt[0], arrayOfInt[1]);
      k = Math.max(arrayOfInt[0], arrayOfInt[1]);
      boolean bool = cu.a(ag);
      if (ag.getResources().getConfiguration().orientation == 1) {
        i = 1;
      }
      int j = 4;
      if ((i == 0) && (!bool)) {
        break label113;
      }
      ao = (m / 4);
      i = j;
    }
    for (;;)
    {
      if (paramBoolean)
      {
        g.setSpanCount(i);
        this.i.notifyDataSetChanged();
      }
      return;
      label113:
      i = (int)(4.0D * (k / m));
      ao = (k / i);
    }
  }
  
  public void a(int paramInt)
  {
    p = paramInt;
  }
  
  protected void a(al paramal, List<h> paramList)
  {
    if (b.equals(b()))
    {
      Y = false;
      c = false;
      J();
      if (paramList.size() > 0) {
        c(paramList);
      }
      a_(H);
      if (paramList.size() < 10)
      {
        if (b > 1) {
          b -= 1;
        }
        if ((!ap.aY(c())) && (a))
        {
          if (paramList.size() == 0) {
            com.estrongs.android.pop.utils.a.a(ag, 2131231770);
          }
          am = true;
        }
        a = false;
      }
      ((com.estrongs.android.pop.app.d.b)ag).a(new ed(this, paramList));
      AppFolderInfoManager.d().a(C, H);
    }
    az();
    m();
    aB();
    e();
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    h localh = paramh;
    if (v())
    {
      localh = paramh;
      if (ap.aQ(paramh.getPath()))
      {
        localh = paramh;
        if (!ap.aP(paramh.getPath()))
        {
          if (!ap.aB(paramh.getPath())) {
            break label231;
          }
          localh = d.m(ap.f(paramh.getPath(), "album"));
        }
      }
    }
    if (C != null)
    {
      e.put(C, Integer.valueOf(b));
      al.put(C, Boolean.valueOf(am));
    }
    if ((e.get(localh.getPath()) != null) && (com.estrongs.fs.a.b.a().f(localh.getPath()) != null) && (com.estrongs.fs.a.b.a().e(localh.getPath())))
    {
      b = ((Integer)e.get(localh.getPath())).intValue();
      am = ((Boolean)al.get(localh.getPath())).booleanValue();
      paramh = paramTypedMap;
    }
    for (;;)
    {
      super.a(localh, paramh);
      return;
      label231:
      if (ap.aC(paramh.getPath()))
      {
        localh = d.m(ap.f(paramh.getPath(), "pictures"));
        break;
      }
      localh = d.m(ap.f(paramh.getPath(), "mine"));
      break;
      b = 1;
      am = false;
      paramh = paramTypedMap;
      if (paramTypedMap == null) {
        paramh = new TypedMap();
      }
      paramh.put("per_page", Integer.valueOf(10));
      int i = b;
      b = (i + 1);
      paramh.put("page", Integer.valueOf(i));
      paramh.put("max_id", null);
    }
  }
  
  protected void aa()
  {
    d = new ep(this);
    h.setOnScrollListener(d);
    h.setOnTouchListener(d);
  }
  
  protected boolean ai()
  {
    return !X.getBoolean("load_next_page");
  }
  
  public void b(boolean paramBoolean)
  {
    boolean bool = true;
    H.clear();
    if (paramBoolean)
    {
      am = false;
      Y = true;
    }
    if ((D != null) && (ap.aQ(D.getPath())) && (!s())) {}
    for (;;)
    {
      aq = bool;
      super.b(paramBoolean);
      return;
      bool = false;
    }
  }
  
  protected void c(List<h> paramList)
  {
    int i = 0;
    if (u())
    {
      super.c(paramList);
      return;
    }
    HashSet localHashSet = new HashSet();
    localHashSet.addAll(H);
    if ((paramList != null) && (paramList.size() > 0))
    {
      if (V != null)
      {
        i = 0;
        while (i < paramList.size())
        {
          if ((V.a((h)paramList.get(i))) && (!localHashSet.contains(paramList.get(i))))
          {
            H.add(paramList.get(i));
            localHashSet.add(paramList.get(i));
          }
          i += 1;
        }
      }
      while (i < paramList.size())
      {
        if (!localHashSet.contains(paramList.get(i)))
        {
          H.add(paramList.get(i));
          localHashSet.add(paramList.get(i));
        }
        i += 1;
      }
    }
    localHashSet.clear();
    h.setAdapter(this.i);
  }
  
  public int d()
  {
    if ((N()) && (v())) {
      return super.d() - 1;
    }
    return super.d();
  }
  
  public void e()
  {
    int i = h().size();
    int j = i / 10;
    if (i % 10 == 0) {}
    for (i = 0;; i = 1)
    {
      b = (i + j);
      super.e();
      return;
    }
  }
  
  public void i_()
  {
    super.i_();
    ar.clear();
  }
  
  public h j()
  {
    String str = ap.bB(D.getPath());
    if (str == null)
    {
      if (!T.isEmpty()) {
        return f();
      }
      return D;
    }
    Object localObject = str;
    if (ap.aV(str)) {
      localObject = "SP://";
    }
    localObject = new x((String)localObject);
    c((h)localObject);
    return (h)localObject;
  }
  
  public void l()
  {
    c(true);
    if ("SP://".equalsIgnoreCase(C))
    {
      P = B();
      if (P) {
        R = true;
      }
    }
    for (;;)
    {
      super.l();
      return;
      try
      {
        if ((C != null) && (C.contains("@pcs")))
        {
          B();
          if (!at)
          {
            R = true;
            j("SP://");
            return;
          }
        }
      }
      catch (Exception localException) {}
    }
  }
  
  protected boolean m(String paramString)
  {
    return true;
  }
  
  public boolean s()
  {
    return (t()) || (v());
  }
  
  public boolean t()
  {
    return (ap.aX(c())) || (ap.X(c()));
  }
  
  public boolean u()
  {
    return (ap.aY(c())) || (ap.X(c()));
  }
  
  public boolean v()
  {
    return ap.aP(c());
  }
  
  public boolean w()
  {
    return ap.aQ(c());
  }
  
  protected int x()
  {
    return 2130903249;
  }
  
  protected int y()
  {
    return 2130903248;
  }
  
  public void z()
  {
    int j = H.size();
    int i = j;
    if (j == 0) {
      i = 1;
    }
    TypedMap localTypedMap = X;
    j = i / 10;
    if (i % 10 == 0) {}
    for (i = 0;; i = 1)
    {
      localTypedMap.put("per_page", Integer.valueOf((i + j) * 10));
      X.put("page", Integer.valueOf(1));
      X.put("max_id", null);
      am = false;
      b(true);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */