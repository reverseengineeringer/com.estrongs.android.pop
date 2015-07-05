package com.estrongs.android.pop.app.b;

import android.content.Context;
import android.widget.Button;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.util.bd;

class ab
  extends ad
{
  ab(y paramy, Button paramButton, int paramInt1, int paramInt2)
  {
    super(paramy, paramButton, paramInt1, paramInt2);
  }
  
  void a(int paramInt, Object paramObject)
  {
    if (paramInt < a() - 1)
    {
      h = paramInt;
      ba).a = -1L;
      ba).b = -1L;
      if (paramInt == 1)
      {
        ba).a = 0L;
        ba).b = 102400L;
        return;
      }
      if (paramInt == 2)
      {
        ba).a = 102400L;
        ba).b = 1048576L;
        return;
      }
      if (paramInt == 3)
      {
        ba).a = 1048576L;
        ba).b = 16777216L;
        return;
      }
      if (paramInt == 4)
      {
        ba).a = 16777216L;
        ba).b = 134217728L;
        return;
      }
      if (paramInt == 5)
      {
        ba).a = 134217728L;
        ba).b = -1L;
        return;
      }
      a((String)paramObject);
      return;
    }
    paramObject = y.e(a).getString(2131427601);
    a(new String[] { "KB", "MB" }, (String)paramObject, 128, 512).c();
  }
  
  protected void a(int paramInt1, String paramString1, int paramInt2, String paramString2)
  {
    if ("KB".equalsIgnoreCase(paramString1))
    {
      ba).a = (paramInt1 * 1024);
      if (!"KB".equalsIgnoreCase(paramString2)) {
        break label88;
      }
      ba).b = (paramInt2 * 1024);
    }
    for (;;)
    {
      super.a(paramInt1, paramString1, paramInt2, paramString2);
      return;
      if (!"MB".equalsIgnoreCase(paramString1)) {
        break;
      }
      ba).a = (paramInt1 * 1048576);
      break;
      label88:
      if ("MB".equalsIgnoreCase(paramString2)) {
        ba).b = (paramInt2 * 1048576);
      }
    }
  }
  
  void a(String paramString)
  {
    String[] arrayOfString = paramString.split(" - ");
    if ((arrayOfString != null) && (arrayOfString.length == 2))
    {
      ba).a = b(arrayOfString[0]);
      ba).b = b(arrayOfString[1]);
      return;
    }
    if (paramString.startsWith(" - "))
    {
      ba).b = b(arrayOfString[0]);
      return;
    }
    ba).a = b(arrayOfString[0]);
  }
  
  long b(String paramString)
  {
    if ((paramString == null) || (paramString.trim().length() < 1)) {}
    int i;
    do
    {
      return -1L;
      i = paramString.indexOf("KB");
      if (i > 0) {
        return bd.b(paramString.substring(0, i)) * 1024L;
      }
      i = paramString.indexOf("MB");
    } while (i <= 0);
    return bd.b(paramString.substring(0, i)) * 1048576L;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */