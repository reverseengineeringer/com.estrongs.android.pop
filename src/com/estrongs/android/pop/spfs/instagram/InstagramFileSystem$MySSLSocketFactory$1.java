package com.estrongs.android.pop.spfs.instagram;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

class InstagramFileSystem$MySSLSocketFactory$1
  implements X509TrustManager
{
  InstagramFileSystem$MySSLSocketFactory$1(InstagramFileSystem.MySSLSocketFactory paramMySSLSocketFactory, InstagramFileSystem paramInstagramFileSystem) {}
  
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public X509Certificate[] getAcceptedIssuers()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.instagram.InstagramFileSystem.MySSLSocketFactory.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */