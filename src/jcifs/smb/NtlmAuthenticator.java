package jcifs.smb;

public abstract class NtlmAuthenticator
{
  private static NtlmAuthenticator auth;
  private SmbAuthException sae;
  private String url;
  
  public static NtlmPasswordAuthentication requestNtlmPasswordAuthentication(String paramString, SmbAuthException paramSmbAuthException)
  {
    if (auth == null) {
      return null;
    }
    synchronized (auth)
    {
      authurl = paramString;
      authsae = paramSmbAuthException;
      paramString = auth.getNtlmPasswordAuthentication();
      return paramString;
    }
  }
  
  private void reset()
  {
    url = null;
    sae = null;
  }
  
  /* Error */
  public static void setDefault(NtlmAuthenticator paramNtlmAuthenticator)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 19	jcifs/smb/NtlmAuthenticator:auth	Ljcifs/smb/NtlmAuthenticator;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: aload_0
    //   16: putstatic 19	jcifs/smb/NtlmAuthenticator:auth	Ljcifs/smb/NtlmAuthenticator;
    //   19: goto -8 -> 11
    //   22: astore_0
    //   23: ldc 2
    //   25: monitorexit
    //   26: aload_0
    //   27: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	28	0	paramNtlmAuthenticator	NtlmAuthenticator
    //   6	2	1	localNtlmAuthenticator	NtlmAuthenticator
    // Exception table:
    //   from	to	target	type
    //   3	7	22	finally
    //   15	19	22	finally
  }
  
  protected NtlmPasswordAuthentication getNtlmPasswordAuthentication()
  {
    return null;
  }
  
  protected final SmbAuthException getRequestingException()
  {
    return sae;
  }
  
  protected final String getRequestingURL()
  {
    return url;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.NtlmAuthenticator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */