package com.estrongs.fs.b;

import com.estrongs.a.a.m;
import com.estrongs.a.p;
import com.estrongs.a.q;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.scanner.l;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.a.b;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.g;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.impl.local.i;
import com.estrongs.fs.impl.media.e;
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
  protected List<h> b = new LinkedList();
  public List<h> c = new LinkedList();
  protected boolean d = false;
  public List<String> e = new ArrayList();
  public List<String> f = new ArrayList();
  public List<String> g = new ArrayList();
  public List<String> h = new ArrayList();
  public List<String> i = new ArrayList();
  public int j = 1;
  public boolean k = false;
  public List<String> l;
  Set<String> m = null;
  private boolean n = false;
  private boolean o = false;
  private long p = 0L;
  private boolean q = false;
  private boolean r = false;
  
  public ab(com.estrongs.fs.d paramd, h paramh, boolean paramBoolean)
  {
    this(paramd, paramh, paramBoolean, false);
  }
  
  public ab(com.estrongs.fs.d paramd, h paramh, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramd;
    b = new ArrayList();
    d = paramBoolean1;
    b.add(paramh);
    task_type = 4;
    processData.j = paramh.getName();
    processData.m = false;
    boolean bool2 = com.estrongs.android.util.ap.bm(paramh.getPath());
    paramd = processData;
    if (!bool2)
    {
      paramBoolean1 = true;
      l = paramBoolean1;
      processData.k = false;
      processData.n = false;
      paramd = processData;
      if (bool2) {
        break label287;
      }
    }
    label287:
    for (paramBoolean1 = bool1;; paramBoolean1 = false)
    {
      o = paramBoolean1;
      recordSummary("source", com.estrongs.android.util.ap.F(com.estrongs.android.util.ap.bB(paramh.getPath())));
      canPause = false;
      if (paramBoolean2) {
        d();
      }
      return;
      paramBoolean1 = false;
      break;
    }
  }
  
  public ab(com.estrongs.fs.d paramd, List<h> paramList, boolean paramBoolean)
  {
    this(paramd, paramList, paramBoolean, false);
  }
  
  public ab(com.estrongs.fs.d paramd, List<h> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramd;
    b.addAll(paramList);
    d = paramBoolean1;
    task_type = 4;
    paramd = new StringBuilder();
    int i2 = paramList.size();
    int i1 = 0;
    label255:
    boolean bool1;
    if (i1 < i2)
    {
      paramd.append(((h)paramList.get(i1)).getName());
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
        break label381;
      }
      paramBoolean1 = com.estrongs.android.util.ap.bm(((h)paramList.get(0)).getPath());
      processData.j = paramd.toString();
      processData.m = false;
      paramd = processData;
      if (paramBoolean1) {
        break label386;
      }
      bool1 = true;
      label286:
      l = bool1;
      processData.k = false;
      processData.n = false;
      paramd = processData;
      if (paramBoolean1) {
        break label392;
      }
    }
    label381:
    label386:
    label392:
    for (paramBoolean1 = bool2;; paramBoolean1 = false)
    {
      o = paramBoolean1;
      if (i2 > 0) {
        recordSummary("source", com.estrongs.android.util.ap.F(com.estrongs.android.util.ap.bB(((h)paramList.get(0)).getPath())));
      }
      if (paramBoolean2) {
        d();
      }
      canPause = false;
      return;
      i1 += 1;
      break;
      paramBoolean1 = false;
      break label255;
      bool1 = false;
      break label286;
    }
  }
  
  private void a(List<h> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()))
    {
      l.a().a(true);
      return;
    }
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = ((h)paramList.next()).getAbsolutePath();
      if (com.estrongs.android.util.ap.bl(str)) {
        localArrayList.add(str);
      }
    }
    if (localArrayList.size() > 0) {
      l.a().a(localArrayList);
    }
    l.a().a(true);
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    return (paramString2.length() > paramString1.length()) && (paramString2.startsWith(paramString1)) && ((paramString1.endsWith("/")) || (paramString2.charAt(paramString1.length()) == '/'));
  }
  
  private void b(String paramString)
  {
    int i2 = 1;
    if (m == null) {
      m = new HashSet();
    }
    int i1;
    String str;
    if (!m.contains(paramString))
    {
      Iterator localIterator = m.iterator();
      i1 = 0;
      if (!localIterator.hasNext()) {
        break label137;
      }
      str = (String)localIterator.next();
      if (!a(str, paramString)) {
        break label119;
      }
      m.remove(str);
      m.add(paramString);
      i1 = i2;
    }
    label119:
    label137:
    for (;;)
    {
      if (i1 == 0) {
        m.add(paramString);
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
    if ((o) && (m != null))
    {
      Iterator localIterator = m.iterator();
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
    paramString = com.estrongs.android.util.ap.bV(paramString);
    String str = com.estrongs.android.util.ap.bU(paramString);
    if (str == null) {}
    int i1;
    do
    {
      return null;
      i1 = paramString.lastIndexOf("/");
    } while (i1 == -1);
    return str + "/.estrongs/recycle/" + p + paramString.substring(0, i1) + "/es_recycle_content" + paramString.substring(i1);
  }
  
  private void d()
  {
    p = System.currentTimeMillis();
    com.estrongs.fs.impl.q.a.a(p);
  }
  
  private boolean e()
  {
    Object localObject = new ao(b, a);
    processData.k = false;
    ((ao)localObject).addProgressListeners(getProgressListeners());
    ((ao)localObject).execute(false);
    if (((ao)localObject).getTaskStatus() != 4)
    {
      localObject = ((ao)localObject).getTaskResult();
      setTaskResult(a, b);
      return false;
    }
    localObject = ((ao)localObject).a();
    int i1 = 0;
    while (i1 < ((List)localObject).size())
    {
      ap localap = (ap)((List)localObject).get(i1);
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
  
  public List<h> a()
  {
    return b;
  }
  
  public void a(String paramString)
  {
    if (paramString.endsWith("/"))
    {
      i.add(paramString);
      return;
    }
    i.add(paramString + "/");
  }
  
  public void a(boolean paramBoolean)
  {
    o = paramBoolean;
  }
  
  public boolean a(File paramFile)
  {
    if (!o) {}
    while ((paramFile.isDirectory()) || ((!bg.c(paramFile.getAbsolutePath())) && (!bg.f(paramFile.getAbsolutePath())))) {
      return false;
    }
    b(paramFile.getParent());
    return true;
  }
  
  protected void b()
  {
    if (bk.f())
    {
      e.b(h);
      if (i.size() > 0) {
        e.a(i);
      }
    }
    do
    {
      return;
      if (e.size() > 0) {
        com.estrongs.fs.impl.p.c.b().c(e);
      }
      if (f.size() > 0) {
        com.estrongs.fs.impl.n.d.b().c(f);
      }
      if (g.size() > 0) {
        com.estrongs.fs.impl.v.c.b().c(g);
      }
    } while (i.size() <= 0);
    com.estrongs.fs.impl.p.c.b().c(i);
    com.estrongs.fs.impl.n.d.b().c(i);
    com.estrongs.fs.impl.v.c.b().c(i);
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
    boolean bool1 = com.estrongs.android.util.ap.bC(str);
    Object localObject4;
    Object localObject5;
    Object localObject1;
    Object localObject2;
    if (bool1)
    {
      localObject4 = com.estrongs.android.util.ap.bV(str);
      localObject5 = com.estrongs.android.util.ap.cm(str);
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
      if ((p != 0L) && (bool1) && (!((String)localObject2).startsWith((String)localObject1)))
      {
        localObject1 = new File((String)localObject1 + "/.nomedia");
        if (!((File)localObject1).exists()) {
          i.g(((File)localObject1).getAbsolutePath());
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
          if (!i.g(((File)localObject4).getAbsolutePath())) {
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
      if (com.estrongs.android.util.ap.cp(str)) {
        q = true;
      }
      return paramFile.delete();
      localObject1 = null;
      localObject2 = null;
    }
  }
  
  public boolean c()
  {
    return p != 0L;
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
    if (!r) {
      b();
    }
    if ((p != 0L) || (q))
    {
      b.a().d("recycle://");
      if (p == 0L) {
        break label74;
      }
      com.estrongs.fs.impl.q.a.b(p);
    }
    for (;;)
    {
      int i1 = getTaskResulta;
      if ((i1 == 0) || (4 == i1)) {
        FileExplorerActivity.g(true);
      }
      return;
      label74:
      com.estrongs.fs.impl.q.a.a();
    }
  }
  
  public boolean task()
  {
    if (ad.a(FexApplication.a()).aW()) {
      d = false;
    }
    n = false;
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
        r = com.estrongs.android.util.ap.aY(((h)b.get(0)).getPath());
        l.a().e();
        bool1 = a.a(b, c);
        a(c);
      }
      catch (FileSystemException localFileSystemException)
      {
        Object localObject1;
        str1 = localFileSystemException.getMessage();
        if (!r) {
          continue;
        }
        b();
        if (c.size() <= 0) {
          break label882;
        }
        b.a().c(c, j);
        bool1 = false;
        continue;
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
        if (!r) {
          continue;
        }
        b();
        if (c.size() <= 0) {
          break label875;
        }
        b.a().c(c, j);
        localObject2 = null;
        bool1 = false;
        continue;
      }
      finally
      {
        if (!r) {
          continue;
        }
        b();
        if (c.size() <= 0) {
          continue;
        }
        b.a().c(c, j);
      }
      try
      {
        localObject1 = ((h)b.get(0)).getPath();
        if (!com.estrongs.android.util.ap.aY((String)localObject1)) {
          continue;
        }
        localObject1 = b.a().h(com.estrongs.fs.a.a.a((String)localObject1));
        if ((localObject1 != null) && (bk.a(((h)localObject1).getExtra("item_count")) == b.size()) && (!com.estrongs.android.util.ap.aX(((h)localObject1).getPath()))) {
          b.a().b((h)localObject1);
        }
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
      }
    }
    if (r) {
      b();
    }
    if (c.size() > 0)
    {
      b.a().c(c, j);
      localObject1 = null;
    }
    for (;;)
    {
      if (!bool1)
      {
        Object localObject5 = localObject1;
        if (localObject1 == null)
        {
          localObject5 = new StringBuilder();
          if (b.size() <= 0) {
            break label819;
          }
        }
        label672:
        String str1;
        Object localObject2;
        label819:
        for (localObject1 = ((h)b.get(0)).getName();; localObject4 = "")
        {
          localObject5 = (String)localObject1 + " " + FexApplication.a().getString(2131231898);
          if (b.size() >= 2) {
            localObject5 = FexApplication.a().getString(2131231901);
          }
          if ((getTaskResulta == 0) || (getTaskResulta == 4)) {
            setTaskResult(10, new q((String)localObject5, null));
          }
          n = true;
          return bool1;
          localObject1 = b.iterator();
          for (;;)
          {
            if (!((Iterator)localObject1).hasNext()) {
              break label672;
            }
            localObject5 = (h)((Iterator)localObject1).next();
            bool2 = localObject5 instanceof g;
            if (!bool2) {
              break;
            }
            try
            {
              localObject5 = (g)localObject5;
              String str2 = ((g)localObject5).a();
              if (str2 != null)
              {
                new File(str2).delete();
                b.a().b(str2, null);
              }
              if (((g)localObject5).b())
              {
                str2 = ((g)localObject5).c();
                if (str2 != null)
                {
                  new File(str2).delete();
                  b.a().b(str2, null);
                }
                localObject5 = ((g)localObject5).d();
                if (localObject5 != null)
                {
                  new File((String)localObject5).delete();
                  b.a().b((String)localObject5, null);
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
      }
      Object localObject4 = c.iterator();
      do
      {
        if (!((Iterator)localObject4).hasNext()) {
          break;
        }
      } while (((h)((Iterator)localObject4).next() instanceof f));
      for (boolean bool2 = false;; bool2 = true)
      {
        k = bool2;
        break;
      }
      label875:
      localObject4 = null;
      bool1 = false;
      continue;
      label882:
      bool1 = false;
      continue;
      localObject4 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */