package com.dianxinos.dxservice.core;

import android.content.Context;
import android.util.Log;
import com.dianxinos.DXStatService.stat.b;
import com.dianxinos.DXStatService.stat.d;
import com.dianxinos.dxservice.a.e;
import com.dianxinos.dxservice.stat.am;
import com.dianxinos.dxservice.stat.ao;
import com.dianxinos.dxservice.stat.n;
import com.dianxinos.dxservice.stat.o;
import com.dianxinos.dxservice.stat.p;
import com.dianxinos.dxservice.stat.q;
import com.dianxinos.dxservice.stat.t;

public class a
{
  private static volatile a a;
  private Context b;
  private boolean c;
  
  private a(Context paramContext)
  {
    b = paramContext.getApplicationContext();
    if (!b.a(b).a())
    {
      if (com.dianxinos.dxservice.a.c.c) {
        Log.w("stat.DXCore", "The app is in silent period!");
      }
      c = false;
      return;
    }
    c = true;
  }
  
  public static a a(Context paramContext)
  {
    try
    {
      if (a == null) {
        a = new a(paramContext);
      }
      return a;
    }
    finally {}
  }
  
  public void a() {}
  
  @Deprecated
  public void a(int paramInt)
  {
    d.a(paramInt);
  }
  
  public boolean a(am paramam, Object paramObject)
  {
    if (!c)
    {
      if (com.dianxinos.dxservice.a.c.d) {
        Log.i("stat.DXCore", "The service is not start up!");
      }
      return false;
    }
    paramam = new t(paramam, paramObject);
    return c.a(b).a(paramam);
  }
  
  public boolean a(String paramString, int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    if (!c) {
      if (com.dianxinos.dxservice.a.c.e) {
        Log.w("stat.DXCore", "The service is not start up!");
      }
    }
    int i;
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
                return false;
                if ((paramString != null) && (paramString.length() != 0)) {
                  break;
                }
              } while (!com.dianxinos.dxservice.a.c.e);
              Log.e("stat.DXCore", "Invalid key: " + paramString + "! Please refer to api doc!");
              return false;
              if (n.a(paramInt1)) {
                break;
              }
            } while (!com.dianxinos.dxservice.a.c.e);
            Log.e("stat.DXCore", "Invalid data policy: " + paramInt1 + "! Please refer to api doc!");
            return false;
            if (p.a(paramInt2)) {
              break;
            }
          } while (!com.dianxinos.dxservice.a.c.e);
          Log.e("stat.DXCore", "Invalid report policy: " + paramInt2 + "! Please refer to api doc!");
          return false;
          if (q.a(paramInt3)) {
            break;
          }
        } while (!com.dianxinos.dxservice.a.c.e);
        Log.e("stat.DXCore", "Invalid priority: " + paramInt3 + "! Please refer to api doc!");
        return false;
        if (paramObject != null) {
          break;
        }
      } while (!com.dianxinos.dxservice.a.c.e);
      Log.e("stat.DXCore", "Invalid value which should be required.");
      return false;
      i = o.a(paramInt1, paramObject);
      if (o.a(i)) {
        break;
      }
    } while (!com.dianxinos.dxservice.a.c.e);
    Log.e("stat.DXCore", "Invalid data type for data policy " + paramInt1 + ": " + paramObject.getClass().getName() + "! Please refer to api doc!");
    return false;
    paramString = new t(paramInt2, i, paramInt1, t.a(b, paramString), paramInt3, paramObject, null);
    return c.a(b).a(paramString);
  }
  
  public boolean a(String paramString, int paramInt1, int paramInt2, Object paramObject)
  {
    return a(paramString, paramInt1, paramInt2, 3, paramObject);
  }
  
  public boolean a(String paramString, int paramInt, Object paramObject)
  {
    return a(paramString, paramInt, 1, paramObject);
  }
  
  public boolean a(String paramString1, String paramString2, Number paramNumber)
  {
    return a(paramString1, 1, com.dianxinos.dxservice.a.c.a(paramString2, paramNumber));
  }
  
  public boolean b()
  {
    return a(new am(0, 2, 1, t.a(b, "start"), 1), Integer.valueOf(1));
  }
  
  public boolean c()
  {
    e.a(new ao(b));
    return a(new am(0, 2, 1, t.a(b, "alive"), 1), Integer.valueOf(1));
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.core.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */