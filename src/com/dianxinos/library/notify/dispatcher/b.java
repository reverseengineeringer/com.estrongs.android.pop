package com.dianxinos.library.notify.dispatcher;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.dianxinos.library.dxbase.DXBEventSource;
import com.dianxinos.library.notify.data.ShowRule;
import com.dianxinos.library.notify.data.ShowRule.ShowType;
import com.dianxinos.library.notify.data.Works;
import com.dianxinos.library.notify.download.DownloadInfo;
import com.dianxinos.library.notify.parser.NotifyStrategy;
import java.io.File;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class b
  extends Handler
{
  private static b a = null;
  private static final int b = 1000;
  private static final int c = (int)(Math.random() * 59.0D * 1000.0D);
  private static Comparator<com.dianxinos.library.notify.data.j> g = new i();
  private boolean d = false;
  private boolean e = false;
  private long f = SystemClock.uptimeMillis();
  private com.dianxinos.library.dxbase.h h = new o(this);
  private com.dianxinos.library.dxbase.h i = new d(this);
  private com.dianxinos.library.dxbase.h j = new e(this);
  private com.dianxinos.library.dxbase.h k = new f(this);
  
  static
  {
    if (com.dianxinos.library.dxbase.e.b) {}
  }
  
  private b(Looper paramLooper)
  {
    super(paramLooper);
    b(1, null);
  }
  
  public static com.dianxinos.library.notify.data.j a(ShowRule.ShowType paramShowType)
  {
    Object localObject2 = com.dianxinos.library.notify.h.c.a().d();
    if (localObject2 != null)
    {
      localObject1 = localObject2;
      if (!((List)localObject2).isEmpty()) {}
    }
    else
    {
      localObject2 = b();
      if (localObject2 != null)
      {
        localObject1 = localObject2;
        if (!((List)localObject2).isEmpty()) {}
      }
      else
      {
        if (com.dianxinos.library.dxbase.e.c) {
          com.dianxinos.library.dxbase.j.b("without usable splash");
        }
        return null;
      }
    }
    Collections.sort((List)localObject1, g);
    Object localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (com.dianxinos.library.notify.data.j)((Iterator)localObject1).next();
      ShowRule localShowRule = e;
      if (localShowRule != null)
      {
        String str = f.a();
        if ((TextUtils.isEmpty(str)) || (a(str, (com.dianxinos.library.notify.data.j)localObject2)))
        {
          str = f.d();
          if (((TextUtils.isEmpty(str)) || (a(str, (com.dianxinos.library.notify.data.j)localObject2))) && (localShowRule.a(paramShowType)))
          {
            com.dianxinos.library.notify.h.b.b(a, paramShowType);
            return (com.dianxinos.library.notify.data.j)localObject2;
          }
        }
      }
    }
    return null;
  }
  
  public static b a()
  {
    try
    {
      if (a == null) {
        a = new b(com.dianxinos.library.dxbase.o.c());
      }
      b localb = a;
      return localb;
    }
    finally {}
  }
  
  private static p a(com.dianxinos.library.notify.data.j paramj, String paramString1, String paramString2)
  {
    String str = h.getWorkName(paramString1);
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    p localp = new p();
    a = a;
    b = "download";
    d = paramString1;
    c = str;
    e = paramString2;
    return localp;
  }
  
  private void a(Message paramMessage)
  {
    if (!(obj instanceof String)) {}
    Object localObject;
    do
    {
      do
      {
        String str;
        do
        {
          int m;
          do
          {
            do
            {
              do
              {
                return;
                paramMessage = (String)obj;
                localObject = com.dianxinos.library.notify.c.a();
                str = com.dianxinos.library.notify.j.e.b((Context)localObject, paramMessage);
              } while ((TextUtils.isEmpty(str)) || (!((Context)localObject).getPackageName().equals(str)));
              m = com.dianxinos.library.notify.j.e.c((Context)localObject, paramMessage);
            } while (m <= 0);
            str = q.a(paramMessage, m);
          } while (TextUtils.isEmpty(str));
          q.b(paramMessage, m);
          localObject = com.dianxinos.library.notify.h.c.a().a(str);
        } while (localObject == null);
        com.dianxinos.library.notify.g.a.d(str, paramMessage);
        paramMessage = h.getNextWork("install");
      } while ((TextUtils.isEmpty(paramMessage)) || (TextUtils.isEmpty(h.getWorkName(paramMessage))));
      paramMessage = com.dianxinos.library.notify.b.a.a(b);
    } while (paramMessage == null);
    paramMessage.a(a, "install");
  }
  
  private void a(Set<String> paramSet)
  {
    Object localObject2 = com.dianxinos.library.notify.h.e.a();
    Object localObject1 = new LinkedList();
    localObject2 = ((Set)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = com.dianxinos.library.notify.h.e.a((String)((Iterator)localObject2).next());
      if (!TextUtils.isEmpty((CharSequence)localObject3))
      {
        localObject3 = com.dianxinos.library.notify.parser.d.b((String)localObject3);
        if (localObject3 != null)
        {
          if (com.dianxinos.library.dxbase.e.c) {
            com.dianxinos.library.dxbase.j.b("notify id: " + a + ", category: " + b);
          }
          ((List)localObject1).add(localObject3);
        }
      }
    }
    localObject2 = com.dianxinos.library.notify.h.e.b().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = com.dianxinos.library.notify.h.e.a((String)((Iterator)localObject2).next());
      if (!TextUtils.isEmpty((CharSequence)localObject3))
      {
        localObject3 = com.dianxinos.library.notify.parser.d.b((String)localObject3);
        if (localObject3 != null)
        {
          if (com.dianxinos.library.dxbase.e.c) {
            com.dianxinos.library.dxbase.j.b("splash id: " + a + ", category: " + b);
          }
          ((List)localObject1).add(localObject3);
        }
      }
    }
    localObject2 = com.dianxinos.library.notify.h.e.c().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = com.dianxinos.library.notify.h.e.a((String)((Iterator)localObject2).next());
      if (!TextUtils.isEmpty((CharSequence)localObject3))
      {
        localObject3 = com.dianxinos.library.notify.parser.d.b((String)localObject3);
        if (localObject3 != null)
        {
          if (com.dianxinos.library.dxbase.e.c) {
            com.dianxinos.library.dxbase.j.b("pandora id: " + a + ", category: " + b);
          }
          ((List)localObject1).add(localObject3);
        }
      }
    }
    Object localObject3 = com.dianxinos.library.notify.h.e.d();
    localObject2 = new LinkedList();
    localObject3 = ((Set)localObject3).iterator();
    while (((Iterator)localObject3).hasNext())
    {
      Object localObject4 = com.dianxinos.library.notify.h.e.a((String)((Iterator)localObject3).next());
      if (!TextUtils.isEmpty((CharSequence)localObject4))
      {
        localObject4 = com.dianxinos.library.notify.parser.d.g((String)localObject4);
        if (localObject4 != null)
        {
          if (com.dianxinos.library.dxbase.e.c) {
            com.dianxinos.library.dxbase.j.b("data pipe id: " + b + ", category: " + b);
          }
          ((List)localObject2).add(localObject4);
        }
      }
    }
    com.dianxinos.library.notify.h.c.a().e();
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (com.dianxinos.library.notify.data.j)((Iterator)localObject1).next();
      com.dianxinos.library.notify.h.c.a().a((com.dianxinos.library.notify.data.j)localObject3);
      if (((com.dianxinos.library.notify.data.j)localObject3).a()) {
        com.dianxinos.library.notify.h.c.a().b((com.dianxinos.library.notify.data.j)localObject3);
      }
    }
    localObject1 = ((List)localObject2).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (com.dianxinos.library.notify.data.b)((Iterator)localObject1).next();
      com.dianxinos.library.notify.h.c.a().a((com.dianxinos.library.notify.data.b)localObject2);
    }
    localObject1 = NotifyStrategy.loadStrategy();
    if (localObject1 != null) {
      NotifyStrategy.setActiveStrategy((NotifyStrategy)localObject1);
    }
    if ((paramSet != null) && (!paramSet.isEmpty())) {
      b(paramSet);
    }
    h();
  }
  
  private static boolean a(String paramString)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions);
    return (outHeight > 0) && (outWidth > 0);
  }
  
  private static boolean a(String paramString, com.dianxinos.library.notify.data.j paramj)
  {
    paramString = new File(com.dianxinos.library.notify.c.a(paramString, a));
    return (paramString.exists()) && (paramString.canRead());
  }
  
  private static boolean a(String paramString1, String paramString2)
  {
    paramString1 = com.dianxinos.library.notify.j.d.b(paramString1);
    return (paramString1 != null) && (paramString1.equals(paramString2));
  }
  
  private static List<com.dianxinos.library.notify.data.j> b()
  {
    LinkedList localLinkedList = new LinkedList();
    Object localObject = com.dianxinos.library.notify.h.e.b();
    if ((localObject != null) && (!((Set)localObject).isEmpty()))
    {
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        com.dianxinos.library.notify.data.j localj = com.dianxinos.library.notify.parser.d.b(com.dianxinos.library.notify.h.e.a((String)((Iterator)localObject).next()));
        if (localj != null) {
          localLinkedList.add(localj);
        }
      }
    }
    return localLinkedList;
  }
  
  private void b(int paramInt, Object paramObject)
  {
    a(paramInt, paramObject, -1L);
  }
  
  private void b(Message paramMessage)
  {
    Object localObject = (Object[])obj;
    paramMessage = (ShowRule.ShowType)localObject[0];
    localObject = (com.dianxinos.library.notify.f)localObject[1];
    if (localObject != null) {
      ((com.dianxinos.library.notify.f)localObject).a(a(paramMessage));
    }
  }
  
  private void b(Set<String> paramSet)
  {
    if ((paramSet == null) || (paramSet.isEmpty())) {}
    for (;;)
    {
      return;
      if (com.dianxinos.library.dxbase.e.c) {
        com.dianxinos.library.dxbase.j.b("new data pipe arrive: " + paramSet.size());
      }
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        String str1 = (String)paramSet.next();
        if (!TextUtils.isEmpty(str1))
        {
          String str2 = com.dianxinos.library.notify.h.c.a().b(str1);
          if (!TextUtils.isEmpty(str2))
          {
            com.dianxinos.library.notify.e locale = com.dianxinos.library.notify.b.b.a(str1);
            if (locale != null) {
              locale.onDataArrive(str1, str2);
            }
          }
        }
      }
    }
  }
  
  private void c()
  {
    Object localObject2 = com.dianxinos.library.notify.h.c.a().c();
    if (com.dianxinos.library.dxbase.e.c) {
      com.dianxinos.library.dxbase.j.b("perform run pandora item size is " + ((List)localObject2).size());
    }
    if ((localObject2 == null) || (((List)localObject2).isEmpty())) {}
    for (;;)
    {
      return;
      Collections.sort((List)localObject2, g);
      Object localObject1 = new LinkedList();
      localObject2 = ((List)localObject2).iterator();
      Object localObject3;
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (com.dianxinos.library.notify.data.j)((Iterator)localObject2).next();
        Object localObject4 = e;
        if (localObject4 == null)
        {
          if (com.dianxinos.library.dxbase.e.c) {
            com.dianxinos.library.dxbase.j.b("notifyId: " + a + " without show rule");
          }
        }
        else if (!((ShowRule)localObject4).a(ShowRule.ShowType.NORMAL))
        {
          if (com.dianxinos.library.dxbase.e.c) {
            com.dianxinos.library.dxbase.j.b("notifyId: " + a + "check failure");
          }
        }
        else
        {
          localObject4 = f.a();
          if ((!TextUtils.isEmpty((CharSequence)localObject4)) && (!a((String)localObject4, (com.dianxinos.library.notify.data.j)localObject3)))
          {
            if (com.dianxinos.library.dxbase.e.c) {
              com.dianxinos.library.dxbase.j.b("notify id: " + a + " bkg file not exist");
            }
          }
          else
          {
            localObject4 = f.c();
            if ((!TextUtils.isEmpty((CharSequence)localObject4)) && (!a((String)localObject4, (com.dianxinos.library.notify.data.j)localObject3)))
            {
              if (com.dianxinos.library.dxbase.e.c) {
                com.dianxinos.library.dxbase.j.b("notify id: " + a + " essential file not exist");
              }
            }
            else {
              ((List)localObject1).add(localObject3);
            }
          }
        }
      }
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (com.dianxinos.library.notify.data.j)((Iterator)localObject1).next();
        localObject3 = com.dianxinos.library.notify.b.a.a(b);
        if (localObject3 == null)
        {
          if (com.dianxinos.library.dxbase.e.c) {
            com.dianxinos.library.dxbase.j.b("display container is null, " + a + "display failed,try to show next item if exist");
          }
        }
        else
        {
          if (com.dianxinos.library.dxbase.e.c) {
            com.dianxinos.library.dxbase.j.b("begin to show the highest priority notify item,notifyId=" + a);
          }
          if (((com.dianxinos.library.notify.d)localObject3).a(a))
          {
            long l = System.currentTimeMillis();
            com.dianxinos.library.notify.h.b.b(a, ShowRule.ShowType.NORMAL);
            com.dianxinos.library.notify.h.b.a(a, l);
          }
        }
      }
    }
  }
  
  private void c(Message paramMessage)
  {
    if (!(obj instanceof Object[])) {
      return;
    }
    paramMessage = (Object[])obj;
    String str = (String)paramMessage[0];
    ((com.dianxinos.library.notify.e)paramMessage[1]).onDataArrive(str, com.dianxinos.library.notify.h.c.a().b(str));
  }
  
  private void d()
  {
    boolean bool2 = false;
    Context localContext = com.dianxinos.library.notify.c.a();
    long l1 = System.currentTimeMillis();
    long l2 = e().getShowGap();
    long l3 = com.dianxinos.library.notify.h.b.a();
    boolean bool1;
    boolean bool3;
    if ((l3 > l1) || (l3 + l2 < l1))
    {
      bool1 = true;
      long l4 = com.dianxinos.library.notify.h.b.a(localContext);
      if ((l4 > l1) || (l4 + l2 < l1)) {
        bool2 = true;
      }
      bool3 = com.dianxinos.library.notify.j.f.a(localContext);
      if (com.dianxinos.library.dxbase.e.c) {
        com.dianxinos.library.dxbase.j.b("lastShowTime is " + new Date(l3).toString() + ",showGap from client is=" + l2 / 1000L / 60L + "min");
      }
      if ((!bool1) || (!bool2) || (!bool3)) {
        break label186;
      }
      if (com.dianxinos.library.dxbase.e.c) {
        com.dianxinos.library.dxbase.j.b("all conditions right! start this schedule...");
      }
      com.dianxinos.library.dxbase.o.c(new h(this));
    }
    label186:
    while (!com.dianxinos.library.dxbase.e.c)
    {
      return;
      bool1 = false;
      break;
    }
    com.dianxinos.library.dxbase.j.b("handleOnPreloadComplete:dont't meet the showable conditions,stop this schedule. myselfShowable= " + bool1 + ",settingsShowable=" + bool2 + ",isHomeFirst=" + bool3);
  }
  
  private void d(Message paramMessage)
  {
    com.dianxinos.library.dxbase.o.c(new c(this));
    com.dianxinos.library.dxbase.o.c(new g(this));
  }
  
  private static NotifyStrategy e()
  {
    NotifyStrategy localNotifyStrategy2 = NotifyStrategy.getActiveStrategy();
    NotifyStrategy localNotifyStrategy1 = localNotifyStrategy2;
    if (localNotifyStrategy2 == null) {
      localNotifyStrategy1 = com.dianxinos.library.notify.parser.a.a();
    }
    return localNotifyStrategy1;
  }
  
  private void e(Message paramMessage)
  {
    if (!(obj instanceof p)) {}
    p localp;
    int n;
    label325:
    do
    {
      com.dianxinos.library.notify.data.j localj;
      com.dianxinos.library.notify.c.c localc;
      do
      {
        do
        {
          return;
          localp = (p)obj;
          if (com.dianxinos.library.dxbase.e.c) {
            com.dianxinos.library.dxbase.j.b("notifyId: " + a + ", executor: " + b + ", work" + d);
          }
          localj = com.dianxinos.library.notify.c.a(a);
          if (localj != null) {
            break;
          }
        } while (!com.dianxinos.library.dxbase.e.c);
        com.dianxinos.library.dxbase.j.b("cannot find notify item " + a);
        return;
        localc = com.dianxinos.library.notify.c.g.a(b);
        if (localc != null) {
          break;
        }
      } while (!com.dianxinos.library.dxbase.e.c);
      com.dianxinos.library.dxbase.j.b("without executor for " + b);
      return;
      if (("download".equals(c)) && (f != null)) {}
      for (int m = 1;; m = 0)
      {
        paramMessage = null;
        if (m != 0)
        {
          paramMessage = h.getDownloadWorkUrl();
          if ((TextUtils.isEmpty(paramMessage)) || (!com.dianxinos.library.notify.download.g.a().a(paramMessage, f))) {
            break;
          }
        }
        n = localc.a(localp);
        if (com.dianxinos.library.dxbase.e.c) {
          com.dianxinos.library.dxbase.j.b("notifyId: " + a + ", work: " + c + ", result is " + n);
        }
        if (n != 1) {
          break label325;
        }
        b(7, localp);
        return;
      }
      if ((n == 0) && (m != 0))
      {
        com.dianxinos.library.notify.download.g.a().b(paramMessage, f);
        return;
      }
    } while ((n != 0) || (!"install".equals(c)));
    com.dianxinos.library.dxbase.o.a(new j(this));
  }
  
  private void f()
  {
    Object localObject2 = com.dianxinos.library.notify.h.c.a().b();
    if (com.dianxinos.library.dxbase.e.c) {
      com.dianxinos.library.dxbase.j.b("performRunNotifyItem:size " + ((List)localObject2).size());
    }
    if ((localObject2 == null) || (((List)localObject2).isEmpty())) {}
    Object localObject3;
    label754:
    do
    {
      return;
      for (;;)
      {
        Collections.sort((List)localObject2, g);
        if (com.dianxinos.library.dxbase.e.c)
        {
          int n = ((List)localObject2).size();
          int m = 0;
          while (m < n)
          {
            localObject1 = (com.dianxinos.library.notify.data.j)((List)localObject2).get(m);
            com.dianxinos.library.dxbase.j.b("notifyid: " + a + ", category: " + b + ", priority: " + c + ", showStartTime: " + e.c + ", container: " + g.a);
            m += 1;
          }
        }
        Object localObject1 = new LinkedList();
        localObject2 = ((List)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (com.dianxinos.library.notify.data.j)((Iterator)localObject2).next();
          Object localObject4 = e;
          if (localObject4 == null)
          {
            if (com.dianxinos.library.dxbase.e.c) {
              com.dianxinos.library.dxbase.j.b("notifyId: " + a + " without show rule");
            }
          }
          else if (!((ShowRule)localObject4).a(ShowRule.ShowType.NORMAL))
          {
            if (com.dianxinos.library.dxbase.e.c) {
              com.dianxinos.library.dxbase.j.b("notifyId: " + a + "check failure");
            }
          }
          else
          {
            localObject4 = f.a();
            if (!TextUtils.isEmpty((CharSequence)localObject4))
            {
              if (!a((String)localObject4, (com.dianxinos.library.notify.data.j)localObject3))
              {
                if (!com.dianxinos.library.dxbase.e.c) {
                  continue;
                }
                com.dianxinos.library.dxbase.j.b("notify id: " + a + " bkg file not exist");
                continue;
              }
              String str = f.b();
              if (!a(com.dianxinos.library.notify.c.a((String)localObject4, a), str))
              {
                if (!com.dianxinos.library.dxbase.e.c) {
                  continue;
                }
                com.dianxinos.library.dxbase.j.b("notify id: " + a + " bkg file sum is error");
                continue;
              }
              if (!a(com.dianxinos.library.notify.c.a((String)localObject4, a)))
              {
                if (!com.dianxinos.library.dxbase.e.c) {
                  continue;
                }
                com.dianxinos.library.dxbase.j.b("notify id: " + a + " bkg file can not decode");
                continue;
              }
            }
            localObject4 = f.d();
            if ((!TextUtils.isEmpty((CharSequence)localObject4)) && (!a((String)localObject4, (com.dianxinos.library.notify.data.j)localObject3)))
            {
              if (com.dianxinos.library.dxbase.e.c) {
                com.dianxinos.library.dxbase.j.b("notify id: " + a + " essential file not exist");
              }
            }
            else {
              ((List)localObject1).add(localObject3);
            }
          }
        }
        if (com.dianxinos.library.dxbase.e.c) {
          com.dianxinos.library.dxbase.j.b("There are " + ((List)localObject1).size() + " items meet the display conditions");
        }
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (com.dianxinos.library.notify.data.j)((Iterator)localObject1).next();
          localObject3 = com.dianxinos.library.notify.b.a.a(b);
          if (localObject3 != null) {
            break label754;
          }
          if (com.dianxinos.library.dxbase.e.c) {
            com.dianxinos.library.dxbase.j.b("display container is null, " + a + "display failed,try to show next item if exist");
          }
        }
      }
      if (com.dianxinos.library.dxbase.e.c) {
        com.dianxinos.library.dxbase.j.b("begin to show the highest priority notify item");
      }
    } while (!((com.dianxinos.library.notify.d)localObject3).a(a));
    long l = System.currentTimeMillis();
    com.dianxinos.library.notify.h.b.a(com.dianxinos.library.notify.c.a(), l);
    com.dianxinos.library.notify.h.b.a(l);
    com.dianxinos.library.notify.h.b.b(a, ShowRule.ShowType.NORMAL);
    com.dianxinos.library.notify.h.b.a(a, l);
  }
  
  private void f(Message paramMessage)
  {
    if (!(obj instanceof p)) {}
    com.dianxinos.library.notify.data.j localj;
    com.dianxinos.library.notify.d locald;
    do
    {
      do
      {
        return;
        paramMessage = (p)obj;
        localj = com.dianxinos.library.notify.h.c.a().a(a);
      } while (localj == null);
      locald = com.dianxinos.library.notify.b.a.a(b);
    } while (locald == null);
    locald.a(a, c);
  }
  
  private void g()
  {
    e = true;
    d = false;
    a(null);
    e = false;
    d = true;
  }
  
  private void g(Message paramMessage)
  {
    if (!com.dianxinos.library.dxbase.k.b()) {}
    do
    {
      do
      {
        return;
        long l1 = e().getScheduleInterval();
        long l2 = com.dianxinos.library.notify.h.b.d();
        long l3 = System.currentTimeMillis();
        if ((l1 + l2 >= l3) && (l2 <= l3)) {
          break;
        }
        a(2, null, c);
      } while (!com.dianxinos.library.dxbase.e.c);
      com.dianxinos.library.dxbase.j.b("pull network data after " + c / 1000 + " seconds");
      return;
    } while (!com.dianxinos.library.dxbase.e.c);
    com.dianxinos.library.dxbase.j.b("The last scheduled time less than scheduleGap(half an hour),so break this schedule");
  }
  
  private void h(Message paramMessage)
  {
    if (!com.dianxinos.library.dxbase.k.b()) {}
    do
    {
      do
      {
        return;
      } while ((SystemClock.uptimeMillis() - f < b) || (i()));
      if ((!e) && (d))
      {
        h();
        return;
      }
    } while ((e) || (d));
    g();
  }
  
  private boolean h()
  {
    long l1 = System.currentTimeMillis();
    long l2 = e().getScheduleInterval();
    long l3 = com.dianxinos.library.notify.h.b.d();
    if ((l2 + l3 < l1) || (l3 > l1)) {}
    for (boolean bool = true;; bool = false)
    {
      if (com.dianxinos.library.dxbase.e.c) {
        com.dianxinos.library.dxbase.j.b("doSchedulePreload:scheduleable " + bool);
      }
      if (bool)
      {
        com.dianxinos.library.notify.h.b.d(System.currentTimeMillis());
        com.dianxinos.library.dxbase.o.c(new k(this));
      }
      return bool;
    }
  }
  
  private void i(Message paramMessage) {}
  
  private boolean i()
  {
    long l1 = e().getFetchInterval();
    long l2 = com.dianxinos.library.notify.h.b.b();
    long l3 = System.currentTimeMillis();
    if ((l2 > l3) || (l1 + l2 < l3)) {}
    for (boolean bool = true;; bool = false)
    {
      if (bool) {
        com.dianxinos.library.dxbase.o.c(new l(this));
      }
      return bool;
    }
  }
  
  private void j()
  {
    if (!com.dianxinos.library.dxbase.k.b())
    {
      com.dianxinos.library.dxbase.j.b("network unavailable");
      return;
    }
    if (com.dianxinos.library.dxbase.e.c) {
      com.dianxinos.library.dxbase.j.b("performDataFetch");
    }
    com.dianxinos.library.notify.d.b.a().a(new m(this));
  }
  
  private void j(Message paramMessage)
  {
    if (com.dianxinos.library.dxbase.e.c) {
      com.dianxinos.library.dxbase.j.b("handleOnNotifyArrive");
    }
    if (!(obj instanceof byte[])) {}
    do
    {
      return;
      String str = com.dianxinos.library.notify.parser.c.a((byte[])obj);
      if (com.dianxinos.library.dxbase.e.c) {
        com.dianxinos.library.dxbase.j.b("the result is " + str + ", data length is " + ((byte[])obj).length);
      }
      if (!TextUtils.isEmpty(str))
      {
        paramMessage = com.dianxinos.library.notify.parser.b.a(str);
        com.dianxinos.library.notify.g.a.a(paramMessage);
        if (paramMessage != null)
        {
          com.dianxinos.library.notify.h.d.a(a);
          if (!paramMessage.a())
          {
            com.dianxinos.library.notify.h.d.a(b, f);
            com.dianxinos.library.notify.h.d.b(c, g);
            com.dianxinos.library.notify.h.d.c(e, i);
            a(11, new LinkedHashSet(e.keySet()));
            return;
          }
        }
      }
      if ((!e) && (d))
      {
        h();
        return;
      }
    } while ((e) || (d));
    g();
  }
  
  private void k()
  {
    com.dianxinos.library.notify.c.c localc = com.dianxinos.library.notify.c.g.a("download");
    if (localc == null) {
      if (com.dianxinos.library.dxbase.e.c) {
        com.dianxinos.library.dxbase.j.b("We cannot find DownloadExecutor");
      }
    }
    label198:
    label215:
    label237:
    label254:
    label276:
    label296:
    label301:
    label306:
    label311:
    label316:
    label321:
    label326:
    label331:
    label336:
    do
    {
      do
      {
        return;
        localObject1 = com.dianxinos.library.notify.h.c.a().b();
        ((List)localObject1).addAll(com.dianxinos.library.notify.h.c.a().c());
        ((List)localObject1).addAll(com.dianxinos.library.notify.h.c.a().d());
      } while ((localObject1 == null) || (((List)localObject1).isEmpty()));
      if (com.dianxinos.library.dxbase.e.c) {
        com.dianxinos.library.dxbase.j.b("We have " + ((List)localObject1).size() + " items to preload essential material");
      }
      Collections.sort((List)localObject1, g);
      Object localObject2 = new LinkedList();
      LinkedList localLinkedList1 = new LinkedList();
      LinkedList localLinkedList2 = new LinkedList();
      Object localObject3 = new LinkedHashSet();
      int i1 = ((List)localObject1).size() - 1;
      Object localObject4;
      int m;
      Object localObject5;
      if (i1 >= 0)
      {
        localObject4 = (com.dianxinos.library.notify.data.j)((List)localObject1).get(i1);
        int n;
        if (f != null)
        {
          n = 1;
          if (n == 0) {
            break label301;
          }
          if (f.b == null) {
            break label296;
          }
          m = 1;
          if (m == 0) {
            break label311;
          }
          if (f.b.isEmpty()) {
            break label306;
          }
          m = 1;
          if (n == 0) {
            break label321;
          }
          if (f.c == null) {
            break label316;
          }
          n = 1;
          if (n == 0) {
            break label331;
          }
          if (f.c.isEmpty()) {
            break label326;
          }
          n = 1;
          if ((m != 0) || (n != 0)) {
            break label336;
          }
        }
        for (;;)
        {
          i1 -= 1;
          break;
          n = 0;
          break label198;
          m = 0;
          break label215;
          m = 0;
          break label215;
          m = 0;
          break label237;
          m = 0;
          break label237;
          n = 0;
          break label254;
          n = 0;
          break label254;
          n = 0;
          break label276;
          n = 0;
          break label276;
          localObject5 = e;
          if (localObject5 != null) {
            if (((ShowRule)localObject5).a())
            {
              if (com.dianxinos.library.dxbase.e.c) {
                com.dianxinos.library.dxbase.j.b("notifyId: " + a + " expired");
              }
              ((Set)localObject3).add(a);
            }
            else if (((ShowRule)localObject5).c())
            {
              if (com.dianxinos.library.dxbase.e.c) {
                com.dianxinos.library.dxbase.j.b("notifyId: " + a + " show too many times");
              }
              ((Set)localObject3).add(a);
            }
            else if (!e.b())
            {
              if (com.dianxinos.library.dxbase.e.c) {
                com.dianxinos.library.dxbase.j.b("notifyId: " + a + " check failure");
              }
            }
            else
            {
              ((List)localObject2).add(localObject4);
              if (m != 0)
              {
                if (com.dianxinos.library.dxbase.e.c) {
                  com.dianxinos.library.dxbase.j.b("notifyId: " + a + " has essentials");
                }
                localLinkedList1.add(a);
              }
              if (n != 0)
              {
                if (com.dianxinos.library.dxbase.e.c) {
                  com.dianxinos.library.dxbase.j.b("notifyId: " + a + " has optianls");
                }
                localLinkedList2.add(a);
              }
            }
          }
        }
      }
      if ((localObject3 != null) && (!((Set)localObject3).isEmpty()))
      {
        com.dianxinos.library.notify.h.d.b((Set)localObject3);
        com.dianxinos.library.notify.h.d.a((Set)localObject3);
      }
      if (com.dianxinos.library.dxbase.e.c)
      {
        com.dianxinos.library.dxbase.j.b("essential list: " + com.dianxinos.library.notify.j.a.a(localLinkedList1));
        com.dianxinos.library.dxbase.j.b("optional list: " + com.dianxinos.library.notify.j.a.a(localLinkedList2));
      }
      Object localObject1 = ((List)localObject2).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject3 = (com.dianxinos.library.notify.data.j)((Iterator)localObject1).next();
        localObject2 = a;
        if (localLinkedList1.contains(localObject2))
        {
          localObject4 = (String)f.b.get("bkg");
          if (!TextUtils.isEmpty((CharSequence)localObject4))
          {
            localObject5 = a((com.dianxinos.library.notify.data.j)localObject3, (String)localObject4, "preload_bkg");
            if (localObject5 != null)
            {
              m = localc.a((p)localObject5);
              if (com.dianxinos.library.dxbase.e.c) {
                com.dianxinos.library.dxbase.j.b("notifyId: " + (String)localObject2 + " do work: " + (String)localObject4 + " result: " + m);
              }
            }
          }
          localObject4 = (String)f.b.get("file");
          if (!TextUtils.isEmpty((CharSequence)localObject4))
          {
            localObject5 = a((com.dianxinos.library.notify.data.j)localObject3, (String)localObject4, "preload_file");
            if (localObject5 != null)
            {
              m = localc.a((p)localObject5);
              if (com.dianxinos.library.dxbase.e.c) {
                com.dianxinos.library.dxbase.j.b("notifyId: " + (String)localObject2 + " do work: " + (String)localObject4 + "result: " + m);
              }
            }
          }
        }
        if (localLinkedList2.contains(localObject2))
        {
          localObject4 = (String)f.c.get("file");
          if (!TextUtils.isEmpty((CharSequence)localObject4))
          {
            localObject3 = a((com.dianxinos.library.notify.data.j)localObject3, (String)localObject4, "preload_file");
            if (localObject3 != null)
            {
              m = localc.a((p)localObject3);
              if (com.dianxinos.library.dxbase.e.c) {
                com.dianxinos.library.dxbase.j.b("notifyId: " + (String)localObject2 + " do work: " + (String)localObject4 + " result: " + m);
              }
            }
          }
        }
      }
    } while (!a.a().d());
    a(8, null);
  }
  
  private void k(Message paramMessage)
  {
    if (com.dianxinos.library.dxbase.e.c) {
      com.dianxinos.library.dxbase.j.b("handleInitialize");
    }
    DXBEventSource.a(h, "android.intent.action.TIME_TICK");
    DXBEventSource.a(i, "android.intent.action.ACTION_SHUTDOWN");
    DXBEventSource.a(i, "android.intent.action.SCREEN_OFF");
    DXBEventSource.a(j, "android.intent.action.PACKAGE_ADDED");
    DXBEventSource.a(k, "android.intent.action.PACKAGE_REMOVED");
    if (com.dianxinos.library.dxbase.k.b())
    {
      if (com.dianxinos.library.dxbase.e.c) {
        com.dianxinos.library.dxbase.j.b("network avaliable when initialize");
      }
      a(2, null, b);
    }
  }
  
  public void a(int paramInt)
  {
    a(paramInt, null, 1000L);
  }
  
  public void a(int paramInt, Object paramObject)
  {
    a(paramInt, paramObject, 1000L);
  }
  
  /* Error */
  public void a(int paramInt, Object paramObject, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_1
    //   4: invokevirtual 834	com/dianxinos/library/notify/dispatcher/b:hasMessages	(I)Z
    //   7: ifeq +43 -> 50
    //   10: getstatic 111	com/dianxinos/library/dxbase/e:c	Z
    //   13: ifeq +32 -> 45
    //   16: new 289	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 290	java/lang/StringBuilder:<init>	()V
    //   23: ldc_w 836
    //   26: invokevirtual 296	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: iload_1
    //   30: invokevirtual 416	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   33: ldc_w 838
    //   36: invokevirtual 296	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: invokevirtual 301	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: invokestatic 840	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;)V
    //   45: aload_0
    //   46: iload_1
    //   47: invokevirtual 843	com/dianxinos/library/notify/dispatcher/b:removeMessages	(I)V
    //   50: aload_0
    //   51: iload_1
    //   52: aload_2
    //   53: invokevirtual 847	com/dianxinos/library/notify/dispatcher/b:obtainMessage	(ILjava/lang/Object;)Landroid/os/Message;
    //   56: astore_2
    //   57: lload_3
    //   58: lconst_0
    //   59: lcmp
    //   60: ifge +12 -> 72
    //   63: aload_0
    //   64: aload_2
    //   65: invokevirtual 851	com/dianxinos/library/notify/dispatcher/b:sendMessageAtFrontOfQueue	(Landroid/os/Message;)Z
    //   68: pop
    //   69: aload_0
    //   70: monitorexit
    //   71: return
    //   72: aload_0
    //   73: aload_2
    //   74: lload_3
    //   75: invokevirtual 855	com/dianxinos/library/notify/dispatcher/b:sendMessageDelayed	(Landroid/os/Message;J)Z
    //   78: pop
    //   79: goto -10 -> 69
    //   82: astore_2
    //   83: aload_0
    //   84: monitorexit
    //   85: aload_2
    //   86: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	this	b
    //   0	87	1	paramInt	int
    //   0	87	2	paramObject	Object
    //   0	87	3	paramLong	long
    // Exception table:
    //   from	to	target	type
    //   2	45	82	finally
    //   45	50	82	finally
    //   50	57	82	finally
    //   63	69	82	finally
    //   72	79	82	finally
  }
  
  public void a(DownloadInfo paramDownloadInfo)
  {
    if (com.dianxinos.library.dxbase.e.c) {
      com.dianxinos.library.dxbase.j.b("download complete: " + mRcmId + ", extras: " + mExtras + ", status: " + mStatus + ", currentBytes: " + mCurrentBytes + ", url: " + mUri);
    }
    if (("preload_bkg".equals(mExtras)) || ("preload_file".equals(mExtras)))
    {
      paramDownloadInfo = a.a();
      if (paramDownloadInfo.d())
      {
        if (com.dianxinos.library.dxbase.e.c) {
          com.dianxinos.library.dxbase.j.b("preload queue is empty");
        }
        a(8, null);
      }
    }
    do
    {
      boolean bool;
      do
      {
        return;
        bool = paramDownloadInfo.c();
      } while (!com.dianxinos.library.dxbase.e.c);
      com.dianxinos.library.dxbase.j.b("preload execute next success " + bool);
      return;
      a.b().c();
      if (com.dianxinos.library.dxbase.e.c) {
        com.dianxinos.library.dxbase.j.b("notifyId: " + mRcmId + "download status is " + mStatus);
      }
    } while (mStatus != 200);
    p localp = new p();
    b = "download";
    a = mRcmId;
    c = "download";
    b(7, localp);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    case 9: 
    case 10: 
    case 11: 
      do
      {
        return;
        k(paramMessage);
        return;
        h(paramMessage);
        return;
        i(paramMessage);
        return;
        g(paramMessage);
        return;
        j(paramMessage);
        return;
        e(paramMessage);
        return;
        f(paramMessage);
        return;
        d(paramMessage);
        return;
        c(paramMessage);
        return;
        b(paramMessage);
        return;
      } while (!(obj instanceof Set));
      a((Set)obj);
      return;
    }
    a(paramMessage);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.dispatcher.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */