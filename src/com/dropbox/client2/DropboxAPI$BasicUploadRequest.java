package com.dropbox.client2;

import com.dropbox.client2.exception.DropboxIOException;
import com.dropbox.client2.exception.DropboxPartialFileException;
import com.dropbox.client2.session.Session;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpUriRequest;

public final class DropboxAPI$BasicUploadRequest
  implements DropboxAPI.UploadRequest
{
  private final HttpUriRequest request;
  private final Session session;
  
  public DropboxAPI$BasicUploadRequest(HttpUriRequest paramHttpUriRequest, Session paramSession)
  {
    request = paramHttpUriRequest;
    session = paramSession;
  }
  
  public void abort()
  {
    request.abort();
  }
  
  public DropboxAPI.Entry upload()
  {
    try
    {
      HttpResponse localHttpResponse = RESTUtility.execute(session, request, 180000);
      return new DropboxAPI.Entry((Map)RESTUtility.parseAsJSON(localHttpResponse));
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
 * Qualified Name:     com.dropbox.client2.DropboxAPI.BasicUploadRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */