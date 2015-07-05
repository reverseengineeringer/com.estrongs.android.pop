package de.aflx.sardine.impl.handler;

import de.aflx.sardine.impl.SardineException;
import de.aflx.sardine.model.Multistatus;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.simpleframework.xml.Serializer;
import org.simpleframework.xml.core.Persister;

public class MultiStatusResponseHandler
  extends ValidatingResponseHandler<Multistatus>
{
  protected Multistatus getMultistatus(InputStream paramInputStream)
  {
    Persister localPersister = new Persister();
    try
    {
      paramInputStream = (Multistatus)localPersister.read(Multistatus.class, paramInputStream, false);
      return paramInputStream;
    }
    catch (Exception paramInputStream)
    {
      paramInputStream.printStackTrace();
    }
    return null;
  }
  
  public Multistatus handleResponse(HttpResponse paramHttpResponse)
  {
    super.validateResponse(paramHttpResponse);
    HttpEntity localHttpEntity = paramHttpResponse.getEntity();
    paramHttpResponse = paramHttpResponse.getStatusLine();
    if (localHttpEntity == null) {
      throw new SardineException("No entity found in response", paramHttpResponse.getStatusCode(), paramHttpResponse.getReasonPhrase());
    }
    return getMultistatus(localHttpEntity.getContent());
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.handler.MultiStatusResponseHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */