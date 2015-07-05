package com.dropbox.client2;

import java.util.Date;
import java.util.Map;

public class DropboxAPI$DropboxLink
{
  public final Date expires;
  public final String url;
  
  private DropboxAPI$DropboxLink(String paramString, boolean paramBoolean)
  {
    String str = paramString;
    if (!paramBoolean)
    {
      str = paramString;
      if (paramString.startsWith("https://")) {
        str = paramString.replaceFirst("https://", "http://").replaceFirst(":443/", "/");
      }
    }
    url = str;
    expires = null;
  }
  
  private DropboxAPI$DropboxLink(Map<String, Object> paramMap)
  {
    this(paramMap, true);
  }
  
  private DropboxAPI$DropboxLink(Map<String, Object> paramMap, boolean paramBoolean)
  {
    String str = (String)paramMap.get("url");
    paramMap = (String)paramMap.get("expires");
    if (paramMap != null) {}
    for (expires = RESTUtility.parseDate(paramMap);; expires = null)
    {
      paramMap = str;
      if (!paramBoolean)
      {
        paramMap = str;
        if (str.startsWith("https://")) {
          paramMap = str.replaceFirst("https://", "http://").replaceFirst(":443/", "/");
        }
      }
      url = paramMap;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.DropboxAPI.DropboxLink
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */