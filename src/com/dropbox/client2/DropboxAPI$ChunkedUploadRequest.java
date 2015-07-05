package com.dropbox.client2;

import com.dropbox.client2.exception.DropboxIOException;
import com.dropbox.client2.exception.DropboxPartialFileException;
import com.dropbox.client2.session.Session;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpUriRequest;

public final class DropboxAPI$ChunkedUploadRequest
{
  private final HttpUriRequest request;
  private final Session session;
  
  protected DropboxAPI$ChunkedUploadRequest(HttpUriRequest paramHttpUriRequest, Session paramSession)
  {
    request = paramHttpUriRequest;
    session = paramSession;
  }
  
  public void abort()
  {
    request.abort();
  }
  
  public DropboxAPI.ChunkedUploadResponse upload()
  {
    try
    {
      HttpResponse localHttpResponse = RESTUtility.execute(session, request, 180000);
      return new DropboxAPI.ChunkedUploadResponse((Map)RESTUtility.parseAsJSON(localHttpResponse));
    }
    catch (DropboxIOException localDropboxIOException)
    {
      if (request.isAborted()) {
        throw new DropboxPartialFileException(-1L);
      }
      throw localDropboxIOException;
    }
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.DropboxAPI.ChunkedUploadRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */