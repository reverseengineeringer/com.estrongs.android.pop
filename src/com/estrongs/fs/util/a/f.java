package com.estrongs.fs.util.a;

import com.estrongs.android.util.ap;
import com.estrongs.fs.h;

public class f
  extends a
{
  public f(boolean paramBoolean)
  {
    super(paramBoolean);
  }
  
  public int a(h paramh1, h paramh2)
  {
    Object localObject = null;
    String str1 = b(paramh1);
    String str2 = b(paramh2);
    String str3 = paramh1.getAbsolutePath();
    String str4 = paramh2.getAbsolutePath();
    label43:
    boolean bool1;
    boolean bool2;
    int i;
    if (str1 != null)
    {
      if (str2 == null) {
        break label202;
      }
      bool1 = ap.bm(str3);
      bool2 = ap.bm(str4);
      if ((!bool1) || (!bool2)) {
        break label222;
      }
      i = ap.I(str3);
      j = ap.I(str4);
      String str5 = ap.a(str3, i);
      String str6 = ap.a(str4, j);
      if ((str5 == null) || (str6 == null) || (!str5.equals("/")) || (!str6.equals("/"))) {
        break label222;
      }
      if (i != j) {
        break label209;
      }
      if (i != 4) {
        break label398;
      }
    }
    label182:
    label202:
    label209:
    label222:
    label393:
    label398:
    for (int j = a(ap.ax(str3), ap.ax(str4));; j = -1)
    {
      if (i == 4)
      {
        i = j;
        if (j != 0) {
          break label182;
        }
      }
      for (i = a(ap.c(str3), ap.c(str4));; i = (i - j) * c)
      {
        j = i;
        if (i == 0) {
          j = -1;
        }
        return j;
        str1 = "";
        break;
        str2 = "";
        break label43;
      }
      bool1 = a(paramh1);
      bool2 = a(paramh2);
      if ((bool1) && (bool2)) {
        return a(str1, str2);
      }
      if ((!bool1) && (!bool2))
      {
        i = str1.lastIndexOf('.');
        if (i == -1) {
          break label393;
        }
      }
      for (paramh1 = str1.substring(i);; paramh1 = null)
      {
        i = str2.lastIndexOf('.');
        paramh2 = (h)localObject;
        if (i != -1) {
          paramh2 = str2.substring(i);
        }
        if ((paramh1 != null) && (paramh2 != null))
        {
          if (paramh1.equals(paramh2)) {
            return a(str1, str2);
          }
          return a(paramh1, paramh2);
        }
        if ((paramh1 != null) && (paramh2 == null)) {
          return c * 1;
        }
        if ((paramh1 == null) && (paramh2 != null)) {
          return c * -1;
        }
        return a(str1, str2);
        if ((!bool1) && (bool2)) {
          return 1;
        }
        return -1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.util.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */