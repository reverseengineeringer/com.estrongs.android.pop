package com.estrongs.fs.a;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bd;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.pcs.PcsFileSystem;
import com.estrongs.fs.m;
import com.estrongs.fs.n;
import com.estrongs.fs.o;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class b
{
  private static b c;
  private d a = new d();
  private List<e> b = new ArrayList();
  private Set<String> d = new HashSet();
  private List<String> e = new ArrayList();
  private int f = 0;
  private Map<String, List<WeakReference<h>>> g = new HashMap();
  private Map<String, List<WeakReference<h>>> h = new HashMap();
  private boolean i = false;
  
  private b()
  {
    new Thread(new c(this), "CacheMonitor").start();
  }
  
  private int a(d paramd)
  {
    int j = 0;
    if (paramd == null) {
      return 0;
    }
    if (paramd.a() != null) {
      j = paramd.a().size();
    }
    paramd = paramd.c().iterator();
    while (paramd.hasNext()) {
      j = a((d)paramd.next()) + j;
    }
    return j;
  }
  
  private int a(List<h> paramList, String paramString)
  {
    paramList = paramList.iterator();
    int j = 0;
    while (paramList.hasNext())
    {
      if (am.e(paramString, ((h)paramList.next()).getPath())) {
        return j;
      }
      j += 1;
    }
    return -1;
  }
  
  public static b a()
  {
    if (c == null) {
      c = new b();
    }
    return c;
  }
  
  private d a(String paramString, boolean paramBoolean)
  {
    List localList = a.c(paramString);
    if (localList.size() == 0) {
      localObject2 = null;
    }
    int j;
    label46:
    do
    {
      return (d)localObject2;
      if (localList.size() == 1) {
        return a;
      }
      localObject1 = a;
      j = 0;
      localObject2 = localObject1;
    } while (j >= localList.size() - 1);
    Object localObject2 = ((d)localObject1).a((String)localList.get(j));
    if (localObject2 == null) {
      if (paramBoolean)
      {
        localObject2 = new d();
        ((d)localObject1).a((String)localList.get(j), (d)localObject2);
        i(a.a(localList, j));
      }
    }
    for (Object localObject1 = localObject2;; localObject1 = localObject2)
    {
      if (j == 0)
      {
        localObject2 = localObject1;
        if (k(paramString)) {
          break;
        }
      }
      j += 1;
      break label46;
      return null;
    }
  }
  
  private void a(String paramString, int paramInt, List<String> paramList1, List<String> paramList2)
  {
    int j = 0;
    while (j < b.size())
    {
      ((e)b.get(j)).a(paramString, paramInt, paramList1, paramList2);
      j += 1;
    }
  }
  
  private void a(String paramString1, String paramString2, int paramInt)
  {
    a(paramString1, paramString2, null, paramInt);
  }
  
  private void a(List<String> paramList, int paramInt, String paramString)
  {
    String str;
    if ((!"sftp://".equals(paramString)) && (!"ftps://".equals(paramString)) && (!"ftpes://".equals(paramString)) && (!"webdav://".equals(paramString)))
    {
      str = paramString;
      if (!"webdavs://".equals(paramString)) {}
    }
    else
    {
      str = "ftp://";
    }
    int j = 0;
    while (j < b.size())
    {
      ((e)b.get(j)).a(paramList, paramInt, str);
      j += 1;
    }
  }
  
  private void a(List<String> paramList, String paramString, int paramInt)
  {
    a(paramList, true, paramString, paramInt);
  }
  
  private void a(List<String> paramList, boolean paramBoolean, String paramString, int paramInt)
  {
    Object localObject = paramList;
    if (paramBoolean) {
      localObject = a.a(paramList);
    }
    paramList = ((List)localObject).iterator();
    while (paramList.hasNext()) {
      a((String)paramList.next(), true, paramString);
    }
    int j = paramInt;
    if (paramInt == -1) {
      j = a.b((List)localObject);
    }
    if ((j & 0x4) == 4) {
      d();
    }
    a((List)localObject, j, paramString);
  }
  
  private void a(Set<String> paramSet)
  {
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      i((String)paramSet.next());
    }
  }
  
  private void b(h paramh, String paramString, int paramInt)
  {
    if (((am.aB(paramh.getPath())) || (am.az(paramh.getPath()))) && (paramh.getFileType().b()))
    {
      ArrayList localArrayList = new ArrayList();
      String str;
      synchronized (h)
      {
        str = PcsFileSystem.a(am.ag(am.bM(paramh.getAbsolutePath())));
        localObject1 = (List)h.get(str);
        if (localObject1 == null) {
          break label240;
        }
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (h)((WeakReference)((Iterator)localObject1).next()).get();
          if ((localObject2 != null) && (!paramh.getPath().equals(((h)localObject2).getPath()))) {
            localArrayList.add(localObject2);
          }
        }
      }
      Object localObject1 = a.a(str);
      Object localObject2 = new StringBuilder();
      if (((String)localObject1).equals("/")) {}
      for (;;)
      {
        localObject1 = (String)localObject1 + a.b(paramString);
        h.put(localObject1, h.remove(str));
        label240:
        localObject1 = localArrayList.iterator();
        while (((Iterator)localObject1).hasNext()) {
          c((h)((Iterator)localObject1).next(), paramString, paramInt);
        }
        localObject1 = (String)localObject1 + "/";
      }
    }
    c(paramh, paramString, paramInt);
  }
  
  private void b(String paramString1, String paramString2, int paramInt)
  {
    int j = 0;
    while (j < b.size())
    {
      ((e)b.get(j)).a(paramString1, paramString2, paramInt);
      j += 1;
    }
  }
  
  private void b(List<String> paramList1, List<String> paramList2, int paramInt)
  {
    try
    {
      a(c(paramList1));
      int j = paramInt;
      if (paramInt == -1) {
        j = a.b(paramList1);
      }
      if ((j & 0x4) == 4) {
        d();
      }
      a(a.a((String)paramList1.get(0)), j, paramList1, paramList2);
      String str1;
      String str2;
      if ((am.aB((String)paramList1.get(0))) || (am.az((String)paramList1.get(0))))
      {
        if (!am.aB((String)paramList1.get(0))) {
          break label368;
        }
        str1 = am.ag((String)paramList1.get(0));
        str2 = ((String)paramList1.get(0)).substring(0, ((String)paramList1.get(0)).indexOf(str1));
        if (str1.indexOf("/files") != 0) {
          break label650;
        }
        if ((j & 0x4) != 4) {
          break label392;
        }
        str1 = str2 + "/pictures";
        i(str1);
        a(str1, j, paramList1, paramList2);
      }
      for (;;)
      {
        if ((!am.as((String)paramList1.get(0))) || (!am.aM((String)paramList1.get(0)))) {
          break label758;
        }
        str1 = am.ah((String)paramList1.get(0));
        paramList1 = ((String)paramList1.get(0)).substring(0, ((String)paramList1.get(0)).indexOf(str1)).replaceFirst("SP://", "pcs://");
        str1 = paramList1 + "/pictures";
        i(str1);
        a(str1, j, null, paramList2);
        paramList1 = paramList1 + "/files";
        i(paramList1);
        a(paramList1, j, null, paramList2);
        return;
        label368:
        str1 = ((String)paramList1.get(0)).substring(am.k().length());
        break;
        label392:
        if ((j & 0x2) == 2)
        {
          str1 = str2 + "/music";
          i(str1);
          a(str1, j, paramList1, paramList2);
        }
        else if ((j & 0x8) == 8)
        {
          str1 = str2 + "/videos";
          i(str1);
          a(str1, j, paramList1, paramList2);
        }
        else if ((j & 0x10) == 16)
        {
          str1 = str2 + "/documents";
          i(str1);
          a(str1, j, paramList1, paramList2);
        }
        else if ((j & 0x20) == 32)
        {
          str1 = str2 + "/apps";
          i(str1);
          a(str1, j, paramList1, paramList2);
        }
        else if ((j & 0x40) == 64)
        {
          str1 = str2 + "/others";
          i(str1);
          a(str1, j, paramList1, paramList2);
          continue;
          label650:
          if ((str1.indexOf("/pictures") == 0) || (str1.indexOf("/music") == 0) || (str1.indexOf("/videos") == 0) || (str1.indexOf("/documents") == 0) || (str1.indexOf("/apps") == 0) || (str1.indexOf("/others") == 0))
          {
            str1 = str2 + "/files";
            i(str1);
            a(str1, j, paramList1, paramList2);
          }
        }
      }
      label758:
      return;
    }
    catch (Exception paramList1) {}
  }
  
  private void c(h paramh, String paramString, int paramInt)
  {
    Object localObject = paramh.getPath();
    paramh = paramh.getAbsolutePath();
    String str2 = am.bE((String)localObject);
    String str3 = am.bE(paramh);
    localObject = a.b(paramString);
    String str1 = a.a(str3) + "/" + (String)localObject;
    if (am.aX(a.a(str2)))
    {
      paramh = a.b(str2);
      paramh = paramh.substring(0, paramh.lastIndexOf("#") + 1) + (String)localObject;
      paramString = str1;
    }
    for (;;)
    {
      paramh = a.a(str2) + "/" + paramh;
      if (am.ba(paramString))
      {
        localObject = new File(paramString);
        if ((!((File)localObject).isDirectory()) && (bc.P(paramString)))
        {
          a("book://" + str3.substring(1, str3.length()), "book://" + paramString.substring(1, paramString.length()), paramInt);
          if (!bd.f()) {
            com.estrongs.fs.impl.d.b.a().a(str3, paramString);
          }
        }
        if ((!((File)localObject).isDirectory()) && (bc.K(paramString)))
        {
          a("apk://" + str3.substring(1, str3.length()), "apk://" + paramString.substring(1, paramString.length()), paramInt);
          if (!bd.f()) {
            com.estrongs.fs.impl.a.b.a().a(str3, paramString);
          }
        }
      }
      if (!str2.equals(str3)) {
        a(str3, paramString, paramInt);
      }
      a(str2, paramh, paramInt);
      return;
      paramString = str1;
      paramh = (h)localObject;
      if (am.as(str2))
      {
        paramString = str1;
        paramh = (h)localObject;
        if (!am.ah(str2).startsWith("/files"))
        {
          paramh = a.b(str2);
          paramh = paramh.substring(0, paramh.lastIndexOf(">") + 1) + (String)localObject;
          paramString = a.a(str3) + "/" + paramh;
        }
      }
    }
  }
  
  private void d(List<h> paramList, int paramInt)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      h localh = (h)paramList.next();
      localArrayList1.add(localh.getPath());
      localArrayList2.add(localh.getAbsolutePath());
    }
    if (localArrayList1.size() > 0)
    {
      if (!((String)localArrayList1.get(0)).equals(localArrayList2.get(0)))
      {
        b(localArrayList1, null, paramInt);
        a(localArrayList2, paramInt);
      }
    }
    else {
      return;
    }
    a(localArrayList1, paramInt);
  }
  
  private void e(List<h> paramList)
  {
    h localh;
    synchronized (g)
    {
      Iterator localIterator1 = paramList.iterator();
      if (!localIterator1.hasNext()) {
        break label189;
      }
      localh = (h)localIterator1.next();
      localObject = a.b(localh.getPath());
      if (g.get(localObject) == null)
      {
        paramList = new ArrayList();
        g.put(localObject, paramList);
        paramList.add(new WeakReference(localh));
      }
    }
    Object localObject = (List)g.get(localObject);
    Iterator localIterator2 = ((List)localObject).iterator();
    for (;;)
    {
      paramList = (List<h>)localObject;
      if (!localIterator2.hasNext()) {
        break;
      }
      paramList = (h)((WeakReference)localIterator2.next()).get();
      if ((paramList == null) || (localh.getPath().equals(paramList.getPath()))) {
        localIterator2.remove();
      }
    }
    label189:
  }
  
  private void e(List<h> paramList, int paramInt)
  {
    boolean bool = true;
    if ((paramList == null) || (paramList.size() < 1)) {
      return;
    }
    Object localObject5;
    Object localObject6;
    Object localObject1;
    Object localObject7;
    Object localObject8;
    Object localObject2;
    if ((am.aG(((h)paramList.get(0)).getPath())) && (((h)paramList.get(0)).getFileType().b()))
    {
      ??? = new HashMap();
      synchronized (g)
      {
        localObject5 = paramList.iterator();
        do
        {
          while (!((Iterator)localObject7).hasNext())
          {
            do
            {
              if (!((Iterator)localObject5).hasNext()) {
                break;
              }
              localObject6 = (h)((Iterator)localObject5).next();
              localObject1 = a.b(((h)localObject6).getPath());
              localObject1 = (List)g.remove(localObject1);
            } while (localObject1 == null);
            localObject7 = ((List)localObject1).iterator();
          }
          localObject8 = (h)((WeakReference)((Iterator)localObject7).next()).get();
        } while ((localObject8 == null) || (((h)localObject6).getPath().equals(((h)localObject8).getPath())));
        localObject2 = (List)((HashMap)???).get(a.a(((h)localObject8).getPath()));
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject1 = new ArrayList();
          ((HashMap)???).put(a.a(((h)localObject8).getPath()), localObject1);
        }
        ((List)localObject1).add(((h)localObject8).getPath());
      }
      localObject1 = ((HashMap)???).values().iterator();
      while (((Iterator)localObject1).hasNext()) {
        a((List)((Iterator)localObject1).next(), null, paramInt);
      }
    }
    label398:
    Object localObject9;
    if ((am.aB(((h)paramList.get(0)).getPath())) || (am.az(((h)paramList.get(0)).getPath())))
    {
      localObject5 = new HashMap();
      synchronized (h)
      {
        localObject6 = paramList.iterator();
        localObject1 = null;
        if (((Iterator)localObject6).hasNext())
        {
          localObject7 = (h)((Iterator)localObject6).next();
          if (((h)localObject7).getFileType().b())
          {
            localObject2 = PcsFileSystem.a(am.ag(am.bM(((h)localObject7).getAbsolutePath())));
            localObject2 = (List)h.remove(localObject2);
            if (localObject2 != null)
            {
              localObject8 = ((List)localObject2).iterator();
              while (((Iterator)localObject8).hasNext())
              {
                localObject9 = (h)((WeakReference)((Iterator)localObject8).next()).get();
                if ((localObject9 != null) && (!((h)localObject7).getPath().equals(((h)localObject9).getPath())))
                {
                  ??? = (List)((HashMap)localObject5).get(a.a(((h)localObject9).getPath()));
                  localObject2 = ???;
                  if (??? == null)
                  {
                    localObject2 = new ArrayList();
                    ((HashMap)localObject5).put(a.a(((h)localObject9).getPath()), localObject2);
                  }
                  ((List)localObject2).add(((h)localObject9).getPath());
                }
              }
            }
          }
        }
      }
    }
    label614:
    label1657:
    for (;;)
    {
      break label398;
      localObject8 = h.entrySet().iterator();
      while (((Iterator)localObject8).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject8).next();
        if (((String)((Map.Entry)localObject2).getKey()).indexOf(PcsFileSystem.a(am.ag(am.bM(((h)localObject7).getAbsolutePath())))) == 0)
        {
          localObject2 = (List)((Map.Entry)localObject2).getValue();
          if (localObject2 != null)
          {
            localObject9 = ((List)localObject2).iterator();
            while (((Iterator)localObject9).hasNext())
            {
              h localh = (h)((WeakReference)((Iterator)localObject9).next()).get();
              if ((localh != null) && (localh.getPath().indexOf(((h)localObject7).getPath()) != 0))
              {
                ??? = (List)((HashMap)localObject5).get(a.a(localh.getPath()));
                localObject2 = ???;
                if (??? == null)
                {
                  localObject2 = new ArrayList();
                  ((HashMap)localObject5).put(a.a(localh.getPath()), localObject2);
                }
                ((List)localObject2).add(localh.getPath());
              }
            }
          }
          ((Iterator)localObject8).remove();
        }
      }
      if (localObject1 == null) {
        localObject1 = new ArrayList();
      }
      for (;;)
      {
        if (am.aB(((h)localObject7).getPath()))
        {
          localObject2 = a.d(am.k());
          ??? = a.d(r.a().g());
          if (??? == null) {
            return;
          }
          ((List)localObject1).add(((h)localObject7).getAbsolutePath().replaceFirst((String)???, (String)localObject2));
          break label614;
        }
        if (!am.az(((h)localObject7).getPath())) {
          break label1657;
        }
        new ArrayList(paramList.size());
        localObject2 = a.d(am.k());
        ??? = a.d(r.a().g());
        if (??? == null) {
          return;
        }
        ((List)localObject1).add(((h)localObject7).getAbsolutePath().replaceFirst((String)localObject2, (String)???));
        break label1657;
        localObject2 = ((HashMap)localObject5).values().iterator();
        while (((Iterator)localObject2).hasNext()) {
          a((List)((Iterator)localObject2).next(), null, paramInt);
        }
        if (localObject1 != null) {
          a((List)localObject1, null, paramInt);
        }
        localObject1 = new ArrayList();
        localObject2 = new ArrayList();
        ??? = paramList.iterator();
        int j = 0;
        if (((Iterator)???).hasNext())
        {
          ??? = (h)((Iterator)???).next();
          if (((h)???).isLink())
          {
            ((List)localObject1).add(((h)???).getPath());
            ((List)localObject2).add(((h)???).getAbsolutePath());
            j = 1;
          }
          for (;;)
          {
            break;
            ((List)localObject1).add(am.bE(((h)???).getPath()));
            ((List)localObject2).add(am.bE(((h)???).getAbsolutePath()));
          }
        }
        if ((((List)localObject2).size() > 0) && (am.ba((String)((List)localObject2).get(0))))
        {
          ??? = new ArrayList();
          ??? = new ArrayList();
          localObject5 = new ArrayList();
          localObject6 = new ArrayList();
          int k = 0;
          while (k < ((List)localObject2).size())
          {
            if ((!((h)paramList.get(k)).getFileType().a()) && (am.ba((String)((List)localObject2).get(k))) && (bc.P((String)((List)localObject2).get(k))))
            {
              ((List)???).add("book://" + ((String)((List)localObject2).get(k)).substring(1));
              ((List)???).add(((List)localObject2).get(k));
            }
            if ((!((h)paramList.get(k)).getFileType().a()) && (am.ba((String)((List)localObject2).get(k))) && (bc.K((String)((List)localObject2).get(k))))
            {
              ((List)localObject5).add("apk://" + ((String)((List)localObject2).get(k)).substring(1));
              ((List)localObject6).add(((List)localObject2).get(k));
            }
            k += 1;
          }
          if (((List)???).size() > 0)
          {
            a((List)???, null, paramInt);
            if (!bd.f()) {
              com.estrongs.fs.impl.d.b.a().d((List)???);
            }
          }
          if (((List)localObject5).size() > 0)
          {
            a((List)localObject5, null, paramInt);
            if (!bd.f()) {
              com.estrongs.fs.impl.a.b.a().d((List)localObject6);
            }
          }
        }
        if (j == 0) {}
        for (;;)
        {
          a((List)localObject1, bool, null, paramInt);
          if ((((List)localObject1).size() <= 0) || (((String)((List)localObject1).get(0)).equals(((List)localObject2).get(0)))) {
            break;
          }
          a((List)localObject2, bool, null, paramInt);
          return;
          bool = false;
        }
      }
    }
  }
  
  private void f(List<h> paramList)
  {
    Map localMap = h;
    int j = 0;
    for (;;)
    {
      h localh;
      Object localObject1;
      try
      {
        if (j >= paramList.size()) {
          break label215;
        }
        localh = (h)paramList.get(j);
        if (localh.getFileType().a()) {
          break label219;
        }
        localObject2 = PcsFileSystem.a(am.ag(am.bM(localh.getAbsolutePath())));
        if (h.get(localObject2) == null)
        {
          localObject1 = new ArrayList();
          h.put(localObject2, localObject1);
          ((List)localObject1).add(new WeakReference(localh));
        }
      }
      finally {}
      Object localObject2 = (List)h.get(localObject2);
      Iterator localIterator = ((List)localObject2).iterator();
      for (;;)
      {
        localObject1 = localObject2;
        if (!localIterator.hasNext()) {
          break;
        }
        localObject1 = (h)((WeakReference)localIterator.next()).get();
        if ((localObject1 == null) || (localh.getPath().equals(((h)localObject1).getPath()))) {
          localIterator.remove();
        }
      }
      label215:
      return;
      label219:
      j += 1;
    }
  }
  
  private void i(String paramString)
  {
    paramString = a.d(paramString);
    if (("sftp://".equals(paramString)) || ("ftps://".equals(paramString)) || ("ftpes://".equals(paramString)) || ("webdav://".equals(paramString)) || ("webdavs://".equals(paramString))) {
      return;
    }
    if (k(paramString))
    {
      d.add(a.a(a.c(paramString), 0));
      return;
    }
    d.add(paramString);
  }
  
  private d j(String paramString)
  {
    return a(paramString, false);
  }
  
  private boolean k(String paramString)
  {
    return (am.G(paramString) == 16) || (am.G(paramString) == 17);
  }
  
  public void a(e parame)
  {
    b.add(parame);
  }
  
  public void a(h paramh)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramh);
    b(localArrayList);
  }
  
  public void a(h paramh, String paramString)
  {
    a(paramh, paramString, -1);
  }
  
  public void a(h paramh, String paramString, int paramInt)
  {
    if ((am.as(paramh.getPath())) && (paramh.getFileType().b())) {
      b(new o(paramh.getPath().replaceFirst("SP://", "pcs://"), true), paramString, paramInt);
    }
    String str1;
    String str2;
    if ((am.aB(paramh.getPath())) && (paramh.getFileType().a()))
    {
      str1 = a.d(am.k());
      str2 = a.d(r.a().g());
      if (str2 == null) {
        return;
      }
      b(new o(paramh.getAbsolutePath().replaceFirst(str2, str1), false), paramString, paramInt);
    }
    for (;;)
    {
      b(paramh, paramString, paramInt);
      return;
      if ((am.az(paramh.getPath())) && (paramh.getFileType().a()))
      {
        str1 = a.d(am.k());
        str2 = a.d(r.a().g());
        if (str2 == null) {
          break;
        }
        b(new o(paramh.getAbsolutePath().replaceFirst(str1, str2), false), paramString, paramInt);
      }
    }
  }
  
  public void a(String paramString)
  {
    a(paramString, -1);
  }
  
  public void a(String paramString, int paramInt)
  {
    if (paramString == null) {
      return;
    }
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramString);
      a(localArrayList, paramInt);
      return;
    }
    catch (Exception paramString) {}
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return;
    }
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramString1);
      paramString1 = null;
      if (paramString2 != null)
      {
        paramString1 = new ArrayList();
        paramString1.add(paramString2);
      }
      a(localArrayList, paramString1, -1);
      return;
    }
    catch (Exception paramString1) {}
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    a(paramString1, paramString2, paramString3, -1);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    paramString1 = am.bE(paramString1);
    paramString2 = am.bE(paramString2);
    Object localObject = j(paramString1);
    if (localObject != null)
    {
      ((d)localObject).b(a.b(paramString1));
      j = a(((d)localObject).a(), paramString1);
      if (j >= 0)
      {
        localObject = (h)((d)localObject).a().get(j);
        ((h)localObject).setName(a.b(paramString2));
        if (((localObject instanceof n)) && (paramString3 != null)) {
          ((n)localObject).setDisplayName(paramString3);
        }
      }
    }
    int j = paramInt;
    if (paramInt == -1) {
      j = a.g(paramString1);
    }
    if ((j & 0x4) == 4) {
      d();
    }
    b(paramString1, paramString2, j);
  }
  
  public void a(String arg1, List<h> paramList, boolean paramBoolean)
  {
    if ((!am.bO(???)) || (paramList == null)) {
      return;
    }
    String str = am.bE(???);
    for (;;)
    {
      d locald1;
      synchronized (a)
      {
        locald1 = a(str, true);
        if (!paramBoolean) {
          break label233;
        }
        locald1 = f(str);
        if (locald1 != null)
        {
          locald1.a().addAll(paramList);
          f += paramList.size();
          if ((paramList.size() > 0) && (am.aG(((h)paramList.get(0)).getPath())) && (((h)paramList.get(0)).getFileType().b())) {
            e(paramList);
          }
          if ((paramList.size() > 0) && ((am.aB(((h)paramList.get(0)).getPath())) || (am.az(((h)paramList.get(0)).getPath())))) {
            f(paramList);
          }
          if (d.contains(a.d(str))) {
            d.remove(a.d(str));
          }
          return;
        }
      }
      return;
      label233:
      if (locald1.a(a.b(str)) != null) {
        a(str, true, true, null);
      }
      d locald2 = new d();
      locald2.a(paramList);
      locald1.a(a.b(str), locald2);
      e.add(str);
    }
  }
  
  protected void a(String paramString1, boolean paramBoolean, String paramString2)
  {
    a(paramString1, paramBoolean, false, paramString2);
  }
  
  protected void a(String paramString1, boolean paramBoolean1, boolean paramBoolean2, String paramString2)
  {
    d locald = a;
    if (paramString2 != null) {}
    Object localObject;
    try
    {
      for (paramString2 = f(paramString2);; paramString2 = j(paramString1))
      {
        if (paramString2 == null) {
          break label338;
        }
        localObject = a.b(paramString1);
        if ((paramBoolean1) || (paramString2.a((String)localObject) != null)) {
          break;
        }
        e.remove(paramString1);
        return;
      }
      if ((!paramBoolean1) && (paramString2.a((String)localObject).c().size() != 0)) {
        break label285;
      }
      localObject = paramString2.b((String)localObject);
      e.remove(paramString1);
      Iterator localIterator = e.iterator();
      while (localIterator.hasNext()) {
        if (((String)localIterator.next()).indexOf(paramString1) == 0) {
          localIterator.remove();
        }
      }
      f -= a((d)localObject);
    }
    finally {}
    if (paramBoolean1) {
      if (!paramBoolean2)
      {
        int j = a(paramString2.a(), paramString1);
        if (j >= 0)
        {
          paramString2.a().remove(j);
          f -= 1;
        }
      }
    }
    for (;;)
    {
      return;
      f -= paramString2.a().size();
      paramString2.a(null);
      e.remove(a.a(paramString1));
      i(a.a(paramString1));
      continue;
      label285:
      paramString2 = paramString2.a((String)localObject);
      e.remove(paramString1);
      f -= paramString2.a().size();
      paramString2.a(null);
      i(paramString1);
      continue;
      label338:
      e.remove(paramString1);
    }
  }
  
  public void a(List<String> paramList)
  {
    a(paramList, -1);
  }
  
  public void a(List<String> paramList, int paramInt)
  {
    a(paramList, null, paramInt);
  }
  
  public void a(List<String> paramList1, List<String> paramList2, int paramInt)
  {
    int j = 0;
    for (;;)
    {
      try
      {
        paramList1 = a.a(paramList1);
        if ((paramList1.size() > 0) && (am.ba((String)paramList1.get(0))))
        {
          ArrayList localArrayList1 = new ArrayList();
          ArrayList localArrayList2 = new ArrayList();
          ArrayList localArrayList3 = new ArrayList();
          ArrayList localArrayList4 = new ArrayList();
          if (j < paramList1.size())
          {
            File localFile = new File((String)paramList1.get(j));
            if ((!localFile.isDirectory()) && (am.ba((String)paramList1.get(j))) && (bc.P((String)paramList1.get(j))))
            {
              localArrayList1.add("book://" + ((String)paramList1.get(j)).substring(1));
              localArrayList2.add(paramList1.get(j));
            }
            if ((localFile.isDirectory()) || (!am.ba((String)paramList1.get(j))) || (!bc.K((String)paramList1.get(j)))) {
              break label361;
            }
            localArrayList3.add("apk://" + ((String)paramList1.get(j)).substring(1));
            localArrayList4.add(paramList1.get(j));
            break label361;
          }
          if ((localArrayList1.size() > 0) && (!bd.f())) {
            com.estrongs.fs.impl.d.b.a().e(localArrayList2);
          }
          if ((localArrayList3.size() > 0) && (!bd.f())) {
            com.estrongs.fs.impl.a.b.a().e(localArrayList4);
          }
        }
        b(paramList1, paramList2, paramInt);
        return;
      }
      catch (Exception paramList1)
      {
        return;
      }
      label361:
      j += 1;
    }
  }
  
  public void b()
  {
    a.b();
    e.clear();
    d.clear();
    f = 0;
    g.clear();
    h.clear();
  }
  
  public void b(e parame)
  {
    b.remove(parame);
  }
  
  public void b(h paramh)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramh);
    d(localArrayList);
  }
  
  public void b(String paramString)
  {
    try
    {
      paramString = a.a(am.bE(paramString));
      i(paramString);
      a(paramString, 0, null, null);
      return;
    }
    catch (Exception paramString) {}
  }
  
  public void b(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString1);
    a(localArrayList, paramString2, -1);
    if (FileExplorerActivity.J() != null) {
      FileExplorerActivity.J().b(localArrayList);
    }
  }
  
  public void b(List<h> paramList)
  {
    b(paramList, -1);
  }
  
  public void b(List<h> paramList, int paramInt)
  {
    if (paramList.size() < 1) {}
    ArrayList localArrayList;
    String str1;
    String str2;
    h localh;
    do
    {
      do
      {
        do
        {
          return;
          d(paramList, paramInt);
          if (!am.aB(((h)paramList.get(0)).getPath())) {
            break;
          }
          localArrayList = new ArrayList(paramList.size());
          str1 = a.d(am.k());
          str2 = a.d(r.a().g());
        } while (str2 == null);
        paramList = paramList.iterator();
        while (paramList.hasNext())
        {
          localh = (h)paramList.next();
          localArrayList.add(new o(localh.getAbsolutePath().replaceFirst(str2, str1), localh.getFileType().b()));
        }
        d(localArrayList, paramInt);
        return;
      } while (!am.az(((h)paramList.get(0)).getPath()));
      localArrayList = new ArrayList(paramList.size());
      str1 = a.d(am.k());
      str2 = a.d(r.a().g());
    } while (str2 == null);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localh = (h)paramList.next();
      localArrayList.add(new o(localh.getAbsolutePath().replaceFirst(str1, str2), localh.getFileType().b()));
    }
    d(localArrayList, paramInt);
  }
  
  public Set<String> c(List<String> paramList)
  {
    HashSet localHashSet = new HashSet();
    int j = 0;
    while (j < paramList.size())
    {
      localHashSet.add(a.a((String)paramList.get(j)));
      j += 1;
    }
    return localHashSet;
  }
  
  public void c()
  {
    a("/", true, null);
  }
  
  public void c(String paramString)
  {
    try
    {
      paramString = am.bE(paramString);
      i(paramString);
      a(paramString, 0, null, null);
      return;
    }
    catch (Exception paramString) {}
  }
  
  public void c(List<h> paramList, int paramInt)
  {
    if ((paramList == null) || (paramList.size() < 1)) {}
    ArrayList localArrayList;
    do
    {
      return;
      e(paramList, paramInt);
      Object localObject;
      if ((am.as(((h)paramList.get(0)).getPath())) && (am.aM(((h)paramList.get(0)).getPath())))
      {
        localArrayList = new ArrayList();
        localObject = paramList.iterator();
        while (((Iterator)localObject).hasNext())
        {
          h localh = (h)((Iterator)localObject).next();
          if (localh.getPath() != null) {
            localArrayList.add(new o(localh.getPath().replaceFirst("SP://", "pcs://")));
          }
        }
        e(localArrayList, paramInt);
      }
      localArrayList = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject = (h)paramList.next();
        if ((((h)localObject).getFileType() != null) && (((h)localObject).getFileType().a())) {
          localArrayList.add(((h)localObject).getPath());
        }
      }
    } while (FileExplorerActivity.J() == null);
    FileExplorerActivity.J().b(localArrayList);
  }
  
  public void d()
  {
    a("gallery://", true, null);
  }
  
  public void d(String paramString)
  {
    i(am.bE(paramString));
  }
  
  public void d(List<h> paramList)
  {
    c(paramList, -1);
  }
  
  public void e()
  {
    b();
    b.clear();
    c = null;
    i = true;
  }
  
  public boolean e(String paramString)
  {
    paramString = am.bE(paramString);
    return !d.contains(a.d(paramString));
  }
  
  public d f(String paramString)
  {
    paramString = am.bE(paramString);
    List localList = a.c(paramString);
    if (localList.size() == 0) {
      return null;
    }
    if (("sftp://".equals(paramString)) || ("ftps://".equals(paramString)) || ("ftpes://".equals(paramString)) || ("webdav://".equals(paramString)) || ("webdavs://".equals(paramString))) {
      return null;
    }
    paramString = a;
    d locald = a;
    int j = 0;
    for (;;)
    {
      try
      {
        if (j < localList.size())
        {
          paramString = paramString.a((String)localList.get(j));
          if (paramString == null) {
            return null;
          }
        }
        else
        {
          return paramString;
        }
      }
      finally {}
      j += 1;
    }
  }
  
  public String g(String paramString)
  {
    String str = am.bE(paramString);
    List localList = a.c(str);
    if (localList.size() == 0) {
      return str;
    }
    paramString = a;
    d locald = a;
    int j = 0;
    for (;;)
    {
      Object localObject;
      try
      {
        if (j >= localList.size()) {
          break label109;
        }
        localObject = paramString.a((String)localList.get(j));
        if (localObject != null) {
          break label115;
        }
        localObject = a.a(localList, j);
        if (a(paramString.a(), (String)localObject) != -1) {
          return null;
        }
      }
      finally {}
      return (String)localObject;
      label109:
      return str;
      label115:
      j += 1;
      paramString = (String)localObject;
    }
  }
  
  public h h(String paramString)
  {
    if ((paramString == null) || (!am.bO(paramString))) {}
    d locald;
    int j;
    do
    {
      do
      {
        return null;
        paramString = am.bE(paramString);
        locald = f(a.a(paramString));
      } while (locald == null);
      j = a(locald.a(), paramString);
    } while (j < 0);
    return (h)locald.a().get(j);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */