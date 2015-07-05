package jcifs.smb;

import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

public class Handler
  extends URLStreamHandler
{
  static final URLStreamHandler SMB_HANDLER = new Handler();
  
  protected int getDefaultPort()
  {
    return 445;
  }
  
  public URLConnection openConnection(URL paramURL)
  {
    return new SmbFile(paramURL);
  }
  
  protected void parseURL(URL paramURL, String paramString, int paramInt1, int paramInt2)
  {
    String str2 = paramURL.getHost();
    String str1;
    int i;
    if (paramString.equals("smb://"))
    {
      str1 = "smb:////";
      i = paramInt2 + 2;
    }
    for (;;)
    {
      super.parseURL(paramURL, str1, paramInt1, i);
      str1 = paramURL.getPath();
      str2 = paramURL.getRef();
      paramString = str1;
      if (str2 != null) {
        paramString = str1 + '#' + str2;
      }
      paramInt2 = paramURL.getPort();
      paramInt1 = paramInt2;
      if (paramInt2 == -1) {
        paramInt1 = getDefaultPort();
      }
      setURL(paramURL, "smb", paramURL.getHost(), paramInt1, paramURL.getAuthority(), paramURL.getUserInfo(), paramString, paramURL.getQuery(), null);
      return;
      str1 = paramString;
      i = paramInt2;
      if (!paramString.startsWith("smb://"))
      {
        str1 = paramString;
        i = paramInt2;
        if (str2 != null)
        {
          str1 = paramString;
          i = paramInt2;
          if (str2.length() == 0)
          {
            str1 = "//" + paramString;
            i = paramInt2 + 2;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.Handler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */