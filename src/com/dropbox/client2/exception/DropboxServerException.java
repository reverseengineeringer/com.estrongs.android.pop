package com.dropbox.client2.exception;

import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

public class DropboxServerException
  extends DropboxException
{
  public static final int _200_OK = 200;
  public static final int _206_PARTIAL_CONTENT = 206;
  public static final int _302_FOUND = 302;
  public static final int _304_NOT_MODIFIED = 304;
  public static final int _400_BAD_REQUEST = 400;
  public static final int _401_UNAUTHORIZED = 401;
  public static final int _403_FORBIDDEN = 403;
  public static final int _404_NOT_FOUND = 404;
  public static final int _405_METHOD_NOT_ALLOWED = 405;
  public static final int _406_NOT_ACCEPTABLE = 406;
  public static final int _409_CONFLICT = 409;
  public static final int _411_LENGTH_REQUIRED = 411;
  public static final int _415_UNSUPPORTED_MEDIA = 415;
  public static final int _500_INTERNAL_SERVER_ERROR = 500;
  public static final int _501_NOT_IMPLEMENTED = 501;
  public static final int _502_BAD_GATEWAY = 502;
  public static final int _503_SERVICE_UNAVAILABLE = 503;
  public static final int _507_INSUFFICIENT_STORAGE = 507;
  private static final long serialVersionUID = 1L;
  public DropboxServerException.Error body;
  public int error;
  public String location;
  public Map<String, Object> parsedResponse;
  public String reason;
  public String server;
  
  public DropboxServerException(HttpResponse paramHttpResponse)
  {
    fillInStackTrace();
    StatusLine localStatusLine = paramHttpResponse.getStatusLine();
    error = localStatusLine.getStatusCode();
    reason = localStatusLine.getReasonPhrase();
    server = getHeader(paramHttpResponse, "server");
    location = getHeader(paramHttpResponse, "location");
  }
  
  public DropboxServerException(HttpResponse paramHttpResponse, Object paramObject)
  {
    this(paramHttpResponse);
    if ((paramObject != null) && ((paramObject instanceof Map)))
    {
      parsedResponse = ((Map)paramObject);
      body = new DropboxServerException.Error(parsedResponse);
    }
  }
  
  private static String getHeader(HttpResponse paramHttpResponse, String paramString)
  {
    Object localObject = null;
    paramString = paramHttpResponse.getFirstHeader(paramString);
    paramHttpResponse = (HttpResponse)localObject;
    if (paramString != null) {
      paramHttpResponse = paramString.getValue();
    }
    return paramHttpResponse;
  }
  
  public static boolean isValidWithNullBody(HttpResponse paramHttpResponse)
  {
    int i = paramHttpResponse.getStatusLine().getStatusCode();
    if (i == 302)
    {
      paramHttpResponse = getHeader(paramHttpResponse, "location");
      if (paramHttpResponse != null)
      {
        i = paramHttpResponse.indexOf("://");
        if (i > -1)
        {
          paramHttpResponse = paramHttpResponse.substring(i + 3);
          i = paramHttpResponse.indexOf("/");
          if ((i <= -1) || (!paramHttpResponse.substring(0, i).toLowerCase().contains("dropbox.com"))) {}
        }
      }
    }
    else
    {
      while (i == 304) {
        return true;
      }
    }
    return false;
  }
  
  public boolean isDuplicateAccount()
  {
    return (error == 400) && (body != null) && (body.error.contains("taken"));
  }
  
  public String toString()
  {
    return "DropboxServerException (" + server + "): " + error + " " + reason + " (" + body.error + ")";
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.exception.DropboxServerException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */