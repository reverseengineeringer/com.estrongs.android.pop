package com.flurry.sdk;

public class hb
{
  private final s a;
  private final String b;
  private final boolean c;
  private boolean d;
  
  public hb(s params, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = params;
    b = paramString;
    c = paramBoolean1;
    d = paramBoolean2;
  }
  
  public String a()
  {
    return b;
  }
  
  public boolean b()
  {
    return c;
  }
  
  public s c()
  {
    return a;
  }
  
  public boolean d()
  {
    return d;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (hb)paramObject;
    if ((c == c) && (d == d))
    {
      if (a == null) {
        break label74;
      }
      if (a.equals(a)) {
        break label81;
      }
    }
    label74:
    label81:
    label105:
    do
    {
      for (;;)
      {
        return false;
        if (a == null)
        {
          if (b == null) {
            break label105;
          }
          if (b.equals(b)) {
            break;
          }
        }
      }
    } while (b != null);
    return true;
  }
  
  public int hashCode()
  {
    int m = 1;
    int i;
    int j;
    label33:
    int k;
    if (a != null)
    {
      i = a.hashCode();
      if (b == null) {
        break label72;
      }
      j = b.hashCode();
      if (!c) {
        break label77;
      }
      k = 1;
      label42:
      if (!d) {
        break label82;
      }
    }
    for (;;)
    {
      return (k + (j + i * 31) * 31) * 31 + m;
      i = 0;
      break;
      label72:
      j = 0;
      break label33;
      label77:
      k = 0;
      break label42;
      label82:
      m = 0;
    }
  }
  
  public String toString()
  {
    return "fAdObjectId: " + a.e() + ", fLaunchUrl: " + b + ", fShouldCloseAd: " + c + ", fSendYCookie: " + d;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */