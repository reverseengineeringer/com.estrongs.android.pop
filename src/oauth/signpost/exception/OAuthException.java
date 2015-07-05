package oauth.signpost.exception;

public abstract class OAuthException
  extends Exception
{
  public OAuthException(String paramString)
  {
    super(paramString);
  }
  
  public OAuthException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public OAuthException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     oauth.signpost.exception.OAuthException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */