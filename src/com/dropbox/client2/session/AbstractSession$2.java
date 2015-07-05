package com.dropbox.client2.session;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

class AbstractSession$2
  extends DefaultHttpClient
{
  AbstractSession$2(AbstractSession paramAbstractSession, ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    super(paramClientConnectionManager, paramHttpParams);
  }
  
  protected ConnectionKeepAliveStrategy createConnectionKeepAliveStrategy()
  {
    return new AbstractSession.DBKeepAliveStrategy(null);
  }
  
  protected ConnectionReuseStrategy createConnectionReuseStrategy()
  {
    return new AbstractSession.DBConnectionReuseStrategy(null);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.AbstractSession.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */