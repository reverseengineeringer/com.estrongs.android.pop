package com.dropbox.client2.session;

import org.apache.http.conn.params.ConnPerRoute;
import org.apache.http.conn.routing.HttpRoute;

class AbstractSession$1
  implements ConnPerRoute
{
  AbstractSession$1(AbstractSession paramAbstractSession) {}
  
  public int getMaxForRoute(HttpRoute paramHttpRoute)
  {
    return 10;
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.AbstractSession.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */