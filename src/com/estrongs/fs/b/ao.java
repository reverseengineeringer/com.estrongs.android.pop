package com.estrongs.fs.b;

import android.util.Log;
import com.estrongs.a.a.l;
import com.estrongs.a.q;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.utils.cd;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import com.estrongs.fs.o;
import com.estrongs.fs.util.j;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public class ao
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
  boolean a = false;
  boolean b = false;
  
  public ao(com.estrongs.fs.d paramd, List<com.estrongs.fs.h> paramList, com.estrongs.fs.h paramh)
  {
    super(paramd, paramList, paramh);
    if (am.G(paramh.getAbsolutePath()) == 0) {
      a = am.a(((com.estrongs.fs.h)x.get(0)).getAbsolutePath(), paramh.getAbsolutePath());
    }
    for (;;)
    {
      canRestart = false;
      task_type = 3;
      recordSummary("task_type", Integer.valueOf(task_type));
      return;
      if ((am.bb(paramh.getAbsolutePath())) && (am.a(((com.estrongs.fs.h)x.get(0)).getAbsolutePath()).equals(am.a(paramh.getAbsolutePath()))) && (!am.u(paramh.getAbsolutePath()))) {
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
      if (!bd.f()) {
        break label88;
      }
      paramList4.add(paramFile.getAbsolutePath());
    }
    label88:
    do
    {
      return;
      if (com.estrongs.fs.impl.media.a.a(paramFile.getAbsolutePath()))
      {
        paramList1.add(paramFile.getAbsolutePath());
        return;
      }
      if (com.estrongs.fs.impl.media.a.b(paramFile.getAbsolutePath()))
      {
        paramList2.add(paramFile.getAbsolutePath());
        return;
      }
    } while (!com.estrongs.fs.impl.media.a.c(paramFile.getAbsolutePath()));
    paramList3.add(paramFile.getAbsolutePath());
  }
  
  private void a(String paramString1, String paramString2)
  {
    if (am.bl(paramString1))
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
      if (am.bl(paramString2)) {
        a(new File(paramString2), F, G, H, I);
      }
      return;
      label99:
      K.add(paramString1);
    }
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
        com.estrongs.fs.impl.local.h.a(FexApplication.a(), localFile.getAbsolutePath(), null);
      } while (arrayOfFile[i].renameTo(localFile));
      return false;
    } while (arrayOfFile[i].renameTo(localFile));
    return false;
    com.estrongs.fs.impl.local.h.a(FexApplication.a(), paramFile.getAbsolutePath(), null);
    return true;
  }
  
  private boolean b(String paramString)
  {
    if (am.aw(paramString)) {}
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
        Log.w("Move", "exist failed - " + am.E(paramString));
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
        Log.w("Move", "exist failed - " + am.E(paramString));
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
      if (bd.a(D))
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
        if (bd.f())
        {
          com.estrongs.fs.impl.media.d.a(J);
          com.estrongs.fs.impl.media.d.b(K);
          com.estrongs.fs.impl.media.d.a(I, null);
          return;
        }
      }
      catch (MediaStoreInsertException localMediaStoreInsertException)
      {
        localMediaStoreInsertException.printStackTrace();
        cd.b();
        return;
      }
      if (F.size() > 0)
      {
        com.estrongs.fs.impl.k.b.c().b(J);
        com.estrongs.fs.impl.k.b.c().c(K);
      }
      if (G.size() > 0)
      {
        com.estrongs.fs.impl.i.b.c().b(J);
        com.estrongs.fs.impl.i.b.c().c(K);
      }
      if (H.size() > 0)
      {
        com.estrongs.fs.impl.q.b.c().b(J);
        com.estrongs.fs.impl.q.b.c().c(K);
      }
      if (F.size() > 0) {
        com.estrongs.fs.impl.k.b.c().a(F);
      }
      if (G.size() > 0) {
        com.estrongs.fs.impl.i.b.c().a(G);
      }
    } while (H.size() <= 0);
    com.estrongs.fs.impl.q.b.c().a(H);
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
    if (!P) {
      i();
    }
  }
  
  public void removeProgressListener(l paraml)
  {
    super.removeProgressListener(paraml);
    if (B != null) {
      B.removeProgressListener(paraml);
    }
  }
  
  public boolean task()
  {
    boolean bool1;
    if (o)
    {
      setTaskResult(14, new q("Error", null));
      bool1 = false;
      return bool1;
    }
    if (!l)
    {
      processData.l = false;
      processData.m = false;
      processData.o = false;
    }
    ArrayList localArrayList3;
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    int i;
    if (a)
    {
      localArrayList3 = new ArrayList();
      processData.c = f.size();
      processData.m = false;
      processData.l = false;
      onProgress(processData);
      P = am.aO(f.get(0)).a.getPath());
      localArrayList1 = new ArrayList();
      localArrayList2 = new ArrayList();
      i = 0;
    }
    for (;;)
    {
      String str1;
      String str2;
      Object localObject3;
      try
      {
        if (i >= f.size()) {
          break label1480;
        }
        bool1 = taskStopped();
        if (bool1) {
          return false;
        }
        str1 = f.get(i)).a.getAbsolutePath();
        str2 = f.get(i)).b;
        if (am.e(str1, str2))
        {
          sendMessage(1, new Object[] { Long.valueOf(1L), str1 });
          onProgress(processData);
          break label1874;
        }
        if (!bd.i()) {
          continue;
        }
        localObject3 = new File(am.bE(str1));
        localFile1 = new File(am.bE(str2));
      }
      catch (Exception localException1)
      {
        File localFile1;
        if (!P) {
          continue;
        }
        i();
        com.estrongs.fs.a.b.a().b(localArrayList2, L);
        com.estrongs.fs.a.b.a().c(localArrayList1, L);
        if (localArrayList3.size() != 0) {
          break label1518;
        }
        return true;
        localObject3 = new File(str1);
        File localFile2 = new File(str2);
        continue;
        localObject4 = N;
        continue;
        if (g != 1) {
          break label1356;
        }
        if (!(bool1 ^ bool2)) {
          continue;
        }
        setTaskResult(16, new q((String)FexApplication.a().getText(2131427817), null));
        return false;
        if (!localFile2.isDirectory()) {
          break label1095;
        }
        if (!a((File)localObject3, ((File)localObject3).getAbsolutePath(), localFile2.getAbsolutePath())) {
          break label820;
        }
        localArrayList1.add(f.get(i)).a);
        localArrayList2.add(new o(n, f.get(i)).a.getName()));
        sendMessage(1, new Object[] { Long.valueOf(1L), str1 });
        onProgress(processData);
        a(str1, str2);
        M = true;
      }
      finally
      {
        if (!P) {
          continue;
        }
        i();
        com.estrongs.fs.a.b.a().b(localArrayList2, L);
        com.estrongs.fs.a.b.a().c(localArrayList1, L);
      }
      Object localObject4 = localFile1;
      com.estrongs.a.a.h localh;
      if (com.estrongs.fs.impl.local.h.a(localFile1.getAbsolutePath()))
      {
        localObject4 = localFile1;
        if (com.estrongs.fs.impl.local.h.a(((File)localObject3).getAbsolutePath()))
        {
          bool1 = com.estrongs.fs.impl.local.h.h(((File)localObject3).getAbsolutePath());
          bool2 = com.estrongs.fs.impl.local.h.h(localFile1.getAbsolutePath());
          if (N == null)
          {
            localObject4 = this;
            localh = (com.estrongs.a.a.h)((com.estrongs.a.a)localObject4).getDecision(com.estrongs.a.a.h.class, new Object[] { str2, Boolean.valueOf(false), f.get(i)).a, c.j(str2) });
            if (g != 2) {
              continue;
            }
            sendMessage(1, new Object[] { Long.valueOf(1L), str1 });
            onProgress(processData);
            break label1874;
          }
          label820:
          if (taskStopped())
          {
            localObject3 = com.estrongs.fs.a.b.a();
            if (f.get(i)).a.getAbsolutePath().endsWith("/"))
            {
              localObject2 = f.get(i)).a.getAbsolutePath() + "*";
              ((com.estrongs.fs.a.b)localObject3).a((String)localObject2);
              localObject3 = com.estrongs.fs.a.b.a();
              if (!n.getAbsolutePath().endsWith("/")) {
                break label1045;
              }
            }
            label1045:
            for (localObject2 = n.getAbsolutePath() + "*";; localObject2 = n.getAbsolutePath() + "/*")
            {
              ((com.estrongs.fs.a.b)localObject3).a((String)localObject2);
              if (P) {
                i();
              }
              com.estrongs.fs.a.b.a().b(localArrayList2, L);
              com.estrongs.fs.a.b.a().c(localArrayList1, L);
              return false;
              localObject2 = f.get(i)).a.getAbsolutePath() + "/*";
              break;
            }
          }
          localArrayList3.add(f.get(i));
          break label1874;
          label1095:
          com.estrongs.fs.impl.local.h.a(FexApplication.a(), ((File)localObject2).getAbsolutePath(), null);
          localObject4 = localObject2;
        }
      }
      if (com.estrongs.fs.impl.local.h.a(((File)localObject3).getAbsolutePath()))
      {
        bool2 = com.estrongs.fs.impl.local.h.a(((File)localObject3).getAbsolutePath(), ((File)localObject4).getAbsolutePath());
        bool1 = bool2;
        if (!bool2)
        {
          localObject2 = am.bk(((File)localObject4).getAbsolutePath());
          bool1 = bool2;
          if (localObject2 != null)
          {
            bool1 = bool2;
            if (!com.estrongs.fs.impl.local.h.a((String)localObject2))
            {
              bool1 = bool2;
              if (com.estrongs.fs.impl.local.h.g((String)localObject2))
              {
                localObject2 = com.estrongs.fs.a.b.a().g((String)localObject2);
                if (localObject2 != null) {
                  com.estrongs.fs.a.b.a().a((String)localObject2);
                }
                bool1 = com.estrongs.fs.impl.local.h.a(((File)localObject3).getAbsolutePath(), ((File)localObject4).getAbsolutePath());
              }
            }
          }
        }
        if (!bool1) {
          break label1463;
        }
        A.add(f.get(i)).a);
        a(str1, str2);
        M = true;
        localArrayList1.add(f.get(i)).a);
        localArrayList2.add(new o(n, f.get(i)).a.getName()));
      }
      for (;;)
      {
        sendMessage(1, new Object[] { Long.valueOf(1L), str1 });
        onProgress(processData);
        break label1874;
        label1356:
        int j = g;
        if (j == 3)
        {
          if (P) {
            i();
          }
          com.estrongs.fs.a.b.a().b(localArrayList2, L);
          com.estrongs.fs.a.b.a().c(localArrayList1, L);
          return false;
        }
        localObject4 = localObject2;
        if (g != 5) {
          break;
        }
        localObject4 = new File(j.m(str2));
        sendMessage(1, new Object[] { Long.valueOf(1L), str1 });
        onProgress(processData);
        break;
        label1463:
        localArrayList3.add(f.get(i));
      }
      label1480:
      if (P) {
        i();
      }
      com.estrongs.fs.a.b.a().b(localArrayList2, L);
      com.estrongs.fs.a.b.a().c(localArrayList1, L);
      continue;
      label1518:
      f = localArrayList3;
      a();
      Object localObject2 = new ArrayList();
      i = 0;
      label1539:
      if (i < f.size())
      {
        if (am.e(f.get(i)).a.getAbsolutePath(), f.get(i)).b)) {}
        for (;;)
        {
          i += 1;
          break label1539;
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
        break;
      }
      bool1 = bool2;
      if (localException2.size() <= 0) {
        break;
      }
      if (((bd.b(D)) && (!b(D))) || ((bd.b(E)) && (!b(E))))
      {
        setTaskResult(10000, new q("", null));
        return false;
      }
      if ((C == null) || (C.size() == 0) || (d == 0))
      {
        B = new ab(c, localException2, false);
        B.j = C;
        B.processData.i = 3;
        B.processData.k = true;
        B.addProgressListeners(getProgressListeners());
        B.setTaskDecisionListener(getTaskDecisionListener());
        B.setParentTask(this);
        B.execute(false);
        A.addAll(B.c);
      }
      return true;
      label1874:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */