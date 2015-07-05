package de.aflx.sardine.impl.io;

import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;

public class ConsumingInputStream
  extends InputStream
{
  private InputStream delegate;
  private HttpGet req;
  private HttpResponse response;
  
  public ConsumingInputStream(HttpResponse paramHttpResponse, HttpGet paramHttpGet)
  {
    response = paramHttpResponse;
    delegate = paramHttpResponse.getEntity().getContent();
    req = paramHttpGet;
  }
  
  public int available()
  {
    return delegate.available();
  }
  
  public void close()
  {
    req.abort();
    delegate.close();
  }
  
  public long getContentLength()
  {
    return response.getEntity().getContentLength();
  }
  
  public void mark(int paramInt)
  {
    delegate.mark(paramInt);
  }
  
  public boolean markSupported()
  {
    return delegate.markSupported();
  }
  
  public int read()
  {
    return delegate.read();
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return delegate.read(paramArrayOfByte);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return delegate.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void reset()
  {
    delegate.reset();
  }
  
  public long skip(long paramLong)
  {
    return delegate.skip(paramLong);
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.io.ConsumingInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */