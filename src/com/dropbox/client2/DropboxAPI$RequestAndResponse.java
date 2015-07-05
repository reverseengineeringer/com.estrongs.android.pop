package com.dropbox.client2;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpUriRequest;

public final class DropboxAPI$RequestAndResponse
{
  public final HttpUriRequest request;
  public final HttpResponse response;
  
  protected DropboxAPI$RequestAndResponse(HttpUriRequest paramHttpUriRequest, HttpResponse paramHttpResponse)
  {
    request = paramHttpUriRequest;
    response = paramHttpResponse;
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.DropboxAPI.RequestAndResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */