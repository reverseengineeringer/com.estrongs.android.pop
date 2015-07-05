package com.estrongs.fs.impl.l;

import android.view.View;
import android.view.Window;
import com.estrongs.a.a.p;
import com.estrongs.a.b.o;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ix;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import com.estrongs.fs.b.as;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.impl.local.f;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class a
{
  private static Set<Long> a = new HashSet();
  
  public static List<h> a(String paramString, i parami, o<String> paramo)
  {
    paramString = new ArrayList();
    if (b()) {}
    for (;;)
    {
      return paramString;
      Object localObject2 = new HashSet();
      ((Set)localObject2).add(am.g());
      Object localObject1 = am.a();
      if (localObject1 != null) {
        ((Set)localObject2).addAll((Collection)localObject1);
      }
      localObject1 = com.estrongs.a.a.getCurrentTask();
      localObject2 = ((Set)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Object localObject3 = (String)((Iterator)localObject2).next();
        if ((localObject1 != null) && (((com.estrongs.a.a)localObject1).taskStopped())) {
          return null;
        }
        localObject3 = new File((String)localObject3 + "/.estrongs/recycle/");
        if ((((File)localObject3).exists()) && (((File)localObject3).isDirectory())) {
          a((File)localObject3, parami, (com.estrongs.a.a)localObject1, paramo, paramString, true);
        }
      }
    }
  }
  
  public static void a()
  {
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.J();
    if (localFileExplorerActivity != null) {
      localFileExplorerActivity.V();
    }
  }
  
  public static void a(long paramLong)
  {
    synchronized (a)
    {
      if (a.size() == 0)
      {
        i = 1;
        a.add(Long.valueOf(paramLong));
        if (i != 0)
        {
          ??? = FileExplorerActivity.J();
          if (??? != null) {
            ((FileExplorerActivity)???).V();
          }
        }
        return;
      }
      int i = 0;
    }
  }
  
  public static void a(ESActivity paramESActivity, aw paramaw)
  {
    if ((paramaw == null) || (paramaw.d() == 0)) {
      ag.a(FileExplorerActivity.J(), 2131428407, 0);
    }
    LinkedList localLinkedList;
    Object localObject2;
    do
    {
      return;
      localLinkedList = new LinkedList();
      Object localObject1 = new HashSet();
      ((Set)localObject1).add(am.g());
      localObject2 = am.a();
      if (localObject2 != null) {
        ((Set)localObject1).addAll((Collection)localObject2);
      }
      localObject1 = ((Set)localObject1).iterator();
      do
      {
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        localObject2 = (String)((Iterator)localObject1).next();
        localObject2 = new File((String)localObject2 + "/.estrongs/recycle/");
      } while ((!((File)localObject2).exists()) || (!((File)localObject2).isDirectory()));
      localObject2 = ((File)localObject2).listFiles();
    } while (localObject2 == null);
    int j = 0;
    label160:
    File localFile;
    if (j < localObject2.length)
    {
      localFile = localObject2[j];
      if ((localFile != null) && (localFile.isDirectory())) {
        break label193;
      }
    }
    for (;;)
    {
      j += 1;
      break label160;
      break;
      for (;;)
      {
        try
        {
          label193:
          l = Long.valueOf(localFile.getName()).longValue();
        }
        catch (Exception localException)
        {
          long l;
          int i = 0;
          continue;
        }
        synchronized (a)
        {
          if (!a.contains(Long.valueOf(l)))
          {
            i = 1;
            if (i == 0) {
              break;
            }
            localLinkedList.add(new f(localFile));
            break;
          }
          i = 0;
        }
      }
    }
    aj.a(paramESActivity, localLinkedList, paramaw, new b(), 2131427377, paramESActivity.getString(2131428406), true);
  }
  
  public static void a(FileExplorerActivity paramFileExplorerActivity, List<h> paramList, p paramp)
  {
    paramList = new as(paramFileExplorerActivity, d.a(), paramList);
    paramList.addTaskStatusChangeListener(paramp);
    paramList.setDescription(paramFileExplorerActivity.getString(2131428405));
    paramList.setCanHide(false);
    paramp = new ix(paramFileExplorerActivity, paramFileExplorerActivity.getString(2131428404), paramList);
    paramp.a(false);
    paramp.e();
    paramFileExplorerActivity.getWindow().getDecorView().post(new c(paramList));
  }
  
  private static void a(File paramFile, i parami, com.estrongs.a.a parama, o<String> paramo, List<h> paramList, boolean paramBoolean)
  {
    paramFile = paramFile.listFiles();
    if (paramFile == null) {
      return;
    }
    int j;
    if (paramBoolean)
    {
      j = 0;
      if (j < paramFile.length)
      {
        ??? = paramFile[j];
        if ((??? == null) || (!???.isDirectory())) {}
        for (;;)
        {
          j += 1;
          break;
          for (;;)
          {
            try
            {
              l = Long.valueOf(???.getName()).longValue();
            }
            catch (Exception localException)
            {
              long l;
              i = 0;
              continue;
            }
            synchronized (a)
            {
              if (!a.contains(Long.valueOf(l)))
              {
                i = 1;
                if (i != 0) {
                  break;
                }
                paramFile[j] = null;
                break;
              }
              i = 0;
            }
          }
        }
      }
    }
    int k = paramFile.length;
    int i = 0;
    label138:
    File[] arrayOfFile;
    if (i < k)
    {
      arrayOfFile = paramFile[i];
      if (arrayOfFile != null) {
        break label165;
      }
    }
    for (;;)
    {
      label156:
      i += 1;
      break label138;
      break;
      label165:
      if ((parama != null) && (parama.taskStopped())) {
        break;
      }
      if (arrayOfFile.isDirectory()) {
        if (arrayOfFile.getName().equals("es_recycle_content"))
        {
          arrayOfFile = arrayOfFile.listFiles();
          if (arrayOfFile != null)
          {
            int m = arrayOfFile.length;
            j = 0;
            label217:
            File localFile;
            if (j < m)
            {
              localFile = arrayOfFile[j];
              if (localFile != null) {
                break label245;
              }
            }
            label245:
            do
            {
              f localf;
              do
              {
                j += 1;
                break label217;
                break label156;
                if ((parama != null) && (parama.taskStopped())) {
                  break;
                }
                localf = new f(localFile);
                if ((parami.a(localf)) && (!"PCS_DRIVE_Js1a7M5e_9yAcTvFX".equals(localFile.getName())))
                {
                  paramList.add(localf);
                  if (parama != null) {
                    parama.sendMessage(11, new Object[] { localf });
                  }
                }
              } while (paramo == null);
              paramo.a(localf.getAbsolutePath(), new long[0]);
            } while (!paramo.a());
          }
        }
        else
        {
          a(arrayOfFile, parami, parama, paramo, paramList, false);
        }
      }
    }
  }
  
  public static void b(long paramLong)
  {
    int j = 0;
    Object localObject1 = a;
    int i = j;
    try
    {
      if (a.contains(Long.valueOf(paramLong)))
      {
        a.remove(Long.valueOf(paramLong));
        i = j;
        if (a.size() == 0) {
          i = 1;
        }
      }
      if (i != 0)
      {
        localObject1 = FileExplorerActivity.J();
        if (localObject1 != null) {
          ((FileExplorerActivity)localObject1).V();
        }
      }
      return;
    }
    finally {}
  }
  
  public static boolean b()
  {
    for (;;)
    {
      synchronized (a)
      {
        if (!a.isEmpty())
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.l.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */