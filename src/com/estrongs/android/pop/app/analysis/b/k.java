package com.estrongs.android.pop.app.analysis.b;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout.LayoutParams;
import com.estrongs.android.pop.app.analysis.a.i;
import com.estrongs.android.pop.esclasses.ESHorizontalScrollView;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.ui.addressbar.AdvancedAddressBar;
import com.estrongs.android.ui.addressbar.b;
import com.estrongs.android.util.ap;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.h;
import com.estrongs.fs.w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.CopyOnWriteArrayList;

public class k
  extends v
  implements com.estrongs.android.pop.app.analysis.a.n
{
  private String C = "";
  private Map<com.estrongs.fs.impl.c.d, com.estrongs.android.a.b.a> D;
  private List<h> E;
  private com.estrongs.fs.d F;
  private GridLayoutManager G;
  private boolean H = false;
  private final int I = 4;
  protected boolean r = false;
  private Stack<n> s = null;
  private AdvancedAddressBar t;
  private ESHorizontalScrollView u;
  private Handler v = new Handler();
  
  private boolean A()
  {
    if ((s == null) || (s.isEmpty()) || (s.size() == 1)) {
      return false;
    }
    s.pop();
    t();
    return true;
  }
  
  private void B()
  {
    int i = 0;
    t.setIsLoading(false);
    if ((s == null) || (s.isEmpty())) {
      t.setDisplayPaths(new String[] { C });
    }
    for (;;)
    {
      v.post(new m(this));
      return;
      if (s.peek()).a == null)
      {
        t.setDisplayPaths(new String[] { C });
      }
      else
      {
        String[] arrayOfString = new String[s.size()];
        while (i < s.size())
        {
          arrayOfString[i] = s.get(i)).b;
          i += 1;
        }
        t.setDisplayPaths(arrayOfString);
      }
    }
  }
  
  private void a(n paramn, boolean paramBoolean)
  {
    if (w.k())
    {
      r = false;
      w.a(false);
      w.g();
    }
    if ((paramn != null) && (paramBoolean)) {
      s.push(paramn);
    }
    t();
  }
  
  private void a(h paramh)
  {
    n localn = new n(this, null);
    a = paramh;
    b = paramh.getName();
    a(localn, true);
  }
  
  private void a(List<h> paramList, boolean paramBoolean)
  {
    if (paramBoolean) {
      a("appfolder://", paramList);
    }
    ArrayList localArrayList = new ArrayList();
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        h localh = (h)paramList.next();
        g localg = new g(this);
        a = false;
        b = localh;
        localArrayList.add(localg);
      }
    }
    if (x != null) {
      x.clear();
    }
    for (;;)
    {
      x.addAll(localArrayList);
      return;
      x = new ArrayList();
    }
  }
  
  private void b(View paramView)
  {
    t = ((AdvancedAddressBar)paramView.findViewById(2131625416));
    u = ((ESHorizontalScrollView)paramView.findViewById(2131624064));
    paramView.findViewById(2131625044).setVisibility(8);
    paramView = new b();
    a = q().getDrawable(2131558728);
    b = q().getDrawable(2130838128);
    c = 2131558746;
    d = false;
    e = 0;
    f = q().getDrawable(2130837666);
    t.setDrawableRes(paramView);
    t.setIsBroadMode(true);
    t.setIsLoading(true);
    t.setOnAddressBarClickListener(new l(this));
    B();
  }
  
  private void b(boolean paramBoolean)
  {
    int[] arrayOfInt = cu.g(getActivity());
    int k = Math.min(arrayOfInt[0], arrayOfInt[1]);
    int j = Math.max(arrayOfInt[0], arrayOfInt[1]);
    int i = 4;
    if (paramBoolean) {
      j = k / 4;
    }
    for (;;)
    {
      G.setSpanCount(i);
      w.c(j);
      return;
      i = (int)(j / k * 4.0D);
      j /= i;
    }
  }
  
  private void c(int paramInt)
  {
    if ((s == null) || (s.size() <= paramInt)) {
      return;
    }
    n localn = (n)s.elementAt(paramInt);
    while (s.size() - 1 > paramInt) {
      s.pop();
    }
    a(localn, false);
  }
  
  private void x()
  {
    y = com.estrongs.android.pop.app.analysis.a.b(d, e, g);
    if (y == null)
    {
      x = new ArrayList();
      H = false;
      return;
    }
    if ((y instanceof com.estrongs.android.a.b.d))
    {
      D = ((com.estrongs.android.a.b.d)y).e();
      if (D == null) {
        E = new ArrayList();
      }
    }
    for (H = false;; H = true)
    {
      a(E, true);
      return;
      E = new ArrayList();
      Iterator localIterator = D.keySet().iterator();
      while (localIterator.hasNext())
      {
        com.estrongs.fs.impl.c.d locald = (com.estrongs.fs.impl.c.d)localIterator.next();
        locald.a(((com.estrongs.android.a.b.a)D.get(locald)).b());
        E.add(locald);
      }
      break;
      E = y.c();
    }
  }
  
  protected int a()
  {
    return 2130903086;
  }
  
  protected void a(int paramInt1, int paramInt2)
  {
    super.a(paramInt1, paramInt2);
    int[] arrayOfInt = new int[2];
    u.getLocationOnScreen(arrayOfInt);
    float f = arrayOfInt[1];
    com.estrongs.android.util.l.c("y = " + f);
    if (p != f) {
      a(u, paramInt2);
    }
  }
  
  public void a(int paramInt, g paramg)
  {
    if (w.k()) {
      return;
    }
    r = true;
    w.a(true);
    w.notifyDataSetChanged();
    w.a(paramg, paramInt);
  }
  
  protected void a(View paramView)
  {
    super.a(paramView);
    paramView.findViewById(2131624207).setVisibility(8);
    paramView.findViewById(2131624212).setVisibility(8);
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)b.getLayoutParams();
    localLayoutParams.addRule(12);
    b.setLayoutParams(localLayoutParams);
    b(paramView);
  }
  
  protected void a(CopyOnWriteArrayList<g> paramCopyOnWriteArrayList, List<h> paramList)
  {
    int j = 0;
    e();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    for (int i = 0; localIterator.hasNext(); i = 1)
    {
      Object localObject = (h)localIterator.next();
      i = j;
      if (!(localObject instanceof com.estrongs.fs.impl.c.d)) {
        break;
      }
      localObject = (com.estrongs.fs.impl.c.d)localObject;
      localArrayList.addAll(((com.estrongs.android.a.b.a)D.get(localObject)).c());
    }
    if (i == 0) {
      localArrayList.addAll(paramList);
    }
    super.a(paramCopyOnWriteArrayList, localArrayList);
  }
  
  public void b(g paramg)
  {
    h localh = b;
    if (localh == null) {
      return;
    }
    if (w.k())
    {
      super.b(paramg);
      return;
    }
    if (((localh instanceof com.estrongs.fs.impl.c.d)) || (((ap.aY(d)) || (ap.X(d))) && (localh.getFileType() == w.a)))
    {
      a(localh);
      return;
    }
    super.b(paramg);
  }
  
  protected void j()
  {
    boolean bool = true;
    super.j();
    r = false;
    w.a(false);
    w.a(this);
    w.a(d);
    G = new GridLayoutManager(getActivity(), 4);
    if (getResourcesgetConfigurationorientation == 1) {}
    for (;;)
    {
      b(bool);
      return;
      bool = false;
    }
  }
  
  protected void n()
  {
    C = b(2131230995);
    s = new Stack();
    n localn = new n(this, null);
    a = null;
    b = C;
    s.push(localn);
    t();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    boolean bool = true;
    super.onConfigurationChanged(paramConfiguration);
    if (orientation == 1) {}
    for (;;)
    {
      b(bool);
      w.notifyDataSetChanged();
      return;
      bool = false;
    }
  }
  
  protected void r()
  {
    boolean bool2 = true;
    if (F == null) {
      F = com.estrongs.fs.d.a();
    }
    Object localObject = s.peek()).a;
    if (localObject == null) {
      x();
    }
    label102:
    do
    {
      return;
      if ((localObject instanceof com.estrongs.fs.impl.c.d))
      {
        boolean bool1 = bool2;
        if (!ap.aY(d)) {
          if (!ap.X(d)) {
            break label102;
          }
        }
        for (bool1 = bool2;; bool1 = false)
        {
          H = bool1;
          localObject = (com.estrongs.fs.impl.c.d)localObject;
          a(((com.estrongs.android.a.b.a)D.get(localObject)).c(), false);
          return;
        }
      }
    } while (((!ap.aY(d)) && (!ap.X(d))) || (((h)localObject).getFileType() != w.a));
    H = true;
    try
    {
      a(F.a(((h)localObject).getPath()), false);
      return;
    }
    catch (FileSystemException localFileSystemException)
    {
      localFileSystemException.printStackTrace();
    }
  }
  
  protected void s()
  {
    w.a();
    if (H)
    {
      c.a(q().getColor(17170445));
      c.b(0);
      a.setLayoutManager(G);
    }
    for (;;)
    {
      super.s();
      B();
      return;
      c.b(1);
      c.a(q().getColor(2131558421));
      a.setLayoutManager(n);
    }
  }
  
  public boolean u()
  {
    if (w.k())
    {
      r = false;
      w.a(false);
      w.g();
    }
    while (A()) {
      return true;
    }
    return super.u();
  }
  
  protected void v()
  {
    super.v();
    a(u, 0);
  }
  
  public boolean w()
  {
    return r;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */