package jcifs.https;

public class Handler
  extends jcifs.http.Handler
{
  public static final int DEFAULT_HTTPS_PORT = 443;
  
  protected int getDefaultPort()
  {
    return 443;
  }
}

/* Location:
 * Qualified Name:     jcifs.https.Handler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */