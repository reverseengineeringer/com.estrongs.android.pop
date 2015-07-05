package com.dropbox.client2.session;

import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

class AbstractSession$GzipDecompressingEntity
  extends HttpEntityWrapper
{
  public AbstractSession$GzipDecompressingEntity(HttpEntity paramHttpEntity)
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
 * Qualified Name:     com.dropbox.client2.session.AbstractSession.GzipDecompressingEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */