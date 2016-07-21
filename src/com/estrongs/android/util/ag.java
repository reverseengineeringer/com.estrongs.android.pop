package com.estrongs.android.util;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

class ag
  implements HostnameVerifier
{
  public boolean verify(String paramString, SSLSession paramSSLSession)
  {
    l.c("HttpDownloader", "Approving certificate for " + paramString);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */