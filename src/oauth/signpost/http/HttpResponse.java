package oauth.signpost.http;

import java.io.InputStream;

public abstract interface HttpResponse
{
  public abstract InputStream getContent();
  
  public abstract String getReasonPhrase();
  
  public abstract int getStatusCode();
  
  public abstract Object unwrap();
}

/* Location:
 * Qualified Name:     oauth.signpost.http.HttpResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */