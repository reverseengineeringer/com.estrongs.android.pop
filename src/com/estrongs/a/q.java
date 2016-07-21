package com.estrongs.a;

import android.content.res.Resources;
import com.estrongs.android.pop.FexApplication;

public class q
{
  public String a;
  public Object b;
  public Exception c;
  
  public q(String paramString, Exception paramException)
  {
    String str;
    if (!paramString.contains("storage"))
    {
      str = paramString;
      if (!paramString.contains("sdcard")) {}
    }
    else
    {
      str = paramString;
      if (paramString.contains("Permission"))
      {
        str = paramString;
        if (paramString.contains("denied")) {
          str = (String)FexApplication.a().getResources().getText(2131232294);
        }
      }
    }
    a = str;
    c = paramException;
  }
  
  public q(String paramString, Object paramObject)
  {
    a = paramString;
    b = paramObject;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */