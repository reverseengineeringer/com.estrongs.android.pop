package com.dropbox.client2;

import com.dropbox.client2.exception.DropboxParseException;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.json.simple.JSONValue;

public final class DropboxAPI$DropboxFileInfo
{
  private String charset = null;
  private long fileSize = -1L;
  private DropboxAPI.Entry metadata = null;
  private String mimeType = null;
  
  private DropboxAPI$DropboxFileInfo(HttpResponse paramHttpResponse)
  {
    metadata = parseXDropboxMetadata(paramHttpResponse);
    if (metadata == null) {
      throw new DropboxParseException("Error parsing metadata.");
    }
    fileSize = parseFileSize(paramHttpResponse, metadata);
    if (fileSize == -1L) {
      throw new DropboxParseException("Error determining file size.");
    }
    paramHttpResponse = paramHttpResponse.getFirstHeader("Content-Type");
    if (paramHttpResponse != null)
    {
      paramHttpResponse = paramHttpResponse.getValue();
      if (paramHttpResponse != null)
      {
        paramHttpResponse = paramHttpResponse.split(";");
        if (paramHttpResponse.length > 0) {
          mimeType = paramHttpResponse[0].trim();
        }
        if (paramHttpResponse.length > 1)
        {
          paramHttpResponse = paramHttpResponse[1].split("=");
          if (paramHttpResponse.length > 1) {
            charset = paramHttpResponse[1].trim();
          }
        }
      }
    }
  }
  
  private static long parseFileSize(HttpResponse paramHttpResponse, DropboxAPI.Entry paramEntry)
  {
    long l = paramHttpResponse.getEntity().getContentLength();
    if (l >= 0L) {
      return l;
    }
    if (paramEntry != null) {
      return bytes;
    }
    return -1L;
  }
  
  private static DropboxAPI.Entry parseXDropboxMetadata(HttpResponse paramHttpResponse)
  {
    if (paramHttpResponse == null) {
      return null;
    }
    paramHttpResponse = paramHttpResponse.getFirstHeader("X-Dropbox-Metadata");
    if (paramHttpResponse == null) {
      return null;
    }
    paramHttpResponse = JSONValue.parse(paramHttpResponse.getValue());
    if (paramHttpResponse == null) {
      return null;
    }
    return new DropboxAPI.Entry((Map)paramHttpResponse);
  }
  
  public final String getCharset()
  {
    return charset;
  }
  
  @Deprecated
  public final long getContentLength()
  {
    return getFileSize();
  }
  
  public final long getFileSize()
  {
    return fileSize;
  }
  
  public final DropboxAPI.Entry getMetadata()
  {
    return metadata;
  }
  
  public final String getMimeType()
  {
    return mimeType;
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.DropboxAPI.DropboxFileInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */