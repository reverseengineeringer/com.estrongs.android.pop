package com.baidu.cloudsdk.common.http;

import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

class AsyncHttpClient$InflatingEntity
  extends HttpEntityWrapper
{
  public AsyncHttpClient$InflatingEntity(HttpEntity paramHttpEntity)
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
 * Qualified Name:     com.baidu.cloudsdk.common.http.AsyncHttpClient.InflatingEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */