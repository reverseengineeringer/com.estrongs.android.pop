package com.estrongs.android.scanner;

import android.content.pm.ApplicationInfo;
import android.util.Log;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.scanner.a.a;
import com.estrongs.android.scanner.a.c;
import com.estrongs.android.scanner.a.d;
import com.estrongs.android.scanner.a.f;
import com.estrongs.android.util.ap;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class l
{
  private static l o = new l();
  private ExecutorService a;
  private ae b;
  private y c;
  private AtomicBoolean d;
  private AtomicBoolean e;
  private AtomicInteger f;
  private List<f> g;
  private List<com.estrongs.android.scanner.a.g> h;
  private List<a> i;
  private com.estrongs.android.scanner.d.m j;
  private String k;
  private Set<String> l;
  private com.estrongs.android.pop.app.imageviewer.gallery.g<String, Boolean> m;
  private com.estrongs.android.pop.app.imageviewer.gallery.g<String, Boolean> n;
  
  private l()
  {
    com.estrongs.android.util.l.e("Cataloger", "onCreate");
    x.a();
    d = new AtomicBoolean(false);
    f = new AtomicInteger(0);
    h = new CopyOnWriteArrayList();
    i = new CopyOnWriteArrayList();
    g = new CopyOnWriteArrayList();
    m = new com.estrongs.android.pop.app.imageviewer.gallery.g(256);
    n = new com.estrongs.android.pop.app.imageviewer.gallery.g(16);
    c = ab.a().a(false);
    c.a(null);
    b = new ae();
    j = new com.estrongs.android.scanner.d.m();
    e = new AtomicBoolean(false);
    k = ap.bV(ad.a(FexApplication.a()).A());
    a = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new am("CatalogerThread"));
  }
  
  public static l a()
  {
    return o;
  }
  
  private void a(a parama)
  {
    if (e.get())
    {
      c.a(parama);
      return;
    }
    Log.e("Cataloger", "扫描模块还未完成，先把设置项缓存起来");
    i.add(parama);
  }
  
  private void a(f paramf)
  {
    if (e.get())
    {
      c.a(paramf);
      return;
    }
    Log.e("Cataloger", "扫描模块还未完成，先把扫描项缓存起来");
    g.add(paramf);
  }
  
  private void a(com.estrongs.android.scanner.a.g paramg)
  {
    if (e.get())
    {
      c.a(paramg);
      return;
    }
    Log.e("Cataloger", "扫描模块还未完成，先把同步项缓存起来");
    h.add(paramg);
  }
  
  private boolean a(int paramInt, String paramString)
  {
    if (paramInt == 1)
    {
      if (m.a(paramString) != null)
      {
        Log.e("Cataloger", "重复创建命令");
        m.b(paramString);
        return true;
      }
      m.a(paramString, Boolean.TRUE);
    }
    for (;;)
    {
      return false;
      if (paramInt == 3)
      {
        m.b(paramString);
        if (n.a(paramString) != null)
        {
          Log.e("Cataloger", "重复删除命令");
          n.b(paramString);
          return true;
        }
        n.a(paramString, Boolean.TRUE);
      }
    }
  }
  
  private void b(int paramInt1, String paramString, int paramInt2)
  {
    if (a(paramInt1, paramString)) {}
    do
    {
      String str;
      do
      {
        return;
        Log.e("Cataloger", "syncFile:" + paramString);
        localObject = ap.d(paramString);
        str = ap.bB(paramString);
        if (j.e(str) != null) {
          break;
        }
      } while ((!new File(str).exists()) || (paramInt1 == 3));
      Log.e("Cataloger", "数据库中不存在，但是物理文件夹存在:" + str);
      paramString = c(str);
    } while (paramString == null);
    d(paramString);
    return;
    if ((paramInt1 == 1) && (paramInt2 == 1))
    {
      Log.e("Cataloger", "创建一个目录:" + paramString);
      d(paramString);
      return;
    }
    Object localObject = ap.bR((String)localObject);
    localObject = c.a(paramString, (String)localObject, paramInt1);
    if (localObject != null)
    {
      paramString = new com.estrongs.android.scanner.a.g(paramInt1, paramString);
      paramString.a((c)localObject);
      paramString.a(paramInt2);
      a(paramString);
      return;
    }
    Log.e("Cataloger", "need not sync path:" + paramString);
  }
  
  private String c(String paramString)
  {
    for (;;)
    {
      String str = ap.bB(paramString);
      if ((str == null) || (str.equals("/"))) {
        paramString = null;
      }
      while (j.e(str) != null) {
        return paramString;
      }
      paramString = str;
    }
  }
  
  private void d(String paramString)
  {
    if (!b.b()) {
      b.a();
    }
    Log.e("Cataloger", "扫描新建目录：" + paramString);
    String str = paramString;
    if (!paramString.endsWith("/")) {
      str = paramString + "/";
    }
    paramString = new Stack();
    paramString.push(str);
    while (!paramString.isEmpty())
    {
      str = (String)paramString.pop();
      if (!b.a(str))
      {
        Object localObject1 = new File(str);
        Object localObject2 = new com.estrongs.android.scanner.a.b(str, ap.d(str), ((File)localObject1).lastModified());
        com.estrongs.android.scanner.a.g localg = new com.estrongs.android.scanner.a.g(1, str);
        localg.a((c)localObject2);
        localg.a(1);
        a(localg);
        localObject1 = ((File)localObject1).listFiles();
        if (localObject1 != null)
        {
          localObject2 = new ArrayList(localObject1.length);
          int i2 = localObject1.length;
          int i1 = 0;
          if (i1 < i2)
          {
            localg = localObject1[i1];
            Object localObject3 = localg.getName();
            if (((String)localObject3).equalsIgnoreCase(".nomedia")) {}
            for (;;)
            {
              i1 += 1;
              break;
              if (!b.c((String)localObject3)) {
                if (localg.isDirectory())
                {
                  paramString.push(localg.getPath() + "/");
                }
                else
                {
                  localObject3 = c.a(str + (String)localObject3, ap.bR((String)localObject3));
                  if (localObject3 != null)
                  {
                    ((d)localObject3).b(localg.lastModified());
                    ((d)localObject3).d(localg.length());
                    ((List)localObject2).add(localObject3);
                  }
                }
              }
            }
          }
          a(new f(1, -1L, str, (List)localObject2));
        }
      }
    }
  }
  
  private int e(String paramString)
  {
    int i1 = 0;
    paramString = new File(paramString);
    if (paramString.exists())
    {
      if (paramString.isDirectory()) {
        i1 = 1;
      }
    }
    else {
      return i1;
    }
    return 2;
  }
  
  private final void i()
  {
    l = new HashSet();
    Object localObject = FexApplication.a().a(8192);
    com.estrongs.android.util.l.e("Cataloger", "app number: " + ((List)localObject).size());
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = nextpackageName;
      l.add(str);
    }
  }
  
  public void a(int paramInt1, String paramString, int paramInt2)
  {
    if (d.get()) {
      return;
    }
    a.execute(new p(this, paramInt1, paramString, paramInt2));
  }
  
  public final void a(String paramString)
  {
    com.estrongs.android.util.l.e("Cataloger", "updateLastAccess:" + paramString);
    if ((paramString == null) || (!ap.bl(paramString))) {}
    while (paramString.contains("/.estrongs/")) {
      return;
    }
    a.execute(new v(this, paramString));
  }
  
  public void a(String paramString1, String paramString2)
  {
    a.execute(new s(this, paramString1, paramString2));
  }
  
  public void a(List<String> paramList)
  {
    if ((paramList != null) && (!paramList.isEmpty())) {
      a.execute(new t(this, paramList));
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if ((!paramBoolean) && (d.get()))
    {
      Log.e("Cataloger", "文件监控暂时关闭!跳过flush");
      return;
    }
    a.execute(new q(this, paramBoolean));
  }
  
  public void b()
  {
    com.estrongs.android.scanner.b.b.a().d();
    i();
  }
  
  public void b(String paramString)
  {
    com.estrongs.android.util.l.e("Cataloger", "setDownloadPath:" + paramString);
    paramString = ap.bV(paramString);
    if (!k.equals(paramString)) {
      a.execute(new o(this, paramString));
    }
  }
  
  public void b(String paramString1, String paramString2)
  {
    if (!l.contains(paramString2)) {
      return;
    }
    a.execute(new w(this, paramString1, paramString2));
  }
  
  public void b(List<String> paramList)
  {
    if ((paramList != null) && (!paramList.isEmpty())) {
      a.execute(new u(this, paramList));
    }
  }
  
  public void c()
  {
    com.estrongs.android.util.l.e("Cataloger", "收到扫描开始通知");
    e.set(false);
  }
  
  public void c(String paramString1, String paramString2)
  {
    a.execute(new n(this, paramString1, paramString2));
  }
  
  public void d()
  {
    com.estrongs.android.util.l.e("Cataloger", "收到扫描结束通知");
    e.set(true);
    a.execute(new m(this));
  }
  
  public void e()
  {
    com.estrongs.android.util.l.e("Cataloger", "关闭文件监控!");
    d.set(true);
    f.incrementAndGet();
  }
  
  public void f()
  {
    a(false);
  }
  
  public void g()
  {
    com.estrongs.android.util.l.e("Cataloger", "通知应用关联文件夹设置开始!");
  }
  
  public void h()
  {
    com.estrongs.android.util.l.e("Cataloger", "通知应用关联文件夹设置结束!");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */