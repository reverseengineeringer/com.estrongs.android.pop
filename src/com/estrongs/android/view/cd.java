package com.estrongs.android.view;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.widget.HeaderGridView;
import com.estrongs.android.widget.c;
import com.estrongs.fs.a.b;
import com.estrongs.fs.b.aj;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.n;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;

public class cd
  extends aw
{
  private static Map<String, h> am = new Hashtable();
  private static TypedMap an = null;
  private boolean a = false;
  private Map<String, Integer> ai = new HashMap();
  private Map<String, Boolean> aj = new HashMap();
  private boolean ak = false;
  private boolean al = false;
  private boolean ao = false;
  private String ap = null;
  int b = 1;
  protected boolean c = false;
  co d;
  
  public cd(Activity paramActivity, com.estrongs.fs.util.a.a parama, cb paramcb)
  {
    super(paramActivity, parama, paramcb);
    f = new cm(this);
    f.a(new cn(this));
    g.setAdapter(f);
    g.setVerticalSpacing(6);
    g.setOnItemClickListener(new ce(this));
    try
    {
      ao = r.a().b();
      ap = r.a().e();
      return;
    }
    catch (Exception paramActivity) {}
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
      localObject = (h)am.get(paramh.getPath());
      if (localObject == null) {
        break label287;
      }
      if (d.a().b(((h)localObject).getAbsolutePath()))
      {
        ((h)localObject).putExtra("need_210_thumbnail", Boolean.valueOf(true));
        return (h)localObject;
      }
      am.remove(paramh.getPath());
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
    if (an == null)
    {
      an = new TypedMap();
      an.put("from", Integer.valueOf(1));
      an.put("to", Integer.valueOf(2));
    }
    str = paramh.getPath();
    if (am.aL(paramh.getPath()))
    {
      if (am.as(paramh.getPath())) {}
      for (localObject = "pictures";; localObject = "mine")
      {
        paramh = d.m(am.f(paramh.getPath(), (String)localObject));
        paramh = d.a().a(paramh, false, false, null, an);
        if ((paramh == null) || (paramh.size() < 1)) {
          break;
        }
        localObject = (h)paramh.get(0);
        paramh = (h)localObject;
        if (localObject == null) {
          return paramh;
        }
        ((h)localObject).putExtra("need_210_thumbnail", Boolean.valueOf(true));
        am.put(str, localObject);
        return (h)localObject;
      }
    }
    label287:
    return paramh;
  }
  
  private void as()
  {
    if (c) {
      return;
    }
    c = true;
    Object localObject = k(2131362048);
    if (localObject != null) {
      ((View)localObject).setVisibility(0);
    }
    U.put("per_page", Integer.valueOf(10));
    localObject = U;
    int i = b;
    b = (i + 1);
    ((TypedMap)localObject).put("page", Integer.valueOf(i));
    U.put("load_next_page", Boolean.valueOf(true));
    if (am.aG(v)) {
      U.put("max_id", com.estrongs.fs.a.a.b(((h)A.get(A.size() - 1)).getPath()));
    }
    super.b(true);
    U.put("load_next_page", Boolean.valueOf(false));
  }
  
  private boolean at()
  {
    try
    {
      if (r.a().b())
      {
        if (!ao)
        {
          ao = true;
          return true;
        }
        if (r.a().e().equals(ap)) {
          return false;
        }
        ap = r.a().e();
        return true;
      }
      if (!ao) {
        return false;
      }
      ao = false;
      return true;
    }
    catch (Exception localException) {}
    return true;
  }
  
  protected void J()
  {
    d = new co(this);
    g.setOnScrollListener(d);
    g.setOnTouchListener(d);
  }
  
  protected boolean S()
  {
    return !U.getBoolean("load_next_page");
  }
  
  public void a(int paramInt)
  {
    int i = 2;
    int j = 1;
    k = paramInt;
    DisplayMetrics localDisplayMetrics = ad.getResources().getDisplayMetrics();
    boolean bool = com.estrongs.android.pop.utils.cl.a(ad);
    if (ad.getResources().getConfiguration().orientation == 1)
    {
      paramInt = j;
      if (!bool) {
        break label88;
      }
      if (paramInt == 0) {
        break label83;
      }
      paramInt = i;
    }
    for (;;)
    {
      g.setNumColumns(paramInt);
      this.f.notifyDataSetChanged();
      return;
      paramInt = 0;
      break;
      label83:
      paramInt = 3;
      continue;
      label88:
      float f = widthPixels / densityDpi * 25.4F;
      if (paramInt != 0)
      {
        paramInt = i;
        if (f >= 75.0F) {
          if (f > 150.0F) {
            paramInt = 4;
          } else {
            paramInt = 3;
          }
        }
      }
      else
      {
        paramInt = (int)(f / 27.0F - 0.3F);
      }
    }
  }
  
  protected void a(aj paramaj, List<h> paramList)
  {
    if (b.equals(b()))
    {
      V = false;
      c = false;
      u();
      if (paramList.size() > 0) {
        c(paramList);
      }
      b(A);
      if (paramList.size() < 10)
      {
        if (b > 1) {
          b -= 1;
        }
        if ((!am.aO(c())) && (a))
        {
          if (paramList.size() == 0) {
            com.estrongs.android.pop.utils.a.a(ad, 2131428215);
          }
          ak = true;
        }
        a = false;
      }
      ((ESActivity)ad).a(new cl(this, paramList));
    }
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    h localh = paramh;
    if (al())
    {
      localh = paramh;
      if (am.aG(paramh.getPath()))
      {
        localh = paramh;
        if (!am.aF(paramh.getPath()))
        {
          if (!am.ar(paramh.getPath())) {
            break label231;
          }
          localh = d.m(am.f(paramh.getPath(), "album"));
        }
      }
    }
    if (v != null)
    {
      ai.put(v, Integer.valueOf(b));
      aj.put(v, Boolean.valueOf(ak));
    }
    if ((ai.get(localh.getPath()) != null) && (b.a().f(localh.getPath()) != null) && (b.a().e(localh.getPath())))
    {
      b = ((Integer)ai.get(localh.getPath())).intValue();
      ak = ((Boolean)aj.get(localh.getPath())).booleanValue();
      paramh = paramTypedMap;
    }
    for (;;)
    {
      super.a(localh, paramh);
      return;
      label231:
      if (am.as(paramh.getPath()))
      {
        localh = d.m(am.f(paramh.getPath(), "pictures"));
        break;
      }
      localh = d.m(am.f(paramh.getPath(), "mine"));
      break;
      b = 1;
      ak = false;
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
  
  public void a_()
  {
    super.a_();
    am.clear();
  }
  
  public boolean al()
  {
    return am.aF(c());
  }
  
  public boolean am()
  {
    return am.aG(c());
  }
  
  protected int an()
  {
    return 2130903141;
  }
  
  protected int ao()
  {
    return 2130903140;
  }
  
  public void ap()
  {
    int j = A.size();
    int i = j;
    if (j == 0) {
      i = 1;
    }
    TypedMap localTypedMap = U;
    j = i / 10;
    if (i % 10 == 0) {}
    for (i = 0;; i = 1)
    {
      localTypedMap.put("per_page", Integer.valueOf((i + j) * 10));
      U.put("page", Integer.valueOf(1));
      U.put("max_id", null);
      ak = false;
      b(true);
      return;
    }
  }
  
  protected void b(com.estrongs.android.d.m paramm)
  {
    if (a(paramm))
    {
      f.setBackgroundColor(-5921371);
      super.b(paramm);
      Animation localAnimation = AnimationUtils.loadAnimation(ad, 17432576);
      localAnimation.setDuration(150L);
      f.startAnimation(localAnimation);
    }
  }
  
  public void b(boolean paramBoolean)
  {
    boolean bool = true;
    A.clear();
    if (paramBoolean)
    {
      ak = false;
      V = true;
    }
    if ((w != null) && (am.aG(w.getPath())) && (!p())) {}
    for (;;)
    {
      al = bool;
      super.b(paramBoolean);
      return;
      bool = false;
    }
  }
  
  protected void c(List<h> paramList)
  {
    int i = 0;
    if (r())
    {
      super.c(paramList);
      return;
    }
    HashSet localHashSet = new HashSet();
    localHashSet.addAll(A);
    if ((paramList != null) && (paramList.size() > 0))
    {
      if (P != null)
      {
        i = 0;
        while (i < paramList.size())
        {
          if ((P.a((h)paramList.get(i))) && (!localHashSet.contains(paramList.get(i))))
          {
            A.add(paramList.get(i));
            localHashSet.add(paramList.get(i));
          }
          i += 1;
        }
      }
      while (i < paramList.size())
      {
        if (!localHashSet.contains(paramList.get(i)))
        {
          A.add(paramList.get(i));
          localHashSet.add(paramList.get(i));
        }
        i += 1;
      }
    }
    localHashSet.clear();
    g.setAdapter(f);
  }
  
  public int d()
  {
    if ((z()) && (al())) {
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
  
  public h j()
  {
    String str = am.bk(w.getPath());
    if (str == null)
    {
      if (!N.isEmpty()) {
        return f();
      }
      return w;
    }
    Object localObject = str;
    if (am.aL(str)) {
      localObject = "SP://";
    }
    localObject = new n((String)localObject);
    a((h)localObject);
    return (h)localObject;
  }
  
  protected boolean k(String paramString)
  {
    return true;
  }
  
  public void l()
  {
    if ("SP://".equalsIgnoreCase(v))
    {
      J = at();
      if (J) {
        L = true;
      }
    }
    for (;;)
    {
      super.l();
      return;
      try
      {
        if ((v != null) && (v.contains("@pcs")))
        {
          at();
          if (!ao)
          {
            L = true;
            g("SP://");
            return;
          }
        }
      }
      catch (Exception localException) {}
    }
  }
  
  public boolean p()
  {
    return (q()) || (al());
  }
  
  public boolean q()
  {
    return (am.aN(c())) || (am.T(c()));
  }
  
  public boolean r()
  {
    return (am.aO(c())) || (am.T(c()));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */