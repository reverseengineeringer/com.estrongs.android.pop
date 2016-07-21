package com.estrongs.android.pop.app.analysis;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.estrongs.android.a.b.m;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

public class a
{
  private static a i = null;
  private boolean a = false;
  private Context b;
  private CopyOnWriteArrayList<com.estrongs.android.b.a.a> c;
  private String d;
  private boolean e = false;
  private boolean f;
  private String g;
  private String h;
  private com.estrongs.android.pop.app.analysis.view.b j;
  private Handler k = new b(this, Looper.getMainLooper());
  
  private static com.estrongs.android.a.b.a a(String paramString, com.estrongs.android.a.b.a parama)
  {
    Object localObject = parama;
    if ((parama instanceof m))
    {
      if (TextUtils.isEmpty(paramString)) {
        localObject = parama;
      }
    }
    else {
      return (com.estrongs.android.a.b.a)localObject;
    }
    parama = (m)parama;
    Map localMap = parama.e();
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = localMap.keySet().iterator();
    for (;;)
    {
      if (!localIterator1.hasNext()) {
        break label178;
      }
      String str = (String)localIterator1.next();
      localObject = (List)localMap.get(str);
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator2 = ((List)localObject).iterator();
      for (;;)
      {
        if (!localIterator2.hasNext()) {
          break label163;
        }
        h localh = (h)localIterator2.next();
        localObject = parama;
        if (!(localh instanceof com.estrongs.android.a.b.f)) {
          break;
        }
        if (((com.estrongs.android.a.b.f)localh).m().equals(paramString)) {
          localArrayList.add(localh);
        }
      }
      label163:
      localHashMap.put(str, localArrayList);
    }
    label178:
    return new m(localHashMap, 0, 0, 0L);
  }
  
  public static com.estrongs.android.a.b.a a(String paramString1, String paramString2, String paramString3)
  {
    Object localObject = null;
    if ((ap.bl(paramString1)) || (paramString1 == null)) {
      if (paramString2.equals("largefile")) {
        paramString3 = com.estrongs.android.a.b.a().a(paramString1, 2);
      }
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return paramString3;
                if (paramString2.equals("catalog")) {
                  return com.estrongs.android.a.b.a().c();
                }
                if (paramString2.equals("duplicate")) {
                  return com.estrongs.android.a.b.a().b(paramString1, 2);
                }
                if (paramString2.equals("longtime")) {
                  return com.estrongs.android.a.b.a().d(paramString1, 2);
                }
                if (paramString2.equals("newcreate")) {
                  return com.estrongs.android.a.b.a().c(paramString1, 2);
                }
                if (paramString2.equals("redundancy")) {
                  return com.estrongs.android.a.b.a().e(paramString1, 2);
                }
                paramString3 = (String)localObject;
              } while (!paramString2.equals("appcatalog"));
              return com.estrongs.android.a.b.a().f();
              if (ap.ai(paramString1))
              {
                if (paramString2.equals("sensitive_permission")) {
                  return a(paramString3, com.estrongs.android.a.b.a().g());
                }
                return com.estrongs.android.a.b.a().e();
              }
              if (!ap.V(paramString1)) {
                break;
              }
              if (paramString2.equals("redundancy")) {
                return com.estrongs.android.a.b.a().e(paramString1, 2);
              }
              if (paramString2.equals("newcreate")) {
                return com.estrongs.android.a.b.a().c(paramString1, 2);
              }
              if (paramString2.equals("allfile")) {
                return com.estrongs.android.a.b.a().h(paramString1, 2);
              }
              if (paramString2.equals("duplicate")) {
                return com.estrongs.android.a.b.a().b(paramString1, 2);
              }
              paramString3 = (String)localObject;
            } while (!paramString2.equals("apprelationfile"));
            return com.estrongs.android.a.b.a().g(paramString1, 2);
            if (!ap.ae(paramString1)) {
              break;
            }
            if (paramString2.equals("redundancy")) {
              return com.estrongs.android.a.b.a().e(paramString1, 2);
            }
            if (paramString2.equals("newcreate")) {
              return com.estrongs.android.a.b.a().c(paramString1, 2);
            }
            if (paramString2.equals("allfile")) {
              return com.estrongs.android.a.b.a().h(paramString1, 2);
            }
            if (paramString2.equals("duplicate")) {
              return com.estrongs.android.a.b.a().b(paramString1, 2);
            }
            paramString3 = (String)localObject;
          } while (!paramString2.equals("apprelationfile"));
          return com.estrongs.android.a.b.a().g(paramString1, 2);
          if (!ap.Z(paramString1)) {
            break;
          }
          if (paramString2.equals("redundancy")) {
            return com.estrongs.android.a.b.a().e(paramString1, 2);
          }
          if (paramString2.equals("newcreate")) {
            return com.estrongs.android.a.b.a().c(paramString1, 2);
          }
          if (paramString2.equals("allfile")) {
            return com.estrongs.android.a.b.a().h(paramString1, 2);
          }
          if (paramString2.equals("duplicate")) {
            return com.estrongs.android.a.b.a().b(paramString1, 2);
          }
          paramString3 = (String)localObject;
        } while (!paramString2.equals("apprelationfile"));
        return com.estrongs.android.a.b.a().g(paramString1, 2);
        if (ap.aY(paramString1)) {
          break;
        }
        paramString3 = (String)localObject;
      } while (!ap.X(paramString1));
      if (paramString2.equals("redundancy")) {
        return com.estrongs.android.a.b.a().e(paramString1, 2);
      }
      if (paramString2.equals("newcreate")) {
        return com.estrongs.android.a.b.a().c(paramString1, 2);
      }
      if (paramString2.equals("allfile")) {
        return com.estrongs.android.a.b.a().h(paramString1, 2);
      }
      if (paramString2.equals("duplicate")) {
        return com.estrongs.android.a.b.a().b(paramString1, 2);
      }
      if (paramString2.equals("apprelationfile")) {
        return com.estrongs.android.a.b.a().g(paramString1, 2);
      }
      paramString3 = (String)localObject;
    } while (!paramString2.equals("similar_image"));
    return com.estrongs.android.a.b.a().f(paramString1, 2);
  }
  
  public static a a()
  {
    if (i == null) {}
    try
    {
      if (i == null) {
        i = new a();
      }
      return i;
    }
    finally {}
  }
  
  public static List<h> a(String paramString1, com.estrongs.android.a.b.a parama, String paramString2)
  {
    Map localMap = ((m)parama).e();
    Object localObject = null;
    if (paramString1.equals("cache")) {
      parama = (List)localMap.get("Cache");
    }
    for (;;)
    {
      return a(parama, paramString2);
      if (paramString1.equals("internal_storage"))
      {
        parama = (List)localMap.get("Memory");
      }
      else if (paramString1.equals("little_open"))
      {
        parama = (List)localMap.get("Associated");
      }
      else
      {
        parama = (com.estrongs.android.a.b.a)localObject;
        if (!paramString1.equals("more_file")) {
          if (paramString1.equals("more_power"))
          {
            parama = (List)localMap.get("Battery");
          }
          else
          {
            parama = (com.estrongs.android.a.b.a)localObject;
            if (paramString1.equals("appcatalog")) {
              parama = com.estrongs.android.a.b.a().f().c();
            }
          }
        }
      }
    }
  }
  
  private static List<h> a(List<h> paramList, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return paramList;
    }
    CopyOnWriteArrayList localCopyOnWriteArrayList = new CopyOnWriteArrayList();
    Iterator localIterator = paramList.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localCopyOnWriteArrayList;
      }
      h localh = (h)localIterator.next();
      if ((localh instanceof com.estrongs.android.a.b.f))
      {
        if (((com.estrongs.android.a.b.f)localh).m().equals(paramString)) {
          localCopyOnWriteArrayList.add(localh);
        }
      }
      else
      {
        if (!(localh instanceof com.estrongs.fs.impl.c.d)) {
          break;
        }
        if (a.packageName.equals(paramString)) {
          localCopyOnWriteArrayList.add(localh);
        }
      }
    }
    return localCopyOnWriteArrayList;
  }
  
  public static boolean a(String paramString)
  {
    return (ap.bC(paramString)) || (ap.ai(paramString));
  }
  
  public static com.estrongs.android.a.b.a b(String paramString1, String paramString2, String paramString3)
  {
    Object localObject = null;
    if ((ap.bl(paramString1)) || (paramString1 == null)) {
      if (paramString2.equals("largefile")) {
        paramString3 = com.estrongs.android.a.b.a().a(paramString1);
      }
    }
    do
    {
      do
      {
        do
        {
          return paramString3;
          if (paramString2.equals("catalog")) {
            return com.estrongs.android.a.b.a().c();
          }
          if (paramString2.equals("duplicate")) {
            return com.estrongs.android.a.b.a().b(paramString1);
          }
          if (paramString2.equals("longtime")) {
            return com.estrongs.android.a.b.a().d(paramString1);
          }
          if (paramString2.equals("newcreate")) {
            return com.estrongs.android.a.b.a().c(paramString1);
          }
          if (paramString2.equals("redundancy")) {
            return com.estrongs.android.a.b.a().e(paramString1);
          }
          paramString3 = (String)localObject;
        } while (!paramString2.equals("appcatalog"));
        return com.estrongs.android.a.b.a().f();
        if (ap.ai(paramString1))
        {
          if (paramString2.equals("sensitive_permission")) {
            return a(paramString3, com.estrongs.android.a.b.a().g());
          }
          return com.estrongs.android.a.b.a().e();
        }
        if ((ap.V(paramString1)) || (ap.aY(paramString1)) || (ap.ae(paramString1)) || (ap.Z(paramString1))) {
          break;
        }
        paramString3 = (String)localObject;
      } while (!ap.X(paramString1));
      if (paramString2.equals("redundancy")) {
        return com.estrongs.android.a.b.a().e(paramString1);
      }
      if (paramString2.equals("newcreate")) {
        return com.estrongs.android.a.b.a().c(paramString1);
      }
      if (paramString2.equals("allfile")) {
        return com.estrongs.android.a.b.a().i(paramString1);
      }
      if (paramString2.equals("duplicate")) {
        return com.estrongs.android.a.b.a().b(paramString1);
      }
      if (paramString2.equals("apprelationfile")) {
        return com.estrongs.android.a.b.a().h(paramString1);
      }
      paramString3 = (String)localObject;
    } while (!paramString2.equals("similar_image"));
    return com.estrongs.android.a.b.a().f(paramString1);
  }
  
  private void b(String paramString)
  {
    new cv(b).a(b.getString(2131231714)).b(b.getString(2131230960)).b(2131231273, new e(this, paramString)).c(2131231269, null).c();
  }
  
  private void b(String paramString, y paramy)
  {
    j.a(paramString);
    com.estrongs.android.pop.app.ad.a.a.a().b();
    d = paramString;
    e = false;
    a = true;
    try
    {
      paramString = com.estrongs.android.j.c.a(b);
      paramString.a("A_loading_show");
      paramString.c("analysis", "A_loading_show");
      new f(d, paramy, new d(this)).a(g);
      return;
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
  }
  
  public static boolean c()
  {
    return bk.g();
  }
  
  private String g()
  {
    List localList = ap.a();
    if (localList.size() == 1) {
      return (String)localList.get(0);
    }
    if (localList.size() > 1) {
      return "/";
    }
    return null;
  }
  
  public void a(Context paramContext, com.estrongs.android.pop.app.analysis.view.b paramb)
  {
    b = paramContext;
    j = paramb;
    j.a(new c(this));
    d = "";
    a = false;
  }
  
  public void a(String paramString, y paramy)
  {
    a(paramString, null, null, paramy);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, y paramy)
  {
    g = paramString3;
    h = paramString2;
    if (!TextUtils.isEmpty(g)) {}
    for (f = true;; f = false)
    {
      paramString1 = ap.bV(paramString1);
      if ((!paramString1.equals(d)) || (!a)) {
        break;
      }
      j.a(paramString1);
      return;
    }
    if (a)
    {
      b(paramString1);
      return;
    }
    b(paramString1, paramy);
  }
  
  public void a(boolean paramBoolean)
  {
    if ((!paramBoolean) && (a)) {}
    String str;
    do
    {
      return;
      str = g();
    } while (str == null);
    a(str, null);
  }
  
  public void b()
  {
    com.estrongs.android.a.b.a().b();
    a = false;
    d = "";
    e = true;
  }
  
  public CopyOnWriteArrayList<com.estrongs.android.b.a.a> d()
  {
    return c;
  }
  
  public void e()
  {
    b();
    b = null;
    i = null;
  }
  
  public boolean f()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */