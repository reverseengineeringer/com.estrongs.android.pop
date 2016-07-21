package com.estrongs.android.util;

import android.content.Context;
import android.content.res.Resources;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;

public class b
{
  public boolean a = true;
  private Context b;
  private int c = 0;
  private int d = 0;
  private d e;
  private ci f = null;
  
  public b(Context paramContext, int paramInt, d paramd)
  {
    b = paramContext;
    c = paramInt;
    d = paramInt;
    e = paramd;
  }
  
  public b(Context paramContext, String paramString, d paramd)
  {
    b = paramContext;
    c = a(paramString);
    d = c;
    e = paramd;
  }
  
  public static int a(String paramString)
  {
    int i = 0;
    while (i < e.a.length)
    {
      if (e.a[i].equalsIgnoreCase(paramString)) {
        return i;
      }
      i += 1;
    }
    return 0;
  }
  
  public static String a(Context paramContext, int paramInt)
  {
    String[] arrayOfString = paramContext.getResources().getStringArray(2131492865);
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
        localObject = b.getResources().getStringArray(2131492865);
        arrayOfString = new String[localObject.length - 1];
        i = 1;
        while (i < localObject.length)
        {
          arrayOfString[(i - 1)] = localObject[i];
          i += 1;
        }
        localObject = new cv(b).a(2131231515);
        if (!a) {
          break label125;
        }
      }
      label125:
      for (int i = d;; i = d - 1)
      {
        f = ((cv)localObject).a(arrayOfString, i, new c(this)).c();
        return;
        arrayOfString = b.getResources().getStringArray(2131492865);
        break;
      }
    }
    f.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */