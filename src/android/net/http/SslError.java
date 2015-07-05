package android.net.http;

import java.security.cert.X509Certificate;

public class SslError
{
  public static final int SSL_EXPIRED = 1;
  public static final int SSL_IDMISMATCH = 2;
  public static final int SSL_MAX_ERROR = 4;
  public static final int SSL_NOTYETVALID = 0;
  public static final int SSL_UNTRUSTED = 3;
  SslCertificate mCertificate;
  int mErrors;
  
  public SslError(int paramInt, SslCertificate paramSslCertificate)
  {
    addError(paramInt);
    mCertificate = paramSslCertificate;
  }
  
  public SslError(int paramInt, X509Certificate paramX509Certificate)
  {
    addError(paramInt);
    mCertificate = new SslCertificate(paramX509Certificate);
  }
  
  public boolean addError(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < 4)) {}
    for (boolean bool = true;; bool = false)
    {
      if (bool) {
        mErrors = (1 << paramInt | mErrors);
      }
      return bool;
    }
  }
  
  public SslCertificate getCertificate()
  {
    return mCertificate;
  }
  
  public int getPrimaryError()
  {
    int i;
    if (mErrors != 0) {
      i = 3;
    }
    for (;;)
    {
      int j;
      if (i < 0) {
        j = 0;
      }
      do
      {
        return j;
        j = i;
      } while ((mErrors & 1 << i) != 0);
      i -= 1;
    }
  }
  
  public boolean hasError(int paramInt)
  {
    boolean bool;
    if ((paramInt >= 0) && (paramInt < 4)) {
      bool = true;
    }
    while (bool) {
      if ((mErrors & 1 << paramInt) != 0)
      {
        return true;
        bool = false;
      }
      else
      {
        return false;
      }
    }
    return bool;
  }
  
  public String toString()
  {
    return "primary error: " + getPrimaryError() + " certificate: " + getCertificate();
  }
}

/* Location:
 * Qualified Name:     android.net.http.SslError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */