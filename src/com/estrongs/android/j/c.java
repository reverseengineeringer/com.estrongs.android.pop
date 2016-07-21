package com.estrongs.android.j;

import android.app.Activity;
import android.content.Context;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.Hashtable;
import org.json.JSONObject;

public class c
{
  private static c a = null;
  private static Hashtable<String, c> e = new Hashtable();
  private Context b = null;
  private a c;
  private b d;
  
  private c(Context paramContext)
  {
    b = paramContext;
    d = b.a();
  }
  
  public static c a(Context paramContext)
  {
    Object localObject;
    if (paramContext == null) {
      if (a == null) {
        localObject = new c(paramContext);
      }
    }
    c localc;
    do
    {
      do
      {
        return (c)localObject;
        return a;
        localObject = null;
        if ((paramContext instanceof Activity)) {
          localObject = paramContext.getClass().getSimpleName();
        }
        if (localObject == null) {
          break;
        }
        localc = (c)e.get(paramContext.getClass().getSimpleName());
        localObject = localc;
      } while (localc != null);
      localc = new c(paramContext);
      localc.c(paramContext);
      e.put(paramContext.getClass().getSimpleName(), localc);
      if ((paramContext instanceof FileExplorerActivity))
      {
        a = localc;
        return localc;
      }
      localObject = localc;
    } while (a != null);
    a = localc;
    return localc;
    if (a == null) {
      return new c(paramContext);
    }
    return a;
  }
  
  public static void b(Context paramContext)
  {
    paramContext = paramContext.getClass().getSimpleName();
    paramContext = (c)e.remove(paramContext);
    if ((paramContext != null) && (a == paramContext)) {
      a = null;
    }
  }
  
  private void c(Context paramContext)
  {
    c = new a(paramContext);
  }
  
  public void a(String paramString)
  {
    a("mtj", paramString);
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (c != null) {
      c.a(paramString2);
    }
    d.a(paramString1, paramString2);
  }
  
  public void a(String paramString1, String paramString2, JSONObject paramJSONObject)
  {
    a(paramString1, paramString2, paramJSONObject, true);
  }
  
  public void a(String paramString1, String paramString2, JSONObject paramJSONObject, boolean paramBoolean)
  {
    if (c != null) {
      c.a(paramString2);
    }
    d.a(paramString1, paramJSONObject);
    if (paramBoolean) {
      d.a(paramString1, paramString2);
    }
  }
  
  public void a(String paramString, JSONObject paramJSONObject)
  {
    d.a(paramString, paramJSONObject);
  }
  
  public boolean a()
  {
    if (c != null) {
      return c.b();
    }
    return false;
  }
  
  public void b(String paramString)
  {
    if (c != null) {
      c.b(paramString);
    }
  }
  
  @Deprecated
  public void b(String paramString1, String paramString2) {}
  
  public void b(String paramString, JSONObject paramJSONObject)
  {
    d.a(paramString, paramJSONObject);
  }
  
  public boolean b()
  {
    if (c != null) {
      return c.c();
    }
    return false;
  }
  
  public void c()
  {
    d.b();
  }
  
  public void c(String paramString)
  {
    if (c != null) {
      c.c(paramString);
    }
  }
  
  public void c(String paramString1, String paramString2)
  {
    d.a(paramString1, paramString2);
  }
  
  public void d(String paramString)
  {
    d.a(paramString);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.j.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */