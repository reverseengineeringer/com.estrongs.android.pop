package com.estrongs.android.scanner.b;

import android.text.TextUtils;
import java.util.Map;

public class c
{
  private final d a = new d(this, "/");
  
  public String a(String paramString)
  {
    String[] arrayOfString = paramString.split("/");
    paramString = a;
    int i = 1;
    while (i < arrayOfString.length)
    {
      d locald = (d)c.get(arrayOfString[i].toLowerCase());
      if (locald == null) {
        break;
      }
      i += 1;
      paramString = locald;
    }
    return b;
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {}
    while (!paramString1.startsWith("/")) {
      return;
    }
    String[] arrayOfString = paramString1.split("/");
    paramString1 = a;
    int j = 1;
    int i = 1;
    label35:
    String str;
    d locald;
    if (i < arrayOfString.length)
    {
      str = arrayOfString[i].toLowerCase();
      if (j == 0) {
        break label136;
      }
      locald = (d)c.get(str);
      if (locald == null) {
        break label127;
      }
      paramString1 = locald;
    }
    label80:
    label127:
    label136:
    for (;;)
    {
      if (j == 0)
      {
        locald = new d(this, str);
        paramString1.a(locald);
        paramString1 = locald;
      }
      for (;;)
      {
        if (i == arrayOfString.length - 1) {
          b = paramString2;
        }
        i += 1;
        break label35;
        break;
        j = 0;
        break label80;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */