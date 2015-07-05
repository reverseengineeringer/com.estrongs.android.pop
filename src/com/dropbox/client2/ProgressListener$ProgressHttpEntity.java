package com.dropbox.client2;

import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

public class ProgressListener$ProgressHttpEntity
  extends HttpEntityWrapper
{
  private final long length;
  private final ProgressListener listener;
  
  public ProgressListener$ProgressHttpEntity(HttpEntity paramHttpEntity, ProgressListener paramProgressListener)
  {
    super(paramHttpEntity);
    if (paramProgressListener == null) {
      throw new IllegalArgumentException("'listener' is null");
    }
    listener = paramProgressListener;
    length = paramHttpEntity.getContentLength();
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    wrappedEntity.writeTo(new ProgressListener.ProgressHttpEntity.CountingOutputStream(this, paramOutputStream));
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.ProgressListener.ProgressHttpEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */