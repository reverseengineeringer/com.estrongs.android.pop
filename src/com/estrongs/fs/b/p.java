package com.estrongs.fs.b;

import android.app.Activity;
import com.estrongs.a.q;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.utils.cd;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import com.estrongs.fs.impl.media.d;
import com.estrongs.fs.m;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class p
  extends com.estrongs.a.a
{
  private List<h> a;
  private String b;
  private Activity c;
  private List<h> d;
  private List<String> e = null;
  private List<String> f = null;
  private List<String> g = null;
  private List<String> h = null;
  private List<String> i = null;
  private List<String> j = null;
  private int k = 1;
  
  public p(Activity paramActivity, List<h> paramList, String paramString)
  {
    c = paramActivity;
    a = paramList;
    b = paramString;
    int n = paramList.size();
    paramActivity = new StringBuilder();
    int m = 0;
    for (;;)
    {
      if (m < n)
      {
        paramActivity.append(((h)paramList.get(m)).getName());
        if (m + 1 != n)
        {
          paramActivity.append(" , ");
          if (m >= 4) {
            paramActivity.append("...");
          }
        }
      }
      else
      {
        processData.j = paramActivity.toString();
        processData.p = false;
        processData.l = false;
        processData.m = false;
        processData.n = false;
        return;
      }
      m += 1;
    }
  }
  
  private void a(File paramFile, List<String> paramList1, List<String> paramList2, List<String> paramList3, List<String> paramList4)
  {
    if (paramFile.isDirectory())
    {
      paramFile = paramFile.listFiles();
      if (paramFile != null)
      {
        int n = paramFile.length;
        int m = 0;
        while (m < n)
        {
          a(paramFile[m], paramList1, paramList2, paramList3, paramList4);
          m += 1;
        }
      }
    }
    else
    {
      k |= com.estrongs.fs.a.a.g(paramFile.getAbsolutePath());
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
  
  public List<h> a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  protected void postTask()
  {
    super.postTask();
    if ((d != null) && (d.size() >= 1) && (am.bl(((h)d.get(0)).getAbsolutePath()))) {
      try
      {
        if (bd.f())
        {
          if (i.size() > 0) {
            d.b(i);
          }
          if (j.size() > 0) {
            d.a(j);
          }
          d.a(h, null);
          return;
        }
        if (i.size() > 0) {
          com.estrongs.fs.impl.k.b.c().c(i);
        }
        if (j.size() > 0) {
          com.estrongs.fs.impl.k.b.c().b(j);
        }
        if (i.size() > 0) {
          com.estrongs.fs.impl.i.b.c().c(i);
        }
        if (j.size() > 0) {
          com.estrongs.fs.impl.i.b.c().b(j);
        }
        if (i.size() > 0) {
          com.estrongs.fs.impl.q.b.c().c(i);
        }
        if (j.size() > 0) {
          com.estrongs.fs.impl.q.b.c().b(j);
        }
        if (e.size() > 0) {
          com.estrongs.fs.impl.k.b.c().a(e);
        }
        if (f.size() > 0) {
          com.estrongs.fs.impl.i.b.c().a(f);
        }
        if (g.size() > 0)
        {
          com.estrongs.fs.impl.q.b.c().a(g);
          return;
        }
      }
      catch (MediaStoreInsertException localMediaStoreInsertException)
      {
        localMediaStoreInsertException.printStackTrace();
        cd.b();
      }
    }
  }
  
  public boolean task()
  {
    for (;;)
    {
      try
      {
        if (a != null)
        {
          m = a.size();
          if (m > 0) {}
        }
        else
        {
          if ((d != null) && (d.size() >= 1))
          {
            if (am.bl(((h)d.get(0)).getAbsolutePath()))
            {
              e = new ArrayList();
              f = new ArrayList();
              g = new ArrayList();
              h = new ArrayList();
              i = new ArrayList();
              j = new ArrayList();
              localIterator = d.iterator();
              if (localIterator.hasNext())
              {
                localObject3 = (h)localIterator.next();
                str2 = ((h)localObject3).getAbsolutePath();
                localObject4 = am.e(str2) + "/" + ((h)localObject3).getExtra("item_rename_new_name");
                localObject1 = str2;
                if (new File((String)localObject4).isDirectory())
                {
                  localObject1 = str2;
                  if (!str2.endsWith("/")) {
                    localObject1 = str2 + "/";
                  }
                }
                if (((h)localObject3).getFileType().b())
                {
                  i.add(localObject1);
                  a(new File((String)localObject4), e, f, g, h);
                  continue;
                }
                j.add(localObject1);
                continue;
              }
            }
            localObject1 = b;
            if (b.endsWith("/"))
            {
              localObject1 = b + "*";
              com.estrongs.fs.a.b.a().a((String)localObject1, k);
            }
          }
          else
          {
            return false;
          }
          localObject1 = b + "/*";
          continue;
        }
        d = new LinkedList();
        int n = a.size();
        processData.c = n;
        processData.e = n;
        onProgress(processData);
        int m = 0;
        if (m < n)
        {
          bool = taskStopped();
          if (bool)
          {
            if ((d == null) || (d.size() < 1)) {
              continue;
            }
            if (am.bl(((h)d.get(0)).getAbsolutePath()))
            {
              e = new ArrayList();
              f = new ArrayList();
              g = new ArrayList();
              h = new ArrayList();
              i = new ArrayList();
              j = new ArrayList();
              localIterator = d.iterator();
              if (localIterator.hasNext())
              {
                localObject3 = (h)localIterator.next();
                str2 = ((h)localObject3).getAbsolutePath();
                localObject4 = am.e(str2) + "/" + ((h)localObject3).getExtra("item_rename_new_name");
                localObject1 = str2;
                if (new File((String)localObject4).isDirectory())
                {
                  localObject1 = str2;
                  if (!str2.endsWith("/")) {
                    localObject1 = str2 + "/";
                  }
                }
                if (((h)localObject3).getFileType().b())
                {
                  i.add(localObject1);
                  a(new File((String)localObject4), e, f, g, h);
                  continue;
                }
                j.add(localObject1);
                continue;
              }
            }
            localObject1 = b;
            if (b.endsWith("/"))
            {
              localObject1 = b + "*";
              com.estrongs.fs.a.b.a().a((String)localObject1, k);
              return false;
            }
            localObject1 = b + "/*";
            continue;
          }
          localObject1 = (h)a.get(m);
          processData.a = ((h)localObject1).getName();
          onProgress(processData);
          bool = aj.a(c, (h)localObject1, (String)((h)localObject1).getExtra("item_rename_new_name"), b, false, false);
          if (!bool)
          {
            if ((d == null) || (d.size() < 1)) {
              continue;
            }
            if (am.bl(((h)d.get(0)).getAbsolutePath()))
            {
              e = new ArrayList();
              f = new ArrayList();
              g = new ArrayList();
              h = new ArrayList();
              i = new ArrayList();
              j = new ArrayList();
              localIterator = d.iterator();
              if (localIterator.hasNext())
              {
                localObject3 = (h)localIterator.next();
                str2 = ((h)localObject3).getAbsolutePath();
                localObject4 = am.e(str2) + "/" + ((h)localObject3).getExtra("item_rename_new_name");
                localObject1 = str2;
                if (new File((String)localObject4).isDirectory())
                {
                  localObject1 = str2;
                  if (!str2.endsWith("/")) {
                    localObject1 = str2 + "/";
                  }
                }
                if (((h)localObject3).getFileType().b())
                {
                  i.add(localObject1);
                  a(new File((String)localObject4), e, f, g, h);
                  continue;
                }
                j.add(localObject1);
                continue;
              }
            }
            localObject1 = b;
            if (b.endsWith("/"))
            {
              localObject1 = b + "*";
              com.estrongs.fs.a.b.a().a((String)localObject1, k);
              return false;
            }
            localObject1 = b + "/*";
            continue;
          }
          d.add(localObject1);
          processData.d = (m + 1);
          processData.f = (m + 1);
          onProgress(processData);
          m += 1;
          continue;
        }
        setTaskResult(0, null);
        if ((d == null) || (d.size() < 1)) {
          break label2649;
        }
        if (am.bl(((h)d.get(0)).getAbsolutePath()))
        {
          e = new ArrayList();
          f = new ArrayList();
          g = new ArrayList();
          h = new ArrayList();
          i = new ArrayList();
          j = new ArrayList();
          localIterator = d.iterator();
          if (localIterator.hasNext())
          {
            localObject3 = (h)localIterator.next();
            str2 = ((h)localObject3).getAbsolutePath();
            localObject4 = am.e(str2) + "/" + ((h)localObject3).getExtra("item_rename_new_name");
            localObject1 = str2;
            if (new File((String)localObject4).isDirectory())
            {
              localObject1 = str2;
              if (!str2.endsWith("/")) {
                localObject1 = str2 + "/";
              }
            }
            if (((h)localObject3).getFileType().b())
            {
              i.add(localObject1);
              a(new File((String)localObject4), e, f, g, h);
              continue;
            }
            j.add(localObject1);
            continue;
          }
        }
        localObject1 = b;
        if (!b.endsWith("/")) {
          continue;
        }
        localObject1 = b + "*";
        com.estrongs.fs.a.b.a().a((String)localObject1, k);
        bool = true;
      }
      catch (Exception localException)
      {
        Object localObject1;
        localException.printStackTrace();
        setTaskResult(10000, new q(localException.toString(), localException));
        if ((d == null) || (d.size() < 1)) {
          break label2644;
        }
        if (!am.bl(((h)d.get(0)).getAbsolutePath())) {
          continue;
        }
        e = new ArrayList();
        f = new ArrayList();
        g = new ArrayList();
        h = new ArrayList();
        i = new ArrayList();
        j = new ArrayList();
        Iterator localIterator = d.iterator();
        if (!localIterator.hasNext()) {
          continue;
        }
        localObject3 = (h)localIterator.next();
        str2 = ((h)localObject3).getAbsolutePath();
        localObject4 = am.e(str2) + "/" + ((h)localObject3).getExtra("item_rename_new_name");
        str1 = str2;
        if (!new File((String)localObject4).isDirectory()) {
          continue;
        }
        str1 = str2;
        if (str2.endsWith("/")) {
          continue;
        }
        str1 = str2 + "/";
        if (!((h)localObject3).getFileType().b()) {
          continue;
        }
        i.add(str1);
        a(new File((String)localObject4), e, f, g, h);
        continue;
        j.add(str1);
        continue;
        str1 = b;
        if (!b.endsWith("/")) {
          continue;
        }
        str1 = b + "*";
        com.estrongs.fs.a.b.a().a(str1, k);
        bool = false;
        continue;
        str1 = b + "/*";
        continue;
      }
      finally
      {
        if ((d == null) || (d.size() < 1)) {
          continue;
        }
        if (!am.bl(((h)d.get(0)).getAbsolutePath())) {
          continue;
        }
        e = new ArrayList();
        f = new ArrayList();
        g = new ArrayList();
        h = new ArrayList();
        i = new ArrayList();
        j = new ArrayList();
        Object localObject3 = d.iterator();
        if (!((Iterator)localObject3).hasNext()) {
          continue;
        }
        Object localObject4 = (h)((Iterator)localObject3).next();
        String str2 = ((h)localObject4).getAbsolutePath();
        String str3 = am.e(str2) + "/" + ((h)localObject4).getExtra("item_rename_new_name");
        str1 = str2;
        if (!new File(str3).isDirectory()) {
          continue;
        }
        str1 = str2;
        if (str2.endsWith("/")) {
          continue;
        }
        str1 = str2 + "/";
        if (!((h)localObject4).getFileType().b()) {
          continue;
        }
        i.add(str1);
        a(new File(str3), e, f, g, h);
        continue;
        j.add(str1);
        continue;
        str1 = b;
        if (!b.endsWith("/")) {
          break label2616;
        }
        str1 = b + "*";
        com.estrongs.fs.a.b.a().a(str1, k);
      }
      return bool;
      localObject1 = b + "/*";
      continue;
      label2616:
      String str1 = b + "/*";
      continue;
      label2644:
      boolean bool = false;
      continue;
      label2649:
      bool = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */