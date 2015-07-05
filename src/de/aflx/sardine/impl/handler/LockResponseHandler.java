package de.aflx.sardine.impl.handler;

import de.aflx.sardine.impl.SardineException;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

public class LockResponseHandler
  extends ValidatingResponseHandler<String>
{
  protected String getToken(InputStream paramInputStream)
  {
    return "XXX";
  }
  
  public String handleResponse(HttpResponse paramHttpResponse)
  {
    super.validateResponse(paramHttpResponse);
    HttpEntity localHttpEntity = paramHttpResponse.getEntity();
    if (localHttpEntity == null)
    {
      paramHttpResponse = paramHttpResponse.getStatusLine();
      throw new SardineException("No entity found in response", paramHttpResponse.getStatusCode(), paramHttpResponse.getReasonPhrase());
    }
    return getToken(localHttpEntity.getContent());
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.handler.LockResponseHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */