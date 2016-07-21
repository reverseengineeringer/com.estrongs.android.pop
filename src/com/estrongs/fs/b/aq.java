package com.estrongs.fs.b;

import com.estrongs.a.q;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.utils.cm;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.impl.local.i;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import com.estrongs.fs.impl.media.e;
import com.estrongs.fs.util.j;
import com.estrongs.fs.z;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class aq
  extends r
{
  protected List<com.estrongs.fs.h> A = new ArrayList();
  protected ab B = null;
  public List<String> C;
  private String D = null;
  private String E = null;
  private List<String> F = new ArrayList();
  private List<String> G = new ArrayList();
  private List<String> H = new ArrayList();
  private List<String> I = new ArrayList();
  private List<String> J = new ArrayList();
  private List<String> K = new ArrayList();
  private int L = 1;
  private boolean M = false;
  private com.estrongs.a.a N;
  private boolean O = true;
  private boolean P = false;
  private boolean Q = false;
  boolean a = false;
  boolean b = false;
  
  public aq(com.estrongs.fs.d paramd, List<com.estrongs.fs.h> paramList, com.estrongs.fs.h paramh)
  {
    super(paramd, paramList, paramh);
    if (ap.I(paramh.getAbsolutePath()) == 0) {
      a = ap.a(((com.estrongs.fs.h)x.get(0)).getAbsolutePath(), paramh.getAbsolutePath());
    }
    for (;;)
    {
      canRestart = false;
      task_type = 3;
      recordSummary("task_type", Integer.valueOf(task_type));
      return;
      if ((ap.bm(paramh.getAbsolutePath())) && (ap.a(((com.estrongs.fs.h)x.get(0)).getAbsolutePath()).equals(ap.a(paramh.getAbsolutePath()))) && (!ap.w(paramh.getAbsolutePath()))) {
        b = true;
      }
    }
  }
  
  private void a(File paramFile, List<String> paramList1, List<String> paramList2, List<String> paramList3, List<String> paramList4)
  {
    if (paramFile.isDirectory())
    {
      paramFile = paramFile.listFiles();
      if (paramFile != null)
      {
        int j = paramFile.length;
        int i = 0;
        while (i < j)
        {
          a(paramFile[i], paramList1, paramList2, paramList3, paramList4);
          i += 1;
        }
      }
    }
    else
    {
      L |= com.estrongs.fs.a.a.g(paramFile.getAbsolutePath());
      if (!bk.f()) {
        break label88;
      }
      paramList4.add(paramFile.getAbsolutePath());
    }
    label88:
    do
    {
      return;
      if (com.estrongs.fs.impl.media.b.a(paramFile.getAbsolutePath()))
      {
        paramList1.add(paramFile.getAbsolutePath());
        return;
      }
      if (com.estrongs.fs.impl.media.b.b(paramFile.getAbsolutePath()))
      {
        paramList2.add(paramFile.getAbsolutePath());
        return;
      }
    } while (!com.estrongs.fs.impl.media.b.c(paramFile.getAbsolutePath()));
    paramList3.add(paramFile.getAbsolutePath());
  }
  
  private void a(String paramString1, String paramString2)
  {
    if (ap.bC(paramString1))
    {
      if (!new File(paramString2).isDirectory()) {
        break label99;
      }
      String str = paramString1;
      if (!paramString1.endsWith("/")) {
        str = paramString1 + "/";
      }
      J.add(str);
    }
    for (;;)
    {
      if (ap.bC(paramString2)) {
        a(new File(paramString2), F, G, H, I);
      }
      return;
      label99:
      K.add(paramString1);
    }
  }
  
  private void a(List<String> paramList)
  {
    ArrayList localArrayList = new ArrayList(K.size() + J.size());
    Iterator localIterator = J.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add((String)localIterator.next());
    }
    localIterator = K.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add((String)localIterator.next());
    }
    if (localArrayList.size() > 0) {
      com.estrongs.android.scanner.l.a().a(localArrayList);
    }
    if (paramList.size() > 0) {
      com.estrongs.android.scanner.l.a().b(paramList);
    }
    com.estrongs.android.scanner.l.a().a(true);
  }
  
  private boolean a(File paramFile, String paramString1, String paramString2)
  {
    if (!paramFile.isDirectory()) {}
    File[] arrayOfFile;
    int i;
    File localFile;
    do
    {
      do
      {
        return false;
        arrayOfFile = paramFile.listFiles();
        if (arrayOfFile == null) {
          break;
        }
        i = 0;
        if (i >= arrayOfFile.length) {
          break;
        }
      } while (taskStopped());
      localFile = new File(paramString2 + arrayOfFile[i].getAbsolutePath().substring(paramString1.length()));
      if (!arrayOfFile[i].isDirectory()) {
        break label144;
      }
      if (!localFile.exists()) {
        break;
      }
    } while ((!localFile.isDirectory()) || (!a(arrayOfFile[i], paramString1, paramString2)));
    label144:
    label188:
    do
    {
      do
      {
        do
        {
          i += 1;
          break;
        } while (arrayOfFile[i].renameTo(localFile));
        return false;
        if (!localFile.exists()) {
          break label188;
        }
        if (localFile.isDirectory()) {
          break;
        }
        i.a(FexApplication.a(), localFile.getAbsolutePath(), null);
      } while (arrayOfFile[i].renameTo(localFile));
      return false;
    } while (arrayOfFile[i].renameTo(localFile));
    return false;
    i.a(FexApplication.a(), paramFile.getAbsolutePath(), null);
    return true;
  }
  
  private boolean b(String paramString)
  {
    if (ap.aG(paramString)) {}
    for (;;)
    {
      try
      {
        InputStream localInputStream = c.e(paramString);
        if (localInputStream != null)
        {
          j.a(localInputStream);
          return true;
        }
        j.a(localInputStream);
      }
      catch (FileSystemException localFileSystemException1)
      {
        com.estrongs.android.util.l.d("Move", "exist failed - " + ap.G(paramString));
        j.a(null);
        continue;
      }
      finally
      {
        j.a(null);
      }
      return false;
      try
      {
        boolean bool = c.b(paramString);
        return bool;
      }
      catch (FileSystemException localFileSystemException2)
      {
        com.estrongs.android.util.l.d("Move", "exist failed - " + ap.G(paramString));
      }
    }
  }
  
  public void a(com.estrongs.a.a parama)
  {
    N = parama;
  }
  
  public void g(boolean paramBoolean)
  {
    O = paramBoolean;
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    if (paramInt == 13)
    {
      if (bk.a(D))
      {
        D = ((String)paramVarArgs[1]);
        return;
      }
      E = ((String)paramVarArgs[1]);
      return;
    }
    super.handleMessage(paramInt, paramVarArgs);
  }
  
  protected void i()
  {
    if (!O) {}
    do
    {
      do
      {
        return;
      } while (!M);
      try
      {
        if (bk.f())
        {
          e.a(J);
          e.b(K);
          e.a(I, null);
          return;
        }
      }
      catch (MediaStoreInsertException localMediaStoreInsertException)
      {
        localMediaStoreInsertException.printStackTrace();
        cm.b();
        return;
      }
      if (F.size() > 0)
      {
        com.estrongs.fs.impl.p.c.b().b(J);
        com.estrongs.fs.impl.p.c.b().c(K);
      }
      if (G.size() > 0)
      {
        com.estrongs.fs.impl.n.d.b().b(J);
        com.estrongs.fs.impl.n.d.b().c(K);
      }
      if (H.size() > 0)
      {
        com.estrongs.fs.impl.v.c.b().b(J);
        com.estrongs.fs.impl.v.c.b().c(K);
      }
      if (F.size() > 0) {
        com.estrongs.fs.impl.p.c.b().a(F);
      }
      if (G.size() > 0) {
        com.estrongs.fs.impl.n.d.b().a(G);
      }
    } while (H.size() <= 0);
    com.estrongs.fs.impl.v.c.b().a(H);
  }
  
  public List<String> j()
  {
    return F;
  }
  
  public List<String> k()
  {
    return G;
  }
  
  public List<String> l()
  {
    return H;
  }
  
  public List<String> m()
  {
    return I;
  }
  
  public List<com.estrongs.fs.h> n()
  {
    return A;
  }
  
  protected void postTask()
  {
    super.postTask();
    if (!Q) {
      i();
    }
  }
  
  public void removeProgressListener(com.estrongs.a.a.l paraml)
  {
    super.removeProgressListener(paraml);
    if (B != null) {
      B.removeProgressListener(paraml);
    }
  }
  
  public boolean task()
  {
    Object localObject1 = com.estrongs.android.pop.b.b();
    Object localObject4;
    Object localObject5;
    boolean bool1;
    if (!ap.i((String)localObject1, ap.bV(n.getAbsolutePath())))
    {
      localObject4 = x.iterator();
      do
      {
        if (!((Iterator)localObject4).hasNext()) {
          break;
        }
        localObject5 = (com.estrongs.fs.h)((Iterator)localObject4).next();
      } while (((localObject5 instanceof f)) && (ap.i((String)localObject1, ap.bV(((com.estrongs.fs.h)localObject5).getAbsolutePath()))));
      bool1 = false;
      P = bool1;
    }
    if (o)
    {
      setTaskResult(14, new q("Error", null));
      bool1 = false;
      label117:
      return bool1;
    }
    if (!l)
    {
      processData.l = false;
      processData.m = false;
      processData.o = false;
    }
    com.estrongs.android.scanner.l.a().e();
    ArrayList localArrayList4;
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    ArrayList localArrayList3;
    int i;
    if (a)
    {
      localArrayList4 = new ArrayList();
      localArrayList1 = new ArrayList();
      processData.c = f.size();
      processData.m = false;
      processData.l = false;
      onProgress(processData);
      Q = ap.aY(f.get(0)).a.getPath());
      localArrayList2 = new ArrayList();
      localArrayList3 = new ArrayList();
      i = 0;
    }
    for (;;)
    {
      String str1;
      String str2;
      com.estrongs.a.a.h localh;
      try
      {
        if (i >= f.size()) {
          break label1635;
        }
        bool1 = taskStopped();
        if (bool1) {
          return false;
        }
        str1 = f.get(i)).a.getAbsolutePath();
        str2 = f.get(i)).b;
        if (ap.e(str1, str2))
        {
          sendMessage(1, new Object[] { Long.valueOf(1L), str1 });
          onProgress(processData);
          break label2040;
        }
        if (!bk.i()) {
          continue;
        }
        localObject4 = new File(ap.bV(str1));
        localObject1 = new File(ap.bV(str2));
      }
      catch (Exception localException1)
      {
        a(localArrayList1);
        if (!Q) {
          continue;
        }
        i();
        com.estrongs.fs.a.b.a().b(localArrayList3, L);
        com.estrongs.fs.a.b.a().c(localArrayList2, L);
        if (localArrayList4.size() != 0) {
          break label1679;
        }
        return true;
        localObject4 = new File(str1);
        File localFile = new File(str2);
        continue;
        localObject5 = N;
        continue;
        if (g != 1) {
          break label1505;
        }
        if (!(bool1 ^ bool2)) {
          continue;
        }
        setTaskResult(16, new q((String)FexApplication.a().getText(2131231900), null));
        return false;
        if (!localFile.isDirectory()) {
          break label1231;
        }
        if (!a((File)localObject4, ((File)localObject4).getAbsolutePath(), localFile.getAbsolutePath())) {
          break label950;
        }
        localArrayList2.add(f.get(i)).a);
        localArrayList3.add(new z(n, f.get(i)).a.getName()));
        sendMessage(1, new Object[] { Long.valueOf(1L), str1 });
        onProgress(processData);
        a(str1, str2);
        M = true;
      }
      finally
      {
        a(localArrayList1);
        if (!Q) {
          continue;
        }
        i();
        com.estrongs.fs.a.b.a().b(localArrayList3, L);
        com.estrongs.fs.a.b.a().c(localArrayList2, L);
      }
      localObject5 = localObject1;
      if (i.a(((File)localObject1).getAbsolutePath()))
      {
        localObject5 = localObject1;
        if (i.a(((File)localObject4).getAbsolutePath()))
        {
          bool1 = i.h(((File)localObject4).getAbsolutePath());
          bool2 = i.h(((File)localObject1).getAbsolutePath());
          if (N == null)
          {
            localObject5 = this;
            localh = (com.estrongs.a.a.h)((com.estrongs.a.a)localObject5).getDecision(com.estrongs.a.a.h.class, new Object[] { str2, Boolean.valueOf(false), f.get(i)).a, c.j(str2) });
            if (g != 2) {
              continue;
            }
            sendMessage(1, new Object[] { Long.valueOf(1L), str1 });
            onProgress(processData);
            break label2040;
          }
          label950:
          if (taskStopped())
          {
            localObject4 = com.estrongs.fs.a.b.a();
            if (f.get(i)).a.getAbsolutePath().endsWith("/"))
            {
              localObject3 = f.get(i)).a.getAbsolutePath() + "*";
              ((com.estrongs.fs.a.b)localObject4).a((String)localObject3);
              localObject4 = com.estrongs.fs.a.b.a();
              if (!n.getAbsolutePath().endsWith("/")) {
                break label1181;
              }
            }
            label1181:
            for (localObject3 = n.getAbsolutePath() + "*";; localObject3 = n.getAbsolutePath() + "/*")
            {
              ((com.estrongs.fs.a.b)localObject4).a((String)localObject3);
              a(localArrayList1);
              if (Q) {
                i();
              }
              com.estrongs.fs.a.b.a().b(localArrayList3, L);
              com.estrongs.fs.a.b.a().c(localArrayList2, L);
              return false;
              localObject3 = f.get(i)).a.getAbsolutePath() + "/*";
              break;
            }
          }
          localArrayList4.add(f.get(i));
          break label2040;
          label1231:
          i.a(FexApplication.a(), ((File)localObject3).getAbsolutePath(), null);
          localObject5 = localObject3;
        }
      }
      if (i.a(((File)localObject4).getAbsolutePath()))
      {
        bool2 = i.a(((File)localObject4).getAbsolutePath(), ((File)localObject5).getAbsolutePath());
        bool1 = bool2;
        if (!bool2)
        {
          localObject3 = ap.bB(((File)localObject5).getAbsolutePath());
          bool1 = bool2;
          if (localObject3 != null)
          {
            bool1 = bool2;
            if (!i.a((String)localObject3))
            {
              bool1 = bool2;
              if (i.g((String)localObject3))
              {
                localObject3 = com.estrongs.fs.a.b.a().g((String)localObject3);
                if (localObject3 != null) {
                  com.estrongs.fs.a.b.a().a((String)localObject3);
                }
                bool1 = i.a(((File)localObject4).getAbsolutePath(), ((File)localObject5).getAbsolutePath());
              }
            }
          }
        }
        if (!bool1) {
          break label1618;
        }
        A.add(f.get(i)).a);
        a(str1, str2);
        M = true;
        localArrayList2.add(f.get(i)).a);
        localArrayList3.add(new z(n, f.get(i)).a.getName()));
        localArrayList1.add(((File)localObject5).getAbsolutePath());
      }
      for (;;)
      {
        sendMessage(1, new Object[] { Long.valueOf(1L), str1 });
        onProgress(processData);
        break label2040;
        label1505:
        int j = g;
        if (j == 3)
        {
          a(localArrayList1);
          if (Q) {
            i();
          }
          com.estrongs.fs.a.b.a().b(localArrayList3, L);
          com.estrongs.fs.a.b.a().c(localArrayList2, L);
          return false;
        }
        localObject5 = localObject3;
        if (g != 5) {
          break;
        }
        localObject5 = new File(j.m(str2));
        sendMessage(1, new Object[] { Long.valueOf(1L), str1 });
        onProgress(processData);
        break;
        label1618:
        localArrayList4.add(f.get(i));
      }
      label1635:
      a(localArrayList1);
      if (Q) {
        i();
      }
      com.estrongs.fs.a.b.a().b(localArrayList3, L);
      com.estrongs.fs.a.b.a().c(localArrayList2, L);
      continue;
      label1679:
      f = localArrayList4;
      a();
      Object localObject3 = new ArrayList();
      i = 0;
      label1700:
      if (i < f.size())
      {
        if (ap.e(f.get(i)).a.getAbsolutePath(), f.get(i)).b)) {}
        for (;;)
        {
          i += 1;
          break label1700;
          if (!b) {
            break;
          }
          try
          {
            bool1 = c.a(x, n);
            return bool1;
          }
          catch (Exception localException2)
          {
            localException2.printStackTrace();
            return false;
          }
          localException2.add(f.get(i)).a);
        }
      }
      boolean bool2 = super.task();
      bool1 = bool2;
      if (!bool2) {
        break label117;
      }
      bool1 = bool2;
      if (localException2.size() <= 0) {
        break label117;
      }
      if (((bk.b(D)) && (!b(D))) || ((bk.b(E)) && (!b(E))))
      {
        setTaskResult(10000, new q("", null));
        return false;
      }
      if ((C == null) || (C.size() == 0) || (d == 0))
      {
        B = new ab(c, localException2, false);
        B.l = C;
        B.processData.i = 3;
        B.processData.k = true;
        B.addProgressListeners(getProgressListeners());
        B.setTaskDecisionListener(getTaskDecisionListener());
        B.setParentTask(this);
        B.execute(false);
        A.addAll(B.c);
      }
      return true;
      bool1 = true;
      break;
      label2040:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */