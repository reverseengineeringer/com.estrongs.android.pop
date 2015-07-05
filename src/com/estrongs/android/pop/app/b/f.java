package com.estrongs.android.pop.app.b;

import com.estrongs.android.util.am;
import java.util.ArrayList;

public class f
{
  public static k a = new k();
  public static i b = new i();
  public static h c = new h();
  public static j d = new j();
  public static l e = new l();
  public static g f = new g();
  public int g = -1;
  public int[] h = null;
  
  public f(int paramInt, int[] paramArrayOfInt)
  {
    if ((paramInt < 0) || (paramInt > 5)) {
      throw new IllegalArgumentException();
    }
    g = paramInt;
    h = paramArrayOfInt;
  }
  
  public static ArrayList<f> a(String paramString)
  {
    Object localObject;
    if (paramString == null) {
      localObject = null;
    }
    ArrayList localArrayList;
    do
    {
      return (ArrayList<f>)localObject;
      localArrayList = new ArrayList();
      try
      {
        if (am.bR(paramString))
        {
          localArrayList.add(b);
          localArrayList.add(c);
          localArrayList.add(d);
          localArrayList.add(e);
          localArrayList.add(a);
          localArrayList.add(f);
          return localArrayList;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return localArrayList;
      }
      if ("ftp://".equalsIgnoreCase(paramString))
      {
        localArrayList.add(b);
        localArrayList.add(c);
        localArrayList.add(d);
        localArrayList.add(e);
        return localArrayList;
      }
      if ("smb://".equalsIgnoreCase(paramString))
      {
        localArrayList.add(a);
        return localArrayList;
      }
      localObject = localArrayList;
    } while (!"adb://".equalsIgnoreCase(paramString));
    localArrayList.add(f);
    return localArrayList;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof f))) {}
    while (g != g) {
      return false;
    }
    return true;
  }
  
  public int hashCode()
  {
    return g + 31;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */