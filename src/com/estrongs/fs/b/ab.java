package com.estrongs.fs.b;

import com.estrongs.a.a.m;
import com.estrongs.a.p;
import com.estrongs.a.q;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bd;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.impl.b.f;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class ab
  extends com.estrongs.a.a
{
  protected com.estrongs.fs.d a;
  protected List<com.estrongs.fs.h> b = new LinkedList();
  public List<com.estrongs.fs.h> c = new LinkedList();
  protected boolean d = false;
  public List<String> e = new ArrayList();
  public List<String> f = new ArrayList();
  public List<String> g = new ArrayList();
  public List<String> h = new ArrayList();
  public int i = 1;
  public List<String> j;
  Set<String> k = null;
  private List<String> l = new ArrayList();
  private boolean m = false;
  private boolean n = false;
  private long o = 0L;
  private boolean p = false;
  private boolean q = false;
  
  public ab(com.estrongs.fs.d paramd, com.estrongs.fs.h paramh, boolean paramBoolean)
  {
    this(paramd, paramh, paramBoolean, false);
  }
  
  public ab(com.estrongs.fs.d paramd, com.estrongs.fs.h paramh, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramd;
    b = new ArrayList();
    d = paramBoolean1;
    b.add(paramh);
    task_type = 4;
    processData.j = paramh.getName();
    processData.m = false;
    boolean bool2 = com.estrongs.android.util.am.bb(paramh.getPath());
    paramd = processData;
    if (!bool2)
    {
      paramBoolean1 = true;
      l = paramBoolean1;
      processData.k = false;
      processData.n = false;
      paramd = processData;
      if (bool2) {
        break label282;
      }
    }
    label282:
    for (paramBoolean1 = bool1;; paramBoolean1 = false)
    {
      o = paramBoolean1;
      recordSummary("source", com.estrongs.android.util.am.D(com.estrongs.android.util.am.bk(paramh.getPath())));
      canPause = false;
      if (paramBoolean2) {
        d();
      }
      return;
      paramBoolean1 = false;
      break;
    }
  }
  
  public ab(com.estrongs.fs.d paramd, List<com.estrongs.fs.h> paramList, boolean paramBoolean)
  {
    this(paramd, paramList, paramBoolean, false);
  }
  
  public ab(com.estrongs.fs.d paramd, List<com.estrongs.fs.h> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramd;
    b.addAll(paramList);
    d = paramBoolean1;
    task_type = 4;
    paramd = new StringBuilder();
    int i2 = paramList.size();
    int i1 = 0;
    label250:
    boolean bool1;
    if (i1 < i2)
    {
      paramd.append(((com.estrongs.fs.h)paramList.get(i1)).getName());
      if (i1 + 1 != i2)
      {
        paramd.append(" , ");
        if (i1 >= 4) {
          paramd.append("...");
        }
      }
    }
    else
    {
      if (i2 <= 0) {
        break label376;
      }
      paramBoolean1 = com.estrongs.android.util.am.bb(((com.estrongs.fs.h)paramList.get(0)).getPath());
      processData.j = paramd.toString();
      processData.m = false;
      paramd = processData;
      if (paramBoolean1) {
        break label381;
      }
      bool1 = true;
      label281:
      l = bool1;
      processData.k = false;
      processData.n = false;
      paramd = processData;
      if (paramBoolean1) {
        break label387;
      }
    }
    label376:
    label381:
    label387:
    for (paramBoolean1 = bool2;; paramBoolean1 = false)
    {
      o = paramBoolean1;
      if (i2 > 0) {
        recordSummary("source", com.estrongs.android.util.am.D(com.estrongs.android.util.am.bk(((com.estrongs.fs.h)paramList.get(0)).getPath())));
      }
      if (paramBoolean2) {
        d();
      }
      canPause = false;
      return;
      i1 += 1;
      break;
      paramBoolean1 = false;
      break label250;
      bool1 = false;
      break label281;
    }
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    return (paramString2.length() > paramString1.length()) && (paramString2.startsWith(paramString1)) && ((paramString1.endsWith("/")) || (paramString2.charAt(paramString1.length()) == '/'));
  }
  
  private void b(String paramString)
  {
    int i2 = 1;
    if (k == null) {
      k = new HashSet();
    }
    int i1;
    String str;
    if (!k.contains(paramString))
    {
      Iterator localIterator = k.iterator();
      i1 = 0;
      if (!localIterator.hasNext()) {
        break label137;
      }
      str = (String)localIterator.next();
      if (!a(str, paramString)) {
        break label119;
      }
      k.remove(str);
      k.add(paramString);
      i1 = i2;
    }
    label119:
    label137:
    for (;;)
    {
      if (i1 == 0) {
        k.add(paramString);
      }
      return;
      if (a(paramString, str)) {
        i1 = 1;
      }
      for (;;)
      {
        break;
      }
    }
  }
  
  private boolean c(String paramString)
  {
    if ((n) && (k != null))
    {
      Iterator localIterator = k.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if ((str.equals(paramString)) || (a(paramString, str))) {
          return true;
        }
      }
    }
    return false;
  }
  
  private String d(String paramString)
  {
    paramString = com.estrongs.android.util.am.bE(paramString);
    String str = com.estrongs.android.util.am.bD(paramString);
    if (str == null) {}
    int i1;
    do
    {
      return null;
      i1 = paramString.lastIndexOf("/");
    } while (i1 == -1);
    return str + "/.estrongs/recycle/" + o + paramString.substring(0, i1) + "/es_recycle_content" + paramString.substring(i1);
  }
  
  private void d()
  {
    o = System.currentTimeMillis();
    com.estrongs.fs.impl.l.a.a(o);
  }
  
  private boolean e()
  {
    Object localObject = new am(b, a);
    processData.k = false;
    ((am)localObject).addProgressListeners(getProgressListeners());
    ((am)localObject).execute(false);
    if (((am)localObject).getTaskStatus() != 4)
    {
      localObject = ((am)localObject).getTaskResult();
      setTaskResult(a, b);
      return false;
    }
    localObject = ((am)localObject).a();
    int i1 = 0;
    while (i1 < ((List)localObject).size())
    {
      an localan = (an)((List)localObject).get(i1);
      m localm = processData;
      c += e + f;
      localm = processData;
      e += c;
      i1 += 1;
    }
    if (processData.e > 0L) {
      processData.l = true;
    }
    return true;
  }
  
  public List<com.estrongs.fs.h> a()
  {
    return b;
  }
  
  public void a(String paramString)
  {
    if (paramString.endsWith("/"))
    {
      l.add(paramString);
      return;
    }
    l.add(paramString + "/");
  }
  
  public void a(boolean paramBoolean)
  {
    n = paramBoolean;
  }
  
  public boolean a(File paramFile)
  {
    if (!n) {}
    while ((paramFile.isDirectory()) || ((!bc.c(paramFile.getAbsolutePath())) && (!bc.f(paramFile.getAbsolutePath())))) {
      return false;
    }
    b(paramFile.getParent());
    return true;
  }
  
  protected void b()
  {
    if (bd.f())
    {
      com.estrongs.fs.impl.media.d.b(h);
      if (l.size() > 0) {
        com.estrongs.fs.impl.media.d.a(l);
      }
    }
    do
    {
      return;
      if (e.size() > 0) {
        com.estrongs.fs.impl.k.b.c().c(e);
      }
      if (f.size() > 0) {
        com.estrongs.fs.impl.i.b.c().c(f);
      }
      if (g.size() > 0) {
        com.estrongs.fs.impl.q.b.c().c(g);
      }
    } while (l.size() <= 0);
    com.estrongs.fs.impl.k.b.c().c(l);
    com.estrongs.fs.impl.i.b.c().c(l);
    com.estrongs.fs.impl.q.b.c().c(l);
  }
  
  public boolean b(File paramFile)
  {
    Object localObject3 = null;
    boolean bool2 = false;
    String str = paramFile.getAbsolutePath();
    if ((paramFile.isDirectory()) && (c(str)))
    {
      bool1 = true;
      return bool1;
    }
    boolean bool1 = com.estrongs.android.util.am.bl(str);
    Object localObject4;
    Object localObject5;
    Object localObject1;
    Object localObject2;
    if (bool1)
    {
      localObject4 = com.estrongs.android.util.am.bE(str);
      localObject5 = com.estrongs.android.util.am.bT(str);
      localObject1 = localObject5;
      localObject2 = localObject4;
      if (localObject5 == null)
      {
        bool1 = false;
        localObject2 = localObject4;
        localObject1 = localObject5;
      }
    }
    for (;;)
    {
      if ((o != 0L) && (bool1) && (!((String)localObject2).startsWith((String)localObject1)))
      {
        localObject1 = new File((String)localObject1 + "/.nomedia");
        if (!((File)localObject1).exists()) {
          com.estrongs.fs.impl.local.h.g(((File)localObject1).getAbsolutePath());
        }
        localObject5 = new File(d(str));
        localObject4 = ((File)localObject5).getParentFile();
        bool1 = bool2;
        if (localObject4 == null) {
          break;
        }
        int i1;
        if (!((File)localObject4).exists())
        {
          for (localObject1 = ((File)localObject4).getParentFile(); (localObject1 != null) && (!((File)localObject1).exists()); localObject1 = ((File)localObject1).getParentFile()) {}
          bool1 = bool2;
          if (!com.estrongs.fs.impl.local.h.g(((File)localObject4).getAbsolutePath())) {
            break;
          }
          i1 = 1;
          label233:
          bool1 = bool2;
          if (((File)localObject5).exists()) {
            break;
          }
          if (!((String)localObject2).equals(str)) {
            break label398;
          }
        }
        label398:
        for (bool2 = paramFile.renameTo((File)localObject5);; bool2 = new File((String)localObject2).renameTo((File)localObject5))
        {
          bool1 = bool2;
          if (bool2) {
            break;
          }
          bool1 = bool2;
          if (i1 == 0) {
            break;
          }
          bool1 = bool2;
          if (localObject1 == null) {
            break;
          }
          localObject1 = ((File)localObject1).getAbsolutePath();
          paramFile = (File)localObject1;
          if (!((String)localObject1).endsWith("/")) {
            paramFile = (String)localObject1 + "/";
          }
          ((File)localObject4).delete();
          for (localObject1 = ((File)localObject4).getParentFile();; localObject1 = ((File)localObject1).getParentFile())
          {
            bool1 = bool2;
            if (localObject1 == null) {
              break;
            }
            bool1 = bool2;
            if (!((File)localObject1).getAbsolutePath().startsWith(paramFile)) {
              break;
            }
            ((File)localObject1).delete();
          }
          bool1 = bool2;
          if (!((File)localObject4).isDirectory()) {
            break;
          }
          i1 = 0;
          localObject1 = localObject3;
          break label233;
        }
      }
      if (com.estrongs.android.util.am.bW(str)) {
        p = true;
      }
      return paramFile.delete();
      localObject1 = null;
      localObject2 = null;
    }
  }
  
  public boolean c()
  {
    return o != 0L;
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    switch (paramInt)
    {
    default: 
      super.handleMessage(paramInt, paramVarArgs);
      return;
    case 1: 
      localm = processData;
      d += ((Long)paramVarArgs[0]).longValue();
      processData.a = ((String)paramVarArgs[1]);
      return;
    }
    m localm = processData;
    f += ((Long)paramVarArgs[0]).longValue();
    processData.a = ((String)paramVarArgs[1]);
  }
  
  protected void postTask()
  {
    if (!q) {
      b();
    }
    if ((o != 0L) || (p))
    {
      com.estrongs.fs.a.b.a().d("recycle://");
      if (o == 0L) {
        break label74;
      }
      com.estrongs.fs.impl.l.a.b(o);
    }
    for (;;)
    {
      int i1 = getTaskResulta;
      if ((i1 == 0) || (4 == i1)) {
        FileExplorerActivity.h(true);
      }
      return;
      label74:
      com.estrongs.fs.impl.l.a.a();
    }
  }
  
  public boolean task()
  {
    if (ad.a(FexApplication.a()).aW()) {
      d = false;
    }
    m = false;
    if (!d)
    {
      processData.l = false;
      processData.m = false;
      processData.o = false;
    }
    boolean bool1;
    for (;;)
    {
      try
      {
        if ((processData.c == -1L) && (processData.e == -1L) && (d))
        {
          processData.c = 0L;
          processData.e = 0L;
          bool1 = e();
          if (!bool1) {
            return false;
          }
        }
        onProgress(processData);
        if (hasProgressListener()) {
          new ac(this).start();
        }
        q = com.estrongs.android.util.am.aO(((com.estrongs.fs.h)b.get(0)).getPath());
        bool1 = a.a(b, c);
      }
      catch (FileSystemException localFileSystemException)
      {
        Object localObject1;
        str1 = localFileSystemException.getMessage();
        if (!q) {
          continue;
        }
        b();
        if (c.size() <= 0) {
          break label819;
        }
        com.estrongs.fs.a.b.a().c(c, i);
        bool1 = false;
        continue;
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
        if (!q) {
          continue;
        }
        b();
        if (c.size() <= 0) {
          break label812;
        }
        com.estrongs.fs.a.b.a().c(c, i);
        localObject2 = null;
        bool1 = false;
        continue;
      }
      finally
      {
        if (!q) {
          continue;
        }
        b();
        if (c.size() <= 0) {
          continue;
        }
        com.estrongs.fs.a.b.a().c(c, i);
      }
      try
      {
        localObject1 = ((com.estrongs.fs.h)b.get(0)).getPath();
        if (!com.estrongs.android.util.am.aO((String)localObject1)) {
          continue;
        }
        localObject1 = com.estrongs.fs.a.b.a().h(com.estrongs.fs.a.a.a((String)localObject1));
        if ((localObject1 != null) && (bd.a(((com.estrongs.fs.h)localObject1).getExtra("item_count")) == b.size()) && (!com.estrongs.android.util.am.aN(((com.estrongs.fs.h)localObject1).getPath()))) {
          com.estrongs.fs.a.b.a().b((com.estrongs.fs.h)localObject1);
        }
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
      }
    }
    if (q) {
      b();
    }
    if (c.size() > 0)
    {
      com.estrongs.fs.a.b.a().c(c, i);
      localObject1 = null;
    }
    for (;;)
    {
      Object localObject4;
      if (!bool1)
      {
        localObject4 = localObject1;
        if (localObject1 == null)
        {
          localObject4 = new StringBuilder();
          if (b.size() <= 0) {
            break label805;
          }
        }
      }
      label658:
      String str1;
      Object localObject2;
      label805:
      for (localObject1 = ((com.estrongs.fs.h)b.get(0)).getName();; str2 = "")
      {
        localObject4 = (String)localObject1 + " " + FexApplication.a().getString(2131427769);
        if (b.size() >= 2) {
          localObject4 = FexApplication.a().getString(2131427766);
        }
        if ((getTaskResulta == 0) || (getTaskResulta == 4)) {
          setTaskResult(10, new q((String)localObject4, null));
        }
        m = true;
        return bool1;
        localObject1 = b.iterator();
        for (;;)
        {
          if (!((Iterator)localObject1).hasNext()) {
            break label658;
          }
          localObject4 = (com.estrongs.fs.h)((Iterator)localObject1).next();
          boolean bool2 = localObject4 instanceof f;
          if (!bool2) {
            break;
          }
          try
          {
            localObject4 = (f)localObject4;
            String str3 = ((f)localObject4).a();
            if (str3 != null)
            {
              new File(str3).delete();
              com.estrongs.fs.a.b.a().b(str3, null);
            }
            if (((f)localObject4).b())
            {
              str3 = ((f)localObject4).c();
              if (str3 != null)
              {
                new File(str3).delete();
                com.estrongs.fs.a.b.a().b(str3, null);
              }
              localObject4 = ((f)localObject4).d();
              if (localObject4 != null)
              {
                new File((String)localObject4).delete();
                com.estrongs.fs.a.b.a().b((String)localObject4, null);
              }
            }
          }
          catch (Exception localException3)
          {
            localException3.printStackTrace();
          }
        }
        break;
      }
      label812:
      String str2 = null;
      bool1 = false;
      continue;
      label819:
      bool1 = false;
      continue;
      str2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */