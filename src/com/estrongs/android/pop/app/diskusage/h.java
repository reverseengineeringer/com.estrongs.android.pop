package com.estrongs.android.pop.app.diskusage;

import android.app.Activity;
import android.os.Environment;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.co;
import com.estrongs.android.view.cp;
import com.estrongs.android.view.cq;
import com.estrongs.android.view.cr;
import com.estrongs.android.view.dv;
import com.estrongs.android.view.dw;
import com.estrongs.android.widget.bh;
import com.estrongs.android.widget.bj;
import com.estrongs.fs.util.g;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.Stack;

public class h
  extends cr
{
  private static final String an = ;
  public static DisplayMetrics c = new DisplayMetrics();
  protected com.estrongs.fs.util.h a = new i(this);
  private long aA;
  private long aB = 0L;
  private long aC = 0L;
  private long aD = 0L;
  private long aE = 0L;
  private long aF = 0L;
  private long aG = 0L;
  private long aH = 0L;
  private long aI = 0L;
  private long aJ = 0L;
  private long aK = 0L;
  private long aL = 0L;
  private long aM = 0L;
  private boolean aN = false;
  private Stack<g> aO = new Stack();
  private Stack<Parcelable> aP = new Stack();
  private com.estrongs.android.ui.adapter.k aQ;
  private long aR;
  private RecyclerView aS;
  private Handler aT = new j(this);
  private cp al;
  private co am;
  private Object ao = new Object();
  private boolean ap = false;
  private boolean aq = false;
  private long ar = 0L;
  private File as;
  private File at;
  private e au;
  private e av;
  private HashMap<String, e> aw = new HashMap();
  private bh ax;
  private long ay;
  private long az;
  String b;
  private boolean d = false;
  private LinearLayoutManager e;
  
  public h(Activity paramActivity, com.estrongs.fs.util.a.a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
    parama = (ViewGroup)h.getParent();
    parama.removeAllViews();
    if (at.a(ag).o())
    {
      parama.addView(aj.inflate(2130903340, null));
      parama = new v(this, false, true);
      aS = ((RecyclerView)b(2131624709));
      aS.setVisibility(0);
      aS.setBackgroundColor(0);
      e = new LinearLayoutManager(paramActivity);
      aS.setLayoutManager(e);
      aS.addItemDecoration(parama);
      aS.setScrollBarStyle(33554432);
      if (!bk.a(null)) {
        break label331;
      }
    }
    label331:
    for (paramActivity = an;; paramActivity = null)
    {
      b = paramActivity;
      v();
      return;
      parama.addView(aj.inflate(2130903199, null));
      parama = new v(this, true, true);
      break;
    }
  }
  
  private void A()
  {
    if (ax != null)
    {
      ax.dismiss();
      ax = null;
    }
    if (O != null) {
      O.a(this, true);
    }
  }
  
  private boolean B()
  {
    if (ax != null) {
      return ax.isShowing();
    }
    return false;
  }
  
  private void C()
  {
    aq = true;
    synchronized (ao)
    {
      if (av != null) {
        av.a();
      }
      if (bk.a(b, at.getAbsolutePath())) {
        aT.post(new r(this));
      }
      return;
    }
  }
  
  private void a(g paramg)
  {
    int i = 0;
    while (i < aO.size())
    {
      a((g)aO.get(i), paramg);
      i += 1;
    }
    az -= a;
    aB -= d;
    aC -= e;
    aD -= f;
    aE -= g;
    aF -= h;
    aG -= i;
    aH -= j;
    aI -= k;
    aJ -= l;
    aK -= m;
    aL -= n;
    aM -= o;
  }
  
  private void a(g paramg1, g paramg2)
  {
    a -= a;
    b -= b;
    c -= c;
    d -= d;
    e -= e;
    f -= f;
    g -= g;
    h -= h;
    i -= i;
    j -= j;
    k -= k;
    l -= l;
    m -= m;
    n -= n;
    o -= o;
  }
  
  private void b(g paramg)
  {
    int i = 0;
    while (i < aO.size())
    {
      b((g)aO.get(i), paramg);
      i += 1;
    }
    az += a;
    aB += d;
    aC += e;
    aD += f;
    aE += g;
    aF += h;
    aG += i;
    aH += j;
    aI += k;
    aJ += l;
    aK += m;
    aL += n;
    aM += o;
  }
  
  private void b(g paramg1, g paramg2)
  {
    a += a;
    b += b;
    c += c;
    d += d;
    e += e;
    f += f;
    g += g;
    h += h;
    i += i;
    j += j;
    k += k;
    l += l;
    m += m;
    n += n;
    o += o;
  }
  
  private void b(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.indexOf("du://") >= 0) {
        str = paramString.substring("du://".length());
      }
    }
    paramString = str;
    if (bk.a(str)) {
      paramString = an;
    }
    b = paramString;
    at = new File(b);
    if (ar != 0L) {
      return;
    }
    if (F != null) {
      F.a("du://" + at.getAbsolutePath(), false);
    }
    t();
    aN = true;
    aO.clear();
    aB = 0L;
    aC = 0L;
    aD = 0L;
    aE = 0L;
    aF = 0L;
    aG = 0L;
    aH = 0L;
    aI = 0L;
    aJ = 0L;
    aK = 0L;
    aL = 0L;
    aM = 0L;
    if (aw.get(b) == null)
    {
      au = new e(ag);
      au.a(a);
      au.a(ay);
      au.b(aR);
      aw.put(b, au);
      if (ax == null)
      {
        ax = u();
        if (ax != null) {
          ax.a(az);
        }
        aA = 0L;
      }
    }
    for (;;)
    {
      g();
      return;
      ax.a();
      break;
      au = ((e)aw.get(paramString));
      au.a(ay);
    }
  }
  
  private void k(boolean paramBoolean)
  {
    Object localObject;
    if (paramBoolean)
    {
      localObject = com.estrongs.fs.util.j.k(b);
      ay = (localObject[0] * localObject[2]);
      az = ((localObject[0] - localObject[1]) * localObject[2]);
      aR = localObject[2];
      l = localObject[1];
    }
    for (long l = localObject[2] * l;; l = ay - az)
    {
      localObject = (TextView)b(2131624712);
      TextView localTextView1 = (TextView)b(2131624714);
      TextView localTextView2 = (TextView)b(2131624716);
      ((TextView)localObject).setText(com.estrongs.fs.util.j.c(ay));
      localTextView1.setText(com.estrongs.fs.util.j.c(az));
      localTextView2.setText(com.estrongs.fs.util.j.c(l));
      return;
    }
  }
  
  private void s()
  {
    Iterator localIterator = av.i.entrySet().iterator();
    while (localIterator.hasNext())
    {
      g localg = (g)((Map.Entry)localIterator.next()).getValue();
      if (localg != null)
      {
        aB += d;
        aC += e;
        aD += f;
        aE += g;
        aF += h;
        aG += i;
        aH += j;
        aI += k;
        aJ += l;
        aK += m;
        aL += n;
        aM += o;
      }
    }
  }
  
  private void t()
  {
    k(true);
  }
  
  private bh u()
  {
    try
    {
      bh localbh = new bh(ag);
      localbh.a(new bj());
      localbh.setTitle(j(2131232163));
      localbh.a(1);
      localbh.setCancelable(false);
      localbh.a(new o(this));
      localbh.setOnDismissListener(new p(this));
      return localbh;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private void v()
  {
    ((TextView)b(2131624211)).setText(j(2131231131) + "/" + j(2131231133));
    am = new q(this);
    if (aQ != null) {
      aQ.a(am);
    }
  }
  
  private void w()
  {
    aQ = new com.estrongs.android.ui.adapter.k(ag, au);
    aQ.a(am);
    aQ.a(al);
    aS.setAdapter(aQ);
    d(false);
  }
  
  private void x()
  {
    if (!aq)
    {
      if (!ap) {
        break label108;
      }
      if (aO.size() > 0) {
        aO.pop();
      }
    }
    for (;;)
    {
      au = av;
      as = at;
      aw.put(b, au);
      w();
      if ((ap) && (aP.size() > 0)) {
        e.onRestoreInstanceState((Parcelable)aP.pop());
      }
      ap = false;
      return;
      label108:
      g localg = au.a(at);
      if (localg != null)
      {
        if ((aO.size() > 0) && (aO.peek() == localg)) {
          aO.pop();
        }
        aO.push(localg);
      }
      aP.push(e.onSaveInstanceState());
    }
  }
  
  private void y()
  {
    if (ax == null) {
      ax = u();
    }
    if ((ax != null) && (ar != 0L))
    {
      ax.show();
      ar = System.currentTimeMillis();
    }
  }
  
  private void z()
  {
    if (ax == null) {
      ax = u();
    }
    ar = System.currentTimeMillis();
    if (ax != null) {
      aT.sendEmptyMessageDelayed(1, 800L);
    }
  }
  
  public void a(int paramInt) {}
  
  public void a(View.OnTouchListener paramOnTouchListener)
  {
    super.a(paramOnTouchListener);
    aS.setOnTouchListener(paramOnTouchListener);
  }
  
  public void a(cp paramcp)
  {
    al = paramcp;
    if (aQ != null) {
      aQ.a(paramcp);
    }
  }
  
  public void a(String paramString, TypedMap paramTypedMap)
  {
    if (d) {
      b(paramString);
    }
  }
  
  public void a(List<com.estrongs.fs.h> paramList)
  {
    ao.a((com.estrongs.android.pop.app.d.a)ag, paramList, new s(this, paramList), new t(this));
  }
  
  public void a(boolean paramBoolean)
  {
    q = paramBoolean;
    if (!q) {
      c(-2);
    }
    for (;;)
    {
      if (aQ != null) {
        aQ.a(paramBoolean);
      }
      return;
      e();
    }
  }
  
  public com.estrongs.fs.h a_(int paramInt)
  {
    if ((aQ != null) && (paramInt >= 0) && (paramInt < aQ.getItemCount())) {
      return new u((File)aQ.a(paramInt));
    }
    return null;
  }
  
  public com.estrongs.fs.h b()
  {
    if (at != null) {
      return new u(at);
    }
    return null;
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      aq = false;
      aw.remove(b);
      b(b);
      return;
    }
    aq = false;
    z();
    new k(this, "DiskUsage-Counter", k()).start();
  }
  
  public String c()
  {
    if (at != null) {
      return "du://" + at.getAbsolutePath();
    }
    return "du://" + b;
  }
  
  public void c(int paramInt)
  {
    int i = 0;
    for (;;)
    {
      int k;
      try
      {
        if (aQ == null) {
          return;
        }
        int j = r.size();
        k = aQ.getItemCount();
        if (paramInt == -1)
        {
          r.clear();
          paramInt = i;
          if (paramInt < k)
          {
            r.put(Integer.valueOf(paramInt), a_(paramInt));
            paramInt += 1;
            continue;
          }
        }
        else
        {
          if (paramInt != -2) {
            break label156;
          }
          K();
        }
        aQ.a(new ArrayList(r.keySet()));
        e();
        if ((l == null) || (j == r.size())) {
          break;
        }
        l.a(o());
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      label156:
      if (paramInt == -4)
      {
        int[] arrayOfInt = M();
        if (arrayOfInt != null)
        {
          r.clear();
          paramInt = arrayOfInt[0];
          while (paramInt <= arrayOfInt[1])
          {
            r.put(Integer.valueOf(paramInt), a_(paramInt));
            paramInt += 1;
          }
        }
      }
      else if ((paramInt >= 0) && (paramInt < k))
      {
        if (!r.containsKey(Integer.valueOf(paramInt))) {
          r.put(Integer.valueOf(paramInt), a_(paramInt));
        } else {
          r.remove(Integer.valueOf(paramInt));
        }
      }
    }
  }
  
  public long[] c(boolean paramBoolean)
  {
    long[] arrayOfLong = new long[7];
    int i = aO.size();
    if ((paramBoolean) || (i == 0))
    {
      arrayOfLong[0] = aC;
      arrayOfLong[1] = aE;
      arrayOfLong[2] = aG;
      arrayOfLong[3] = aK;
      arrayOfLong[4] = aI;
      arrayOfLong[5] = aM;
      arrayOfLong[6] = (aC + aE + aG + aK + aI + aM);
      return arrayOfLong;
    }
    g localg = (g)aO.peek();
    arrayOfLong[0] = e;
    arrayOfLong[1] = g;
    arrayOfLong[2] = i;
    arrayOfLong[3] = m;
    arrayOfLong[4] = k;
    arrayOfLong[5] = o;
    arrayOfLong[6] = b;
    return arrayOfLong;
  }
  
  public int d()
  {
    if (aQ == null) {
      return 0;
    }
    return aQ.getItemCount();
  }
  
  public void d(int paramInt)
  {
    au.a(paramInt);
    aT.sendEmptyMessage(3);
  }
  
  public long[] d(boolean paramBoolean)
  {
    int i;
    long[] arrayOfLong;
    if (paramBoolean)
    {
      i = 8;
      arrayOfLong = new long[i];
      i = aO.size();
      if ((!paramBoolean) && (i != 0)) {
        break label134;
      }
      arrayOfLong[0] = aB;
      arrayOfLong[1] = aD;
      arrayOfLong[2] = aF;
      arrayOfLong[3] = aJ;
      arrayOfLong[4] = aH;
      arrayOfLong[5] = aL;
      if (!paramBoolean) {
        break label102;
      }
      arrayOfLong[6] = (ay - az);
      arrayOfLong[7] = ay;
    }
    for (;;)
    {
      return arrayOfLong;
      i = 7;
      break;
      label102:
      arrayOfLong[6] = 0L;
      i = 0;
      while (i < 6)
      {
        arrayOfLong[6] += arrayOfLong[i];
        i += 1;
      }
    }
    label134:
    g localg = (g)aO.peek();
    arrayOfLong[0] = d;
    arrayOfLong[1] = f;
    arrayOfLong[2] = h;
    arrayOfLong[3] = l;
    arrayOfLong[4] = j;
    arrayOfLong[5] = n;
    arrayOfLong[6] = a;
    return arrayOfLong;
  }
  
  public void e()
  {
    if (aQ != null) {
      aQ.notifyDataSetChanged();
    }
  }
  
  public com.estrongs.fs.h f()
  {
    if (B())
    {
      C();
      return b();
    }
    return j();
  }
  
  public void g()
  {
    b(false);
  }
  
  public List<com.estrongs.fs.h> h()
  {
    File[] arrayOfFile = au.c();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < arrayOfFile.length)
    {
      localArrayList.add(new u(arrayOfFile[i]));
      i += 1;
    }
    return localArrayList;
  }
  
  protected void i() {}
  
  public void i_()
  {
    super.i_();
  }
  
  public com.estrongs.fs.h j()
  {
    for (;;)
    {
      try
      {
        if (ar != 0L) {
          return null;
        }
        if (ap.e(b, as.getPath())) {
          break label231;
        }
        ap = true;
        at = as.getParentFile();
        if (F != null) {
          F.a("du://" + at.getAbsolutePath(), false);
        }
        if (aO.size() <= 1) {
          break label233;
        }
        Object localObject1 = (g)aO.get(aO.size() - 2);
        aA = 0L;
        if (ax == null) {
          ax = u();
        }
        if (ax != null)
        {
          ax.a();
          bh localbh = ax;
          if (localObject1 == null)
          {
            l = az;
            localbh.a(l);
            ax.setMessage(j(2131231747));
            ax.b(aA);
          }
        }
        else
        {
          g();
          localObject1 = new u(at);
          return (com.estrongs.fs.h)localObject1;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return null;
      }
      long l = localException.b();
      continue;
      label231:
      return null;
      label233:
      Object localObject2 = null;
    }
  }
  
  protected List<String> k()
  {
    List localList = ap.a();
    if ((localList.remove(b.b())) && ("mounted".equals(Environment.getExternalStorageState()))) {
      localList.add(0, an);
    }
    return localList;
  }
  
  public void l()
  {
    if (!d)
    {
      d = true;
      j(c());
    }
    super.l();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */