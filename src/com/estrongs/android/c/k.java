package com.estrongs.android.c;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class k
{
  public String a;
  public String b;
  public InputStream c;
  public Properties d = new Properties();
  
  public k(h paramh, String paramString1, String paramString2, InputStream paramInputStream)
  {
    a = paramString1;
    b = paramString2;
    c = paramInputStream;
  }
  
  public k(h paramh, String paramString1, String paramString2, String paramString3)
  {
    a = paramString1;
    b = paramString2;
    try
    {
      c = new ByteArrayInputStream(paramString3.getBytes("UTF-8"));
      return;
    }
    catch (UnsupportedEncodingException paramh)
    {
      paramh.printStackTrace();
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    d.put(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.c.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */