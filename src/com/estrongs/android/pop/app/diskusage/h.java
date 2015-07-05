package com.estrongs.android.pop.app.diskusage;

import android.app.Activity;
import android.os.Environment;
import android.os.Handler;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.av;
import com.estrongs.android.view.aw;
import com.estrongs.android.view.ca;
import com.estrongs.android.view.cb;
import com.estrongs.android.widget.HeaderGridView;
import com.estrongs.android.widget.bg;
import com.estrongs.android.widget.bi;
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
  extends aw
{
  private static final String ai = ;
  public static DisplayMetrics c = new DisplayMetrics();
  protected com.estrongs.fs.util.h a = new i(this);
  private long aA = 0L;
  private long aB = 0L;
  private long aC = 0L;
  private long aD = 0L;
  private long aE = 0L;
  private long aF = 0L;
  private long aG = 0L;
  private long aH = 0L;
  private boolean aI = false;
  private Stack<g> aJ = new Stack();
  private Stack<Parcelable> aK = new Stack();
  private com.estrongs.android.ui.a.k aL;
  private long aM;
  private ListView aN;
  private Handler aO = new j(this);
  private Object aj = new Object();
  private boolean ak = false;
  private boolean al = false;
  private long am = 0L;
  private File an;
  private File ao;
  private e ap;
  private e aq;
  private HashMap<String, e> ar = new HashMap();
  private bg as;
  private long at;
  private long au;
  private long av;
  private long aw = 0L;
  private long ax = 0L;
  private long ay = 0L;
  private long az = 0L;
  String b;
  private boolean d = false;
  
  public h(Activity paramActivity, com.estrongs.fs.util.a.a parama, cb paramcb)
  {
    super(paramActivity, parama, paramcb);
    paramActivity = (ViewGroup)g.getParent();
    paramActivity.removeAllViews();
    paramActivity.addView(ag.inflate(2130903110, null));
    aN = ((ListView)k(2131362141));
    aN.setVisibility(0);
    aN.setBackgroundColor(0);
    aN.setDivider(null);
    aN.setDividerHeight(0);
    aN.setCacheColorHint(0);
    aN.setScrollBarStyle(33554432);
    aN.setSelector(2130837560);
    aN.setScrollingCacheEnabled(false);
    paramActivity = new LinearLayout(ad);
    paramActivity.setMinimumHeight(com.estrongs.android.ui.d.a.a(ad, 16.0F));
    aN.addHeaderView(paramActivity, null, false);
    paramActivity = new LinearLayout(ad);
    paramActivity.setMinimumHeight(com.estrongs.android.ui.d.a.a(ad, 16.0F));
    aN.addFooterView(paramActivity, null, false);
    if (bd.a(null)) {}
    for (paramActivity = ai;; paramActivity = null)
    {
      b = paramActivity;
      al();
      return;
    }
  }
  
  private void a(g paramg)
  {
    int i = 0;
    while (i < aJ.size())
    {
      a((g)aJ.get(i), paramg);
      i += 1;
    }
    au -= a;
    aw -= d;
    ax -= e;
    ay -= f;
    az -= g;
    aA -= h;
    aB -= i;
    aC -= j;
    aD -= k;
    aE -= l;
    aF -= m;
    aG -= n;
    aH -= o;
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
  
  private void a(String paramString)
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
    if (bd.a(str)) {
      paramString = ai;
    }
    b = paramString;
    ao = new File(b);
    if (am != 0L) {
      return;
    }
    if (y != null) {
      y.a("du://" + ao.getAbsolutePath(), false);
    }
    q();
    aI = true;
    aJ.clear();
    aw = 0L;
    ax = 0L;
    ay = 0L;
    az = 0L;
    aA = 0L;
    aB = 0L;
    aC = 0L;
    aD = 0L;
    aE = 0L;
    aF = 0L;
    aG = 0L;
    aH = 0L;
    if (ar.get(b) == null)
    {
      ap = new e(ad);
      ap.a(a);
      ap.a(at);
      ap.b(aM);
      ar.put(b, ap);
      if (as == null)
      {
        as = r();
        if (as != null) {
          as.a(au);
        }
        av = 0L;
      }
    }
    for (;;)
    {
      g();
      return;
      as.a();
      break;
      ap = ((e)ar.get(paramString));
      ap.a(at);
    }
  }
  
  private void al()
  {
    ((TextView)k(2131362145)).setText(l(2131427426) + "/" + l(2131427427));
    aN.setOnItemClickListener(new q(this));
  }
  
  private void am()
  {
    aL = new com.estrongs.android.ui.a.k(ad, ap);
    aN.setAdapter(aL);
    d(false);
  }
  
  private void an()
  {
    if (!al)
    {
      if (!ak) {
        break label108;
      }
      if (aJ.size() > 0) {
        aJ.pop();
      }
    }
    for (;;)
    {
      ap = aq;
      an = ao;
      ar.put(b, ap);
      am();
      if ((ak) && (aK.size() > 0)) {
        aN.onRestoreInstanceState((Parcelable)aK.pop());
      }
      ak = false;
      return;
      label108:
      g localg = ap.a(ao);
      if (localg != null)
      {
        if ((aJ.size() > 0) && (aJ.peek() == localg)) {
          aJ.pop();
        }
        aJ.push(localg);
      }
      aK.push(aN.onSaveInstanceState());
    }
  }
  
  private void ao()
  {
    if (as == null) {
      as = r();
    }
    if ((as != null) && (am != 0L))
    {
      as.show();
      am = System.currentTimeMillis();
    }
  }
  
  private void ap()
  {
    if (as == null) {
      as = r();
    }
    am = System.currentTimeMillis();
    if (as != null) {
      aO.sendEmptyMessageDelayed(1, 800L);
    }
  }
  
  private void as()
  {
    if (as != null)
    {
      as.dismiss();
      as = null;
    }
    if (H != null) {
      H.a(this, true);
    }
  }
  
  private boolean at()
  {
    if (as != null) {
      return as.isShowing();
    }
    return false;
  }
  
  private void au()
  {
    al = true;
    synchronized (aj)
    {
      if (aq != null) {
        aq.a();
      }
      if (bd.a(b, ao.getAbsolutePath())) {
        aO.post(new r(this));
      }
      return;
    }
  }
  
  private void b(g paramg)
  {
    int i = 0;
    while (i < aJ.size())
    {
      b((g)aJ.get(i), paramg);
      i += 1;
    }
    au += a;
    aw += d;
    ax += e;
    ay += f;
    az += g;
    aA += h;
    aB += i;
    aC += j;
    aD += k;
    aE += l;
    aF += m;
    aG += n;
    aH += o;
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
  
  private void j(boolean paramBoolean)
  {
    Object localObject;
    if (paramBoolean)
    {
      localObject = com.estrongs.fs.util.j.k(b);
      at = (localObject[0] * localObject[2]);
      au = ((localObject[0] - localObject[1]) * localObject[2]);
      aM = localObject[2];
      l = localObject[1];
    }
    for (long l = localObject[2] * l;; l = at - au)
    {
      localObject = (TextView)k(2131362148);
      TextView localTextView1 = (TextView)k(2131362150);
      TextView localTextView2 = (TextView)k(2131362152);
      ((TextView)localObject).setText(com.estrongs.fs.util.j.c(at));
      localTextView1.setText(com.estrongs.fs.util.j.c(au));
      localTextView2.setText(com.estrongs.fs.util.j.c(l));
      return;
    }
  }
  
  private void p()
  {
    Iterator localIterator = aq.i.entrySet().iterator();
    while (localIterator.hasNext())
    {
      g localg = (g)((Map.Entry)localIterator.next()).getValue();
      if (localg != null)
      {
        aw += d;
        ax += e;
        ay += f;
        az += g;
        aA += h;
        aB += i;
        aC += j;
        aD += k;
        aE += l;
        aF += m;
        aG += n;
        aH += o;
      }
    }
  }
  
  private void q()
  {
    j(true);
  }
  
  private bg r()
  {
    try
    {
      bg localbg = new bg(ad);
      localbg.a(new bi());
      localbg.setTitle(l(2131427461));
      localbg.a(1);
      localbg.setCancelable(false);
      localbg.a(new o(this));
      localbg.setOnDismissListener(new p(this));
      return localbg;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public void a(int paramInt) {}
  
  public void a(View.OnTouchListener paramOnTouchListener)
  {
    super.a(paramOnTouchListener);
    aN.setOnTouchListener(paramOnTouchListener);
  }
  
  public void a(AdapterView.OnItemLongClickListener paramOnItemLongClickListener)
  {
    aN.setOnItemLongClickListener(paramOnItemLongClickListener);
  }
  
  public void a(String paramString, TypedMap paramTypedMap)
  {
    if (d) {
      a(paramString);
    }
  }
  
  public void a(List<com.estrongs.fs.h> paramList)
  {
    aj.a((ESActivity)ad, paramList, new s(this, paramList), new t(this));
  }
  
  public void a(boolean paramBoolean)
  {
    l = paramBoolean;
    if (!l) {
      c(-2);
    }
    for (;;)
    {
      if (aL != null) {
        aL.a(paramBoolean);
      }
      return;
      e();
    }
  }
  
  public void a_()
  {
    super.a_();
  }
  
  public com.estrongs.fs.h b()
  {
    if (ao != null) {
      return new u(ao);
    }
    return null;
  }
  
  public com.estrongs.fs.h b(int paramInt)
  {
    if ((aL != null) && (paramInt >= 0) && (paramInt < aL.getCount())) {
      return new u((File)aL.getItem(paramInt));
    }
    return null;
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      al = false;
      ar.remove(b);
      a(b);
      return;
    }
    al = false;
    ap();
    new k(this, "DiskUsage-Counter", k()).start();
  }
  
  public String c()
  {
    if (ao != null) {
      return "du://" + ao.getAbsolutePath();
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
        if (aL == null) {
          return;
        }
        int j = m.size();
        k = aL.getCount();
        if (paramInt == -1)
        {
          m.clear();
          paramInt = i;
          if (paramInt < k)
          {
            m.put(Integer.valueOf(paramInt), b(paramInt));
            paramInt += 1;
            continue;
          }
        }
        else
        {
          if (paramInt != -2) {
            break label156;
          }
          v();
        }
        aL.a(new ArrayList(m.keySet()));
        e();
        if ((this.i == null) || (j == m.size())) {
          break;
        }
        this.i.a(w());
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
        int[] arrayOfInt = y();
        if (arrayOfInt != null)
        {
          m.clear();
          paramInt = arrayOfInt[0];
          while (paramInt <= arrayOfInt[1])
          {
            m.put(Integer.valueOf(paramInt), b(paramInt));
            paramInt += 1;
          }
        }
      }
      else if ((paramInt >= 0) && (paramInt < k))
      {
        if (!m.containsKey(Integer.valueOf(paramInt))) {
          m.put(Integer.valueOf(paramInt), b(paramInt));
        } else {
          m.remove(Integer.valueOf(paramInt));
        }
      }
    }
  }
  
  public long[] c(boolean paramBoolean)
  {
    long[] arrayOfLong = new long[7];
    int i = aJ.size();
    if ((paramBoolean) || (i == 0))
    {
      arrayOfLong[0] = ax;
      arrayOfLong[1] = az;
      arrayOfLong[2] = aB;
      arrayOfLong[3] = aF;
      arrayOfLong[4] = aD;
      arrayOfLong[5] = aH;
      arrayOfLong[6] = (ax + az + aB + aF + aD + aH);
      return arrayOfLong;
    }
    g localg = (g)aJ.peek();
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
    if (aL == null) {
      return 0;
    }
    return aL.getCount();
  }
  
  public void d(int paramInt)
  {
    ap.a(paramInt);
    aO.sendEmptyMessage(3);
  }
  
  public long[] d(boolean paramBoolean)
  {
    int i;
    long[] arrayOfLong;
    if (paramBoolean)
    {
      i = 8;
      arrayOfLong = new long[i];
      i = aJ.size();
      if ((!paramBoolean) && (i != 0)) {
        break label134;
      }
      arrayOfLong[0] = aw;
      arrayOfLong[1] = ay;
      arrayOfLong[2] = aA;
      arrayOfLong[3] = aE;
      arrayOfLong[4] = aC;
      arrayOfLong[5] = aG;
      if (!paramBoolean) {
        break label102;
      }
      arrayOfLong[6] = (at - au);
      arrayOfLong[7] = at;
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
    g localg = (g)aJ.peek();
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
    if (aL != null) {
      aL.notifyDataSetChanged();
    }
  }
  
  public com.estrongs.fs.h f()
  {
    if (at())
    {
      au();
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
    File[] arrayOfFile = ap.c();
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
  
  public com.estrongs.fs.h j()
  {
    for (;;)
    {
      try
      {
        if (am != 0L) {
          return null;
        }
        if (am.e(b, an.getPath())) {
          break label231;
        }
        ak = true;
        ao = an.getParentFile();
        if (y != null) {
          y.a("du://" + ao.getAbsolutePath(), false);
        }
        if (aJ.size() <= 1) {
          break label233;
        }
        Object localObject1 = (g)aJ.get(aJ.size() - 2);
        av = 0L;
        if (as == null) {
          as = r();
        }
        if (as != null)
        {
          as.a();
          bg localbg = as;
          if (localObject1 == null)
          {
            l = au;
            localbg.a(l);
            as.setMessage(l(2131427863));
            as.b(av);
          }
        }
        else
        {
          g();
          localObject1 = new u(ao);
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
    List localList = am.a();
    if ((localList.remove(b.b())) && ("mounted".equals(Environment.getExternalStorageState()))) {
      localList.add(0, ai);
    }
    return localList;
  }
  
  public void l()
  {
    if (!d)
    {
      d = true;
      g(c());
    }
    super.l();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */