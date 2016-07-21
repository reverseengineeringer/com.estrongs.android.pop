package com.estrongs.fs.b;

import com.estrongs.a.a;
import com.estrongs.a.a.m;
import com.estrongs.a.p;
import com.estrongs.android.util.bg;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.util.j;
import com.estrongs.fs.w;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;

public class ao
  extends a
{
  public static int e = 1;
  public static int f = 2;
  private int a = e;
  private boolean b = true;
  private d c;
  private boolean d = false;
  volatile List<ap> g = new ArrayList();
  Stack<ap> h = new Stack();
  ap i;
  boolean j;
  boolean k = false;
  private long l = 0L;
  private boolean m = false;
  
  public ao(d paramd, List<u> paramList)
  {
    setPriority(4);
    c = paramd;
    processData.m = false;
    if ((paramList != null) && (paramList.size() >= 1))
    {
      paramd = processData;
      if (com.estrongs.android.util.ap.aQ(get0a.getPath())) {
        break label263;
      }
    }
    label263:
    for (boolean bool = true;; bool = false)
    {
      l = bool;
      sendMessage(10, new Object[] { Integer.valueOf(1) });
      int n = 0;
      for (;;)
      {
        if (n >= paramList.size()) {
          break label277;
        }
        paramd = new ap();
        try
        {
          a = geta.getPath();
          if (com.estrongs.android.util.ap.bw(a)) {
            a = geta.getAbsolutePath();
          }
          b = geta;
          g.add(paramd);
          h.push(paramd);
        }
        catch (Exception paramd)
        {
          for (;;)
          {
            paramd.printStackTrace();
          }
        }
        n += 1;
      }
    }
    label277:
    task_type = 1;
    canRestart = true;
    if ((paramList.size() > 0) && (com.estrongs.android.util.ap.bl(get0a.getAbsolutePath())))
    {
      m = true;
      l = j.l(get0a.getAbsolutePath());
    }
  }
  
  public ao(List<h> paramList, d paramd)
  {
    this(paramList, paramd, false);
  }
  
  public ao(List<h> paramList, d paramd, boolean paramBoolean)
  {
    setPriority(4);
    d = paramBoolean;
    c = paramd;
    processData.m = false;
    if ((paramList != null) && (paramList.size() >= 1))
    {
      paramd = processData;
      if (com.estrongs.android.util.ap.aQ(((h)paramList.get(0)).getPath())) {
        break label239;
      }
    }
    label239:
    for (paramBoolean = true;; paramBoolean = false)
    {
      l = paramBoolean;
      sendMessage(10, new Object[] { Integer.valueOf(1) });
      int n = 0;
      for (;;)
      {
        if (n >= paramList.size()) {
          break label252;
        }
        paramd = new ap();
        try
        {
          a = ((h)paramList.get(n)).getPath();
          b = ((h)paramList.get(n));
          s = d;
          g.add(paramd);
          h.push(paramd);
        }
        catch (Exception paramd)
        {
          for (;;)
          {
            paramd.printStackTrace();
          }
        }
        n += 1;
      }
    }
    label252:
    task_type = 1;
    canRestart = true;
    if ((paramList.size() > 0) && (com.estrongs.android.util.ap.bl(((h)paramList.get(0)).getAbsolutePath())))
    {
      m = true;
      l = j.l(((h)paramList.get(0)).getAbsolutePath());
    }
  }
  
  private void a(ap paramap, int paramInt, long paramLong)
  {
    if (bg.F(paramInt))
    {
      m += paramLong;
      n += 1L;
      return;
    }
    if (bg.e(paramInt))
    {
      i += paramLong;
      j += 1L;
      return;
    }
    if (bg.g(paramInt))
    {
      k += paramLong;
      l += 1L;
      return;
    }
    if (bg.a(paramInt))
    {
      g += paramLong;
      h += 1L;
      return;
    }
    if ((bg.j(paramInt)) || (bg.x(paramInt)) || (bg.B(paramInt)) || (bg.y(paramInt)) || (bg.m(paramInt)))
    {
      o += paramLong;
      p += 1L;
      return;
    }
    q += paramLong;
    r += 1L;
  }
  
  public List<ap> a()
  {
    return g;
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
  }
  
  void a(ap paramap, h paramh, boolean paramBoolean)
  {
    try
    {
      processData.a = paramh.getAbsolutePath();
      if (paramh.getFileType().a())
      {
        f += 1;
        localObject = processData;
        d += 1L;
        if (b)
        {
          localObject = new ap();
          a = paramh.getAbsolutePath();
          w = paramap;
          b = paramh;
          s = paramBoolean;
          v.add(localObject);
        }
        a(paramap, true, 0L, 0);
        onProgress(processData);
        return;
      }
      if (!a(paramh)) {
        if (getTaskResult() != null) {
          break label287;
        }
      }
      label287:
      for (Object localObject = null;; localObject = getTaskResultb)
      {
        requestStop(localObject);
        e += 1;
        localObject = processData;
        d += 1L;
        long l1 = paramh.length();
        c += l1;
        if (m) {
          d += j.b(l1, l);
        }
        int n = bg.b(paramh.getAbsolutePath());
        if ((a & f) != 0) {
          a(paramap, n, l1);
        }
        paramh = processData;
        f += l1;
        a(paramap, false, l1, n);
        onProgress(processData);
        return;
      }
      return;
    }
    catch (Exception paramap) {}
  }
  
  void a(ap paramap, boolean paramBoolean, long paramLong, int paramInt)
  {
    paramap = w;
    if (paramap != null)
    {
      if (paramBoolean) {
        f += 1;
      }
      for (;;)
      {
        paramap = w;
        break;
        e += 1;
        c += paramLong;
        if (m) {
          d += j.b(paramLong, l);
        }
        if ((a & f) != 0) {
          a(paramap, paramInt, paramLong);
        }
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  protected boolean a(h paramh)
  {
    return true;
  }
  
  public ap b()
  {
    if (g.size() == 0) {
      return null;
    }
    if (g.size() == 1) {
      return (ap)g.get(0);
    }
    ap localap1 = new ap();
    int n = 0;
    while (n < g.size())
    {
      ap localap2 = (ap)g.get(n);
      n += n;
      c += c;
      if (m) {
        d += d;
      }
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
      p += p;
      q += q;
      r += r;
      n += 1;
    }
    return localap1;
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    switch (paramInt)
    {
    default: 
      super.handleMessage(paramInt, paramVarArgs);
    }
    do
    {
      return;
      processData.i = ((Integer)paramVarArgs[0]).intValue();
      onProgress(processData);
      return;
      k = true;
      paramVarArgs = (h)paramVarArgs[0];
    } while ((i == null) || (paramVarArgs == null));
    a(i, paramVarArgs, j);
  }
  
  public boolean task()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(com.estrongs.android.util.ap.a());
    while (h.size() > 0)
    {
      if (taskStopped()) {}
      ap localap;
      boolean bool2;
      do
      {
        return false;
        localap = (ap)h.peek();
        if (t)
        {
          u = true;
          h.pop();
          break;
        }
        bool2 = s;
        if (b.getFileType().a()) {
          break label272;
        }
      } while (!a(b));
      t = true;
      e += 1;
      Object localObject = processData;
      d += 1L;
      long l1 = b.length();
      c += l1;
      if (m) {
        d += j.b(l1, l);
      }
      localObject = processData;
      f += l1;
      int n = bg.b(b.getAbsolutePath());
      if ((a & f) != 0) {
        a(localap, n, l1);
      }
      a(localap, false, l1, n);
      onProgress(processData);
      continue;
      label272:
      boolean bool1 = bool2;
      if (bool2)
      {
        localObject = com.estrongs.android.util.ap.ca(b.getAbsolutePath());
        if (localObject == null) {
          break label523;
        }
        n = 0;
        label300:
        if ((n >= localArrayList.size()) || (((String)localObject).equals(localArrayList.get(n))))
        {
          if (n >= localArrayList.size()) {
            break label512;
          }
          localArrayList.remove(n);
          bool1 = false;
        }
      }
      else
      {
        label349:
        f += 1;
        a(localap, true, 0L, 0);
        onProgress(processData);
      }
      label512:
      label523:
      label546:
      List localList;
      for (;;)
      {
        try
        {
          i = localap;
          j = bool1;
          k = false;
          if (!(b instanceof com.estrongs.android.pop.app.b.i)) {
            break label546;
          }
          localObject = new f(new File(b.getAbsolutePath()));
          localObject = c.a((h)localObject, true, com.estrongs.fs.i.c);
          if (k) {
            break label567;
          }
          Iterator localIterator = ((List)localObject).iterator();
          if (!localIterator.hasNext()) {
            break label567;
          }
          h localh = (h)localIterator.next();
          a(i, localh, j);
          continue;
          n += 1;
        }
        catch (Exception localException)
        {
          return false;
        }
        break label300;
        h.pop();
        break;
        bool1 = bool2;
        if (com.estrongs.android.util.ap.bU(b.getAbsolutePath()) == null) {
          break label349;
        }
        bool1 = false;
        break label349;
        localList = c.a(b, true, com.estrongs.fs.i.c);
      }
      label567:
      i = null;
      if (localList == null)
      {
        t = true;
      }
      else
      {
        if (taskStopped())
        {
          onProgress(processData);
          return false;
        }
        n = 0;
        while (n < v.size())
        {
          h.push(v.get(n));
          n += 1;
        }
        t = true;
      }
    }
    setTaskResult(0, null);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */