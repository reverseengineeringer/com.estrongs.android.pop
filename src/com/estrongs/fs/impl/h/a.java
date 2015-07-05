package com.estrongs.fs.impl.h;

import android.net.Uri;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.m;
import java.sql.Date;
import org.apache.http.Header;
import org.apache.http.HttpResponse;

public class a
  extends com.estrongs.fs.a
{
  private long a = -1L;
  private long b = -1L;
  
  public a(String paramString1, String paramString2)
  {
    super(paramString2);
    name = paramString1;
  }
  
  a(String paramString, HttpResponse paramHttpResponse)
  {
    super(paramString);
    Header localHeader = paramHttpResponse.getFirstHeader("Content-Disposition");
    String str = null;
    if (localHeader != null) {
      str = localHeader.getValue();
    }
    if (str != null)
    {
      int i = str.indexOf("filename=");
      if (i != -1) {
        name = str.substring(i + 9);
      }
    }
    try
    {
      name = new String(name.getBytes("iso-8859-1"));
      if (name.charAt(0) == '"') {
        name = name.substring(1, name.length() - 1);
      }
      if (name == null) {
        name = am.bX(paramString);
      }
      if (name == null)
      {
        name = Uri.decode(am.d(paramString));
        if (name.indexOf('?') >= 0) {
          name = name.substring(0, name.indexOf('?'));
        }
        paramString = paramHttpResponse.getFirstHeader("Content-Length");
        if (paramString != null) {
          a = bd.b(paramString.getValue());
        }
        paramString = paramHttpResponse.getFirstHeader("Last-Modified");
        if (paramString != null) {
          b = Date.parse(paramString.getValue());
        }
        return;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
        continue;
        name = name;
      }
    }
  }
  
  protected m doGetFileType()
  {
    return m.b;
  }
  
  public long lastModified()
  {
    return b;
  }
  
  public long length()
  {
    return a;
  }
  
  public void setName(String paramString)
  {
    name = paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.h.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */