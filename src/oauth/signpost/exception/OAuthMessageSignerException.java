package oauth.signpost.exception;

public class OAuthMessageSignerException
  extends OAuthException
{
  public OAuthMessageSignerException(Exception paramException)
  {
    super(paramException);
  }
  
  public OAuthMessageSignerException(String paramString)
  {
    super(paramString);
  }
}

/* Location:
 * Qualified Name:     oauth.signpost.exception.OAuthMessageSignerException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */