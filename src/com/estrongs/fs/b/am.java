package com.estrongs.fs.b;

import com.estrongs.a.a;
import com.estrongs.a.p;
import com.estrongs.android.util.bc;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.util.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;

public class am
  extends a
{
  public static int e = 1;
  public static int f = 2;
  private int a = e;
  private boolean b = true;
  private d c;
  private boolean d = false;
  volatile List<an> g = new ArrayList();
  Stack<an> h = new Stack();
  an i;
  boolean j;
  boolean k = false;
  private long l = 0L;
  private boolean m = false;
  
  public am(d paramd, List<u> paramList)
  {
    setPriority(4);
    c = paramd;
    processData.m = false;
    if ((paramList != null) && (paramList.size() >= 1))
    {
      paramd = processData;
      if (com.estrongs.android.util.am.aG(get0a.getPath())) {
        break label231;
      }
    }
    label231:
    for (boolean bool = true;; bool = false)
    {
      l = bool;
      sendMessage(10, new Object[] { Integer.valueOf(1) });
      int n = 0;
      for (;;)
      {
        if (n >= paramList.size()) {
          break label245;
        }
        paramd = new an();
        try
        {
          a = geta.getPath();
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
    label245:
    task_type = 1;
    canRestart = true;
    if ((paramList.size() > 0) && (com.estrongs.android.util.am.ba(get0a.getAbsolutePath())))
    {
      m = true;
      l = j.l(get0a.getAbsolutePath());
    }
  }
  
  public am(List<h> paramList, d paramd)
  {
    this(paramList, paramd, false);
  }
  
  public am(List<h> paramList, d paramd, boolean paramBoolean)
  {
    setPriority(4);
    d = paramBoolean;
    c = paramd;
    processData.m = false;
    if ((paramList != null) && (paramList.size() >= 1))
    {
      paramd = processData;
      if (com.estrongs.android.util.am.aG(((h)paramList.get(0)).getPath())) {
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
        paramd = new an();
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
    if ((paramList.size() > 0) && (com.estrongs.android.util.am.ba(((h)paramList.get(0)).getAbsolutePath())))
    {
      m = true;
      l = j.l(((h)paramList.get(0)).getAbsolutePath());
    }
  }
  
  private void a(an paraman, int paramInt, long paramLong)
  {
    if (bc.C(paramInt))
    {
      m += paramLong;
      n += 1L;
      return;
    }
    if (bc.e(paramInt))
    {
      i += paramLong;
      j += 1L;
      return;
    }
    if (bc.g(paramInt))
    {
      k += paramLong;
      l += 1L;
      return;
    }
    if (bc.a(paramInt))
    {
      g += paramLong;
      h += 1L;
      return;
    }
    if ((bc.j(paramInt)) || (bc.u(paramInt)) || (bc.y(paramInt)) || (bc.v(paramInt)) || (bc.m(paramInt)))
    {
      o += paramLong;
      p += 1L;
      return;
    }
    q += paramLong;
    r += 1L;
  }
  
  public List<an> a()
  {
    return g;
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
  }
  
  void a(an paraman, h paramh, boolean paramBoolean)
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
          localObject = new an();
          a = paramh.getAbsolutePath();
          w = paraman;
          b = paramh;
          s = paramBoolean;
          v.add(localObject);
        }
        a(paraman, true, 0L, 0);
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
        int n = bc.b(paramh.getAbsolutePath());
        if ((a & f) != 0) {
          a(paraman, n, l1);
        }
        paramh = processData;
        f += l1;
        a(paraman, false, l1, n);
        onProgress(processData);
        return;
      }
      return;
    }
    catch (Exception paraman) {}
  }
  
  void a(an paraman, boolean paramBoolean, long paramLong, int paramInt)
  {
    paraman = w;
    if (paraman != null)
    {
      if (paramBoolean) {
        f += 1;
      }
      for (;;)
      {
        paraman = w;
        break;
        e += 1;
        c += paramLong;
        if (m) {
          d += j.b(paramLong, l);
        }
        if ((a & f) != 0) {
          a(paraman, paramInt, paramLong);
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
  
  public an b()
  {
    if (g.size() == 0) {
      return null;
    }
    if (g.size() == 1) {
      return (an)g.get(0);
    }
    an localan1 = new an();
    int n = 0;
    while (n < g.size())
    {
      an localan2 = (an)g.get(n);
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
    return localan1;
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
    localArrayList.addAll(com.estrongs.android.util.am.a());
    while (h.size() > 0)
    {
      if (taskStopped()) {}
      an localan;
      boolean bool2;
      do
      {
        return false;
        localan = (an)h.peek();
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
      int n = bc.b(b.getAbsolutePath());
      if ((a & f) != 0) {
        a(localan, n, l1);
      }
      a(localan, false, l1, n);
      onProgress(processData);
      continue;
      label272:
      boolean bool1 = bool2;
      if (bool2)
      {
        localObject = com.estrongs.android.util.am.bJ(b.getAbsolutePath());
        if (localObject == null) {
          break label489;
        }
        n = 0;
        label300:
        if ((n < localArrayList.size()) && (!((String)localObject).equals(localArrayList.get(n)))) {
          break label471;
        }
        if (n >= localArrayList.size()) {
          break label478;
        }
        localArrayList.remove(n);
        bool1 = false;
      }
      for (;;)
      {
        f += 1;
        a(localan, true, 0L, 0);
        onProgress(processData);
        try
        {
          i = localan;
          j = bool1;
          k = false;
          localObject = c.a(b, true, i.c);
          if (k) {
            break label512;
          }
          Iterator localIterator = ((List)localObject).iterator();
          while (localIterator.hasNext())
          {
            h localh = (h)localIterator.next();
            a(i, localh, j);
          }
          n += 1;
        }
        catch (Exception localException)
        {
          return false;
        }
        label471:
        break label300;
        label478:
        h.pop();
        break;
        label489:
        bool1 = bool2;
        if (com.estrongs.android.util.am.bD(b.getAbsolutePath()) != null) {
          bool1 = false;
        }
      }
      label512:
      i = null;
      if (localObject == null)
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
 * Qualified Name:     com.estrongs.fs.b.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */