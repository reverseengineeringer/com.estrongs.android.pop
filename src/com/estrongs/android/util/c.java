package com.estrongs.android.util;

import android.content.Context;
import android.content.res.Resources;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;

public class c
{
  public boolean a = true;
  private Context b;
  private int c = 0;
  private int d = 0;
  private e e;
  private cg f = null;
  
  public c(Context paramContext, int paramInt, e parame)
  {
    b = paramContext;
    c = paramInt;
    d = paramInt;
    e = parame;
  }
  
  public c(Context paramContext, String paramString, e parame)
  {
    b = paramContext;
    c = a(paramString);
    d = c;
    e = parame;
  }
  
  public static int a(String paramString)
  {
    int i = 0;
    while (i < f.a.length)
    {
      if (f.a[i].equalsIgnoreCase(paramString)) {
        return i;
      }
      i += 1;
    }
    return 0;
  }
  
  public static String a(Context paramContext, int paramInt)
  {
    String[] arrayOfString = paramContext.getResources().getStringArray(2131165203);
    paramContext = "";
    if (arrayOfString != null) {
      paramContext = arrayOfString[paramInt];
    }
    return paramContext;
  }
  
  public void a()
  {
    if (f == null)
    {
      Object localObject;
      String[] arrayOfString;
      if (!a)
      {
        localObject = b.getResources().getStringArray(2131165203);
        arrayOfString = new String[localObject.length - 1];
        i = 1;
        while (i < localObject.length)
        {
          arrayOfString[(i - 1)] = localObject[i];
          i += 1;
        }
        localObject = new ct(b).a(2131427838);
        if (!a) {
          break label125;
        }
      }
      label125:
      for (int i = d;; i = d - 1)
      {
        f = ((ct)localObject).a(arrayOfString, i, new d(this)).c();
        return;
        arrayOfString = b.getResources().getStringArray(2131165203);
        break;
      }
    }
    f.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */