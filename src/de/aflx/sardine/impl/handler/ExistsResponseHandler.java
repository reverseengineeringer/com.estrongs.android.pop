package de.aflx.sardine.impl.handler;

import de.aflx.sardine.impl.SardineException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

public class ExistsResponseHandler
  extends ValidatingResponseHandler<Boolean>
{
  public Boolean handleResponse(HttpResponse paramHttpResponse)
  {
    paramHttpResponse = paramHttpResponse.getStatusLine();
    int i = paramHttpResponse.getStatusCode();
    if (i < 300) {
      return Boolean.valueOf(true);
    }
    if (i == 404) {
      return Boolean.valueOf(false);
    }
    throw new SardineException("Unexpected response", i, paramHttpResponse.getReasonPhrase());
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.handler.ExistsResponseHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */