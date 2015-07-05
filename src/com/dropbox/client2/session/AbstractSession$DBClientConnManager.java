package com.dropbox.client2.session;

import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpParams;

class AbstractSession$DBClientConnManager
  extends ThreadSafeClientConnManager
{
  public AbstractSession$DBClientConnManager(HttpParams paramHttpParams, SchemeRegistry paramSchemeRegistry)
  {
    super(paramHttpParams, paramSchemeRegistry);
  }
  
  public ClientConnectionRequest requestConnection(HttpRoute paramHttpRoute, Object paramObject)
  {
    AbstractSession.IdleConnectionCloserThread.ensureRunning(this, 20, 5);
    return super.requestConnection(paramHttpRoute, paramObject);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.AbstractSession.DBClientConnManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */