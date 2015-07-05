package oauth.signpost.exception;

public class OAuthCommunicationException
  extends OAuthException
{
  private String responseBody;
  
  public OAuthCommunicationException(Exception paramException)
  {
    super("Communication with the service provider failed: " + paramException.getLocalizedMessage(), paramException);
  }
  
  public OAuthCommunicationException(String paramString1, String paramString2)
  {
    super(paramString1);
    responseBody = paramString2;
  }
  
  public String getResponseBody()
  {
    return responseBody;
  }
}

/* Location:
 * Qualified Name:     oauth.signpost.exception.OAuthCommunicationException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */