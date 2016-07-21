package com.dianxinos.library.notify.download;

import android.util.Pair;
import java.io.Serializable;

public class HttpHeader
  extends Pair<String, String>
  implements Serializable
{
  private static final long serialVersionUID = 2451635085735555971L;
  
  public HttpHeader(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
  
  public static HttpHeader create(String paramString1, String paramString2)
  {
    return new HttpHeader(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.download.HttpHeader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */