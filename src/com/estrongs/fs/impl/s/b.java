package com.estrongs.fs.impl.s;

import android.net.Uri;
import com.estrongs.a.b.o;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.b.j;
import com.estrongs.android.pop.app.f.q;
import com.estrongs.android.pop.app.f.r;
import com.estrongs.android.pop.app.f.v;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.bn;
import com.estrongs.fs.b.al;
import com.estrongs.fs.b.am;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.impl.media.e;
import com.estrongs.fs.w;
import com.estrongs.fs.x;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class b
  implements com.estrongs.fs.u
{
  public static Map<Long, List<h>> a = new HashMap();
  private static b b;
  
  public static b a()
  {
    if (b == null) {
      b = new b();
    }
    return b;
  }
  
  private List<h> a(String paramString1, String paramString2, String paramString3, o<String> paramo, am paramam, List<com.estrongs.android.pop.app.f.u> paramList, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    paramo = null;
    Map localMap = q.b(paramString3);
    if (localMap.size() <= 0)
    {
      paramString3 = paramo;
      if (ad.a(FexApplication.a()).q()) {}
    }
    else
    {
      paramString3 = new r(localMap, true);
    }
    try
    {
      bool = Boolean.valueOf((String)localMap.get("recursion")).booleanValue();
      if ((bool) && (!paramBoolean))
      {
        paramBoolean = true;
        if (ad.a(FexApplication.a()).q()) {
          break label136;
        }
        bool = true;
        a(paramString1, localArrayList, paramString2, paramString3, paramBoolean, bool, paramam, paramList);
        return localArrayList;
      }
    }
    catch (Exception paramo)
    {
      for (;;)
      {
        boolean bool = false;
        continue;
        paramBoolean = false;
        continue;
        label136:
        bool = false;
      }
    }
  }
  
  private void a(String paramString1, List<h> paramList, String paramString2, i parami, boolean paramBoolean1, boolean paramBoolean2, am paramam, List<com.estrongs.android.pop.app.f.u> paramList1)
  {
    Thread.currentThread().setPriority(4);
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.addAll(ap.a());
    v localv = ((r)parami).a();
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    ArrayList localArrayList2 = new ArrayList();
    label174:
    boolean bool;
    int i;
    if ("externalstorage://".equals(paramString2))
    {
      paramList = localArrayList1.iterator();
      while (paramList.hasNext())
      {
        paramString2 = new x((String)paramList.next());
        paramString2.putExtra("needCheckStorageLink", Boolean.valueOf(true));
        localArrayList2.add(paramString2);
      }
      paramString1 = paramString1.substring(0, paramString1.indexOf("externalstorage://".replace("/", "#"))) + "#";
      paramString2 = "/";
      com.estrongs.fs.a.b.a().a(paramString1, new ArrayList(), false);
      while (!localArrayList2.isEmpty())
      {
        paramList = (h)localArrayList2.remove(0);
        bool = ((Boolean)paramList.getExtra("needCheckStorageLink")).booleanValue();
        if (!bool) {
          break label782;
        }
        paramList1 = ap.ca(paramList.getAbsolutePath());
        if (paramList1 == null) {
          break label443;
        }
        i = 0;
        label236:
        if ((i < localArrayList1.size()) && (!paramList1.equals(localArrayList1.get(i)))) {
          break label434;
        }
        if (i < localArrayList1.size())
        {
          localArrayList1.remove(i);
          bool = false;
        }
      }
    }
    label290:
    label316:
    label364:
    label434:
    label443:
    label485:
    label777:
    label782:
    for (;;)
    {
      Object localObject;
      if ("log://".equals(paramString2))
      {
        paramList1 = new j().a(null, null, TypedMap.EMPTY);
        if (paramList1 == null) {
          break label485;
        }
        localObject = null;
        if ((paramList1 == null) || (paramList1.size() <= 0)) {
          break label777;
        }
      }
      for (paramList = new bn(paramList.getPath(), Integer.MAX_VALUE);; paramList = null)
      {
        Iterator localIterator = paramList1.iterator();
        h localh;
        if (localIterator.hasNext())
        {
          localh = (h)localIterator.next();
          if ((locala == null) || (!locala.taskStopped())) {}
        }
        do
        {
          return;
          paramList = new x(paramString2);
          paramList.putExtra("needCheckStorageLink", Boolean.valueOf(true));
          localArrayList2.add(paramList);
          break;
          i += 1;
          break label236;
          if (ap.bU(paramList.getAbsolutePath()) == null) {
            break label782;
          }
          bool = false;
          break label290;
          paramList1 = d.a().a(paramList, ap.bl(paramList.getAbsolutePath()), false, null, o.a);
          break label316;
          break label174;
          if (((ap.bl(localh.getAbsolutePath())) && (ap.a(new File(localh.getAbsolutePath())))) || (!ap.l().a(localh))) {
            break label364;
          }
          if (locala != null) {
            locala.sendMessage(1, new Object[] { Long.valueOf(1L), localh.getAbsolutePath() });
          }
          if ((!paramList.a(localh)) || ((paramBoolean2) && (localh.getName().startsWith(".")))) {
            break label364;
          }
          if ((localh.getFileType().a()) && (paramBoolean1))
          {
            localh.putExtra("needCheckStorageLink", Boolean.valueOf(bool));
            localArrayList2.add(localh);
          }
          if ((parami != null) && (!parami.a(localh))) {
            break label364;
          }
          paramList1 = (List<com.estrongs.android.pop.app.f.u>)localObject;
          if (localObject == null) {
            paramList1 = new ArrayList();
          }
          localObject = new a(paramString1, paramString2, localh);
          if (localv != null) {
            a = localv.a();
          }
          paramList1.add(localObject);
          localObject = paramList1;
          break label364;
          if (localObject == null) {
            break label174;
          }
          Collections.sort((List)localObject, new c(this));
        } while ((locala != null) && (locala.taskStopped()));
        paramam.a((al)com.estrongs.a.a.getCurrentTask(), (List)localObject);
        com.estrongs.fs.a.b.a().a(paramString1, (List)localObject, true);
        break label174;
      }
    }
  }
  
  private List<com.estrongs.android.pop.app.f.u> e(String paramString)
  {
    paramString = q.a(Uri.decode(q.a("keyword", paramString)));
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramString.size())
    {
      localArrayList.add(new com.estrongs.android.pop.app.f.u((String)paramString.get(i)));
      i += 1;
    }
    return localArrayList;
  }
  
  public h a(String paramString)
  {
    return null;
  }
  
  public OutputStream a(String paramString, TypedMap paramTypedMap)
  {
    return null;
  }
  
  public OutputStream a(String paramString, boolean paramBoolean)
  {
    return null;
  }
  
  public List<h> a(h paramh, i parami, TypedMap paramTypedMap)
  {
    Object localObject = paramh.getPath();
    String str2;
    am localam;
    if (com.estrongs.fs.a.a.c((String)localObject).size() == 3)
    {
      str2 = paramTypedMap.getString("pattern");
      localam = (am)paramTypedMap.get("partialListener");
      localObject = q.a("searchPath", str2);
    }
    label415:
    for (;;)
    {
      try
      {
        if (!ap.bl((String)localObject)) {
          break label415;
        }
        str1 = new File((String)localObject).getCanonicalPath();
        if ((str1 == null) || (str1.length() <= 0)) {
          break label415;
        }
        bool = ((String)localObject).equals(str1);
        if (bool) {
          break label415;
        }
        localObject = str1;
      }
      catch (Exception localException)
      {
        String str1;
        continue;
      }
      str1 = ap.bV((String)localObject);
      localObject = paramh.getPath();
      List localList = e(str2);
      if (ap.a((String)localObject, paramTypedMap))
      {
        paramh = str1;
        if (bk.i())
        {
          paramh = str1;
          if (str1.startsWith("/storage/emulated/legacy")) {
            paramh = str1.replaceFirst("/storage/emulated/legacy", com.estrongs.android.pop.b.b());
          }
        }
        a((String)localObject, paramh, str2, null, localam, localList, true);
        paramTypedMap = e.a((String)localObject, paramh, parami, str2);
        localam.a((al)com.estrongs.a.a.getCurrentTask(), paramTypedMap);
        parami = (i)localObject;
        if ("externalstorage://".equals(paramh)) {
          parami = ((String)localObject).substring(0, ((String)localObject).indexOf("externalstorage://".replace("/", "#"))) + "#";
        }
        com.estrongs.fs.a.b.a().a(parami, paramTypedMap, true);
        return new ArrayList();
      }
      if (ap.bw(localException)) {}
      for (boolean bool = true;; bool = false)
      {
        a((String)localObject, localException, str2, null, localam, localList, bool);
        return new ArrayList();
      }
      paramTypedMap = new ArrayList();
      paramh = d.a().a(d.a().j(paramh.getAbsolutePath()), false, true, parami, o.a);
      int i = 0;
      while (i < paramh.size())
      {
        paramTypedMap.add(new a((String)localObject, null, (h)paramh.get(i)));
        i += 1;
      }
      return paramTypedMap;
    }
  }
  
  public boolean b(String paramString)
  {
    return false;
  }
  
  public boolean c(String paramString)
  {
    return true;
  }
  
  public InputStream d(String paramString)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.s.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */