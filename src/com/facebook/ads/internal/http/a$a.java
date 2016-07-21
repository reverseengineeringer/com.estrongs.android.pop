package com.facebook.ads.internal.http;

import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

class a$a
  extends HttpEntityWrapper
{
  public a$a(HttpEntity paramHttpEntity)
  {
    super(paramHttpEntity);
  }
  
  public InputStream getContent()
  {
    return new GZIPInputStream(wrappedEntity.getContent());
  }
  
  public long getContentLength()
  {
    return -1L;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.http.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */