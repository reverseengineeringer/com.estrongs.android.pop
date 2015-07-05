package de.aflx.sardine.impl.handler;

import org.apache.http.HttpResponse;

public class VoidResponseHandler
  extends ValidatingResponseHandler<Void>
{
  public Void handleResponse(HttpResponse paramHttpResponse)
  {
    validateResponse(paramHttpResponse);
    return null;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.handler.VoidResponseHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */