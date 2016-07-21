package com.estrongs.android.pop.app.analysis.b;

import android.content.res.Resources;
import android.os.Handler;
import android.support.v7.widget.LinearLayoutManager;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.app.analysis.a.i;
import com.estrongs.android.pop.app.analysis.a.n;
import com.estrongs.android.pop.esclasses.ESHorizontalScrollView;
import com.estrongs.android.ui.addressbar.AdvancedAddressBar;
import com.estrongs.android.ui.addressbar.b;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;

public class q
  extends v
  implements n
{
  private long C;
  private TextView D;
  private TextView E;
  private TextView F;
  private TextView G;
  private boolean H = false;
  private AdvancedAddressBar I;
  private ESHorizontalScrollView J;
  private View K;
  private Handler L = new Handler();
  private List<h> M;
  private String N = "/";
  protected boolean r = false;
  private Stack<u> s = null;
  private long t;
  private long u;
  private long v;
  
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
    if (H) {
      return;
    }
    H = true;
    D.setText(b(2131231366) + j.c(t));
    E.setText(b(2131231374) + j.c(u));
    F.setText(b(2131231358) + j.c(C));
    G.setText(b(2131231131) + "/" + b(2131231133));
  }
  
  private void C()
  {
    I.setIsLoading(false);
    if ((s == null) || (s.isEmpty())) {
      I.setDisplayPaths(new String[] { N });
    }
    for (;;)
    {
      L.post(new s(this));
      return;
      Object localObject = s.peek()).a;
      if (localObject == null)
      {
        I.setDisplayPaths(new String[] { N });
      }
      else
      {
        localObject = ((com.estrongs.android.a.b.g)localObject).getAbsolutePath();
        I.setDisplayPaths(b((String)localObject));
      }
    }
  }
  
  private void D()
  {
    u localu = (u)s.peek();
    int i = b;
    int j = c;
    n.scrollToPositionWithOffset(i, j);
  }
  
  private int[] E()
  {
    int[] arrayOfInt = new int[2];
    View localView = n.getChildAt(0);
    if (localView != null)
    {
      int i = n.getPosition(localView);
      int j = localView.getTop();
      arrayOfInt[0] = i;
      arrayOfInt[1] = j;
      return arrayOfInt;
    }
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    return arrayOfInt;
  }
  
  private void a(int paramInt, int[] paramArrayOfInt)
  {
    if ((s == null) || (s.size() <= paramInt)) {
      return;
    }
    u localu = (u)s.elementAt(paramInt);
    while (s.size() - 1 > paramInt) {
      s.pop();
    }
    a(localu, paramArrayOfInt, false);
  }
  
  private void a(com.estrongs.android.a.b.g paramg, int[] paramArrayOfInt)
  {
    u localu = new u(this, null);
    a = paramg;
    b = 0;
    a(localu, paramArrayOfInt, true);
  }
  
  private void a(u paramu, int[] paramArrayOfInt, boolean paramBoolean)
  {
    if (w.k())
    {
      r = false;
      w.a(false);
      w.g();
    }
    u localu = (u)s.peek();
    b = paramArrayOfInt[0];
    c = paramArrayOfInt[1];
    if ((paramu != null) && (paramBoolean)) {
      s.push(paramu);
    }
    t();
  }
  
  private void b(View paramView)
  {
    I = ((AdvancedAddressBar)paramView.findViewById(2131625416));
    J = ((ESHorizontalScrollView)paramView.findViewById(2131624064));
    b localb = new b();
    a = q().getDrawable(2131558728);
    b = q().getDrawable(2130838128);
    c = 2131558746;
    d = false;
    e = 0;
    f = q().getDrawable(2130837666);
    paramView.findViewById(2131625044).setVisibility(8);
    I.setDrawableRes(localb);
    I.setIsBroadMode(true);
    I.setIsLoading(true);
    I.setOnAddressBarClickListener(new r(this));
    C();
  }
  
  private String[] b(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (M == null) || (M.isEmpty())) {
      return new String[] { N };
    }
    Object localObject = M.iterator();
    while (((Iterator)localObject).hasNext())
    {
      h localh = (h)((Iterator)localObject).next();
      String str = localh.getAbsolutePath();
      if (paramString.equals(str)) {
        return new String[] { N, localh.getName() };
      }
      if (paramString.startsWith(str + "/"))
      {
        paramString = paramString.replaceFirst(str + "/", "").substring(1).split("/");
        localObject = new String[paramString.length + 2];
        localObject[0] = N;
        localObject[1] = localh.getName();
        int i = 0;
        while (i < paramString.length)
        {
          localObject[(i + 2)] = paramString[i];
          i += 1;
        }
        return (String[])localObject;
      }
    }
    return null;
  }
  
  private void c(List<h> paramList)
  {
    a(paramList);
    ArrayList localArrayList = new ArrayList();
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        h localh = (h)paramList.next();
        t localt = new t(this);
        a = false;
        b = localh;
        d = t;
        localArrayList.add(localt);
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
  
  private void x()
  {
    y = com.estrongs.android.pop.app.analysis.a.b(d, e, g);
    if (y == null)
    {
      x = new ArrayList();
      return;
    }
    M = y.c();
    t = 0L;
    u = 0L;
    v = 0L;
    C = 0L;
    Object localObject = new ArrayList();
    if (d.equals("/")) {
      localObject = ap.a();
    }
    for (;;)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        long[] arrayOfLong = j.k((String)((Iterator)localObject).next());
        t += arrayOfLong[0] * arrayOfLong[2];
        u += (arrayOfLong[0] - arrayOfLong[1]) * arrayOfLong[2];
        v += arrayOfLong[2];
        C += arrayOfLong[1] * arrayOfLong[2];
      }
      ((List)localObject).add(d);
    }
    c(M);
  }
  
  protected int a()
  {
    return 2130903086;
  }
  
  protected void a(int paramInt1, int paramInt2)
  {
    super.a(paramInt1, paramInt2);
    int[] arrayOfInt = new int[2];
    J.getLocationOnScreen(arrayOfInt);
    float f = arrayOfInt[1];
    l.c("y = " + f);
    if (p != f) {
      a(J, paramInt2);
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
    K = paramView.findViewById(2131624212);
    D = ((TextView)paramView.findViewById(2131624213));
    E = ((TextView)paramView.findViewById(2131624214));
    F = ((TextView)paramView.findViewById(2131624215));
    G = ((TextView)paramView.findViewById(2131624211));
    b(paramView);
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
    if ((localh instanceof com.estrongs.android.a.b.g))
    {
      a((com.estrongs.android.a.b.g)localh, E());
      return;
    }
    super.b(paramg);
  }
  
  protected void j()
  {
    super.j();
    r = false;
    w.a(false);
    w.a(this);
  }
  
  protected void n()
  {
    s = new Stack();
    u localu = new u(this, null);
    a = null;
    b = 0;
    s.push(localu);
    if ((!TextUtils.isEmpty(d)) && (!d.equals("/")) && (ap.bl(d))) {
      N = new File(d).getName();
    }
    t();
  }
  
  protected void r()
  {
    com.estrongs.android.a.b.g localg = s.peek()).a;
    if (localg == null)
    {
      x();
      return;
    }
    c(localg.c());
  }
  
  protected void s()
  {
    w.a();
    B();
    super.s();
    C();
    D();
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
    a(J, 0);
  }
  
  public boolean w()
  {
    return r;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */