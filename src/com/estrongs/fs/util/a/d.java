package com.estrongs.fs.util.a;

import com.estrongs.fs.h;

public class d
  extends a
{
  public d(boolean paramBoolean)
  {
    super(paramBoolean);
  }
  
  private boolean c(h paramh)
  {
    try
    {
      paramh = paramh.getExtra("item_is_scanned_server");
      if (paramh != null)
      {
        boolean bool = ((Boolean)paramh).booleanValue();
        if (bool) {
          return true;
        }
      }
    }
    catch (Throwable paramh) {}
    return false;
  }
  
  public int a(h paramh1, h paramh2)
  {
    String str1 = paramh1.getName();
    String str2 = paramh2.getName();
    boolean bool1 = a(paramh1);
    boolean bool2 = a(paramh2);
    if ((bool1) && (bool2))
    {
      bool1 = c(paramh1);
      bool2 = c(paramh2);
      if ((bool1) || (!bool2)) {}
    }
    do
    {
      return -1;
      if ((bool1) && (!bool2)) {
        return 1;
      }
      return b(str1, str2);
      if ((!bool1) && (!bool2)) {
        return b(str1, str2);
      }
    } while ((bool1) || (!bool2));
    return 1;
  }
  
  public int b(String paramString1, String paramString2)
  {
    int k = 0;
    int i2 = paramString1.length();
    int i3 = paramString2.length();
    int i = 0;
    int j = 0;
    char c1;
    char c2;
    boolean bool1;
    boolean bool2;
    int m;
    int i1;
    int n;
    int i4;
    if ((k == 0) && (j < i2) && (i < i3))
    {
      c1 = paramString1.charAt(j);
      c2 = paramString2.charAt(i);
      bool1 = Character.isDigit(c1);
      bool2 = Character.isDigit(c2);
      if ((bool1) && (bool2))
      {
        m = j + 1;
        while ((m < i2) && (Character.isDigit(paramString1.charAt(m)))) {
          m += 1;
        }
        for (k = j;; k = i1 + 1)
        {
          i1 = k;
          if ((i1 >= m) || (paramString1.charAt(i1) != '0')) {
            break;
          }
        }
        n = i + 1;
        while ((n < i3) && (Character.isDigit(paramString2.charAt(n)))) {
          n += 1;
        }
        k = i;
        while ((k < n) && (paramString2.charAt(k) == '0')) {
          k += 1;
        }
        i4 = m - i1 - (n - k);
        if (i4 == 0) {
          break label426;
        }
        return c * i4;
        label238:
        k += 1;
        i1 += 1;
      }
    }
    label385:
    label426:
    for (;;)
    {
      if ((i1 < m) && (k < n))
      {
        i4 = paramString1.charAt(i1) - paramString2.charAt(k);
        if (i4 == 0) {
          break label238;
        }
        return i4 * c;
      }
      i1 = m - 1;
      k = n - 1;
      i = n - i - (m - j);
      n = i1;
      m = k;
      k = i;
      do
      {
        j = n + 1;
        i = m + 1;
        break;
        if ((bool1) || (bool2)) {
          break label385;
        }
        m = i;
        n = j;
      } while (c1 == c2);
      return a(paramString1.substring(j), paramString2.substring(i));
      return a(paramString1.substring(j), paramString2.substring(i));
      if (k == 0) {
        return (i2 - i3) * c;
      }
      return k * c;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.util.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */