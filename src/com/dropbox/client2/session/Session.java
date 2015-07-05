package com.dropbox.client2.session;

import java.util.Locale;
import org.apache.http.HttpRequest;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpUriRequest;

public abstract interface Session
{
  public abstract String getAPIServer();
  
  public abstract AccessTokenPair getAccessTokenPair();
  
  public abstract Session.AccessType getAccessType();
  
  public abstract AppKeyPair getAppKeyPair();
  
  public abstract String getContentServer();
  
  public abstract HttpClient getHttpClient();
  
  public abstract Locale getLocale();
  
  public abstract Session.ProxyInfo getProxyInfo();
  
  public abstract String getWebServer();
  
  public abstract boolean isLinked();
  
  public abstract void setRequestTimeout(HttpUriRequest paramHttpUriRequest);
  
  public abstract void sign(HttpRequest paramHttpRequest);
  
  public abstract void unlink();
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.Session
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */