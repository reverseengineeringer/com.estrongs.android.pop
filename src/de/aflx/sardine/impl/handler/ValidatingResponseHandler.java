package de.aflx.sardine.impl.handler;

import de.aflx.sardine.impl.SardineException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ResponseHandler;

public abstract class ValidatingResponseHandler<T>
  implements ResponseHandler<T>
{
  public HttpResponse resp = null;
  
  protected void validateResponse(HttpResponse paramHttpResponse)
  {
    resp = paramHttpResponse;
    paramHttpResponse = paramHttpResponse.getStatusLine();
    int i = paramHttpResponse.getStatusCode();
    if ((i >= 200) && (i < 300)) {
      return;
    }
    throw new SardineException("Unexpected response", paramHttpResponse.getStatusCode(), paramHttpResponse.getReasonPhrase());
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.handler.ValidatingResponseHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */