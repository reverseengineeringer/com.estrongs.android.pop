package com.dianxinos.library.notify.data;

import android.text.TextUtils;
import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.j;
import com.dianxinos.library.dxbase.k;

public class a
{
  public String a;
  public String b;
  public Boolean c;
  public Boolean d;
  public Boolean e;
  public Packages f;
  
  private boolean b()
  {
    boolean bool2 = true;
    boolean bool1;
    if (!k.b()) {
      bool1 = false;
    }
    int i;
    do
    {
      int j;
      do
      {
        int m;
        do
        {
          int k;
          do
          {
            do
            {
              return bool1;
              bool1 = bool2;
            } while (TextUtils.isEmpty(a));
            if (a.length() < 4) {
              return false;
            }
            i = a.charAt(0);
            j = a.charAt(1);
            k = a.charAt(2);
            m = a.charAt(3);
            if (!k.d()) {
              break;
            }
            bool1 = bool2;
          } while (k == 49);
          return false;
          if (!k.e()) {
            break;
          }
          bool1 = bool2;
        } while (m == 49);
        return false;
        if (!k.c()) {
          break;
        }
        bool1 = bool2;
      } while (j == 49);
      return false;
      bool1 = bool2;
    } while (i == 49);
    return false;
  }
  
  private boolean c()
  {
    boolean bool2 = true;
    boolean bool1;
    if (!k.b()) {
      bool1 = false;
    }
    int j;
    do
    {
      int i;
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (TextUtils.isEmpty(b));
        if (b.length() < 3) {
          return false;
        }
        i = b.charAt(1);
        j = b.charAt(2);
        if (!k.g()) {
          break;
        }
        bool1 = bool2;
      } while (i == 49);
      return false;
      bool1 = bool2;
    } while (j == 49);
    return false;
  }
  
  private boolean d()
  {
    return true;
  }
  
  private boolean e()
  {
    return true;
  }
  
  private boolean f()
  {
    return true;
  }
  
  private boolean g()
  {
    if (f == null) {
      return true;
    }
    return f.doCheck();
  }
  
  public boolean a()
  {
    if (!b()) {
      if (e.c) {
        j.b("check network failure");
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
              return false;
              if (c()) {
                break;
              }
            } while (!e.c);
            j.b("check access point failure");
            return false;
            if (d()) {
              break;
            }
          } while (!e.c);
          j.b("checkDeviceRoot failure");
          return false;
          if (e()) {
            break;
          }
        } while (!e.c);
        j.b("checkApkRoot failure");
        return false;
        if (f()) {
          break;
        }
      } while (!e.c);
      j.b("checkApkSystem failure");
      return false;
      if (g()) {
        break;
      }
    } while (!e.c);
    j.b("checkPackages failure");
    return false;
    return true;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.data.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */