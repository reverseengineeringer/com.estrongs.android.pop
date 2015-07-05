package jcifs.smb;

import jcifs.util.LogStream;

class SmbTree
{
  private static int tree_conn_counter;
  int connectionState;
  boolean inDfs;
  boolean inDomainDfs;
  String service = "?????";
  String service0;
  SmbSession session;
  String share;
  int tid;
  int tree_num;
  
  SmbTree(SmbSession paramSmbSession, String paramString1, String paramString2)
  {
    session = paramSmbSession;
    share = paramString1.toUpperCase();
    if ((paramString2 != null) && (!paramString2.startsWith("??"))) {
      service = paramString2;
    }
    service0 = service;
    connectionState = 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof SmbTree))
    {
      paramObject = (SmbTree)paramObject;
      return matches(share, service);
    }
    return false;
  }
  
  boolean matches(String paramString1, String paramString2)
  {
    return (share.equalsIgnoreCase(paramString1)) && ((paramString2 == null) || (paramString2.startsWith("??")) || (service.equalsIgnoreCase(paramString2)));
  }
  
  void send(ServerMessageBlock paramServerMessageBlock1, ServerMessageBlock paramServerMessageBlock2)
  {
    SmbTransport localSmbTransport = session.transport();
    if (paramServerMessageBlock2 != null) {}
    try
    {
      received = false;
      treeConnect(paramServerMessageBlock1, paramServerMessageBlock2);
      if ((paramServerMessageBlock1 == null) || ((paramServerMessageBlock2 != null) && (received))) {
        return;
      }
      if (service.equals("A:")) {
        break label295;
      }
      switch (command)
      {
      case 37: 
        throw new SmbException("Invalid operation for " + service + " service" + paramServerMessageBlock1);
      }
    }
    finally {}
    switch (subCommand & 0xFF)
    {
    }
    for (;;)
    {
      throw new SmbException("Invalid operation for " + service + " service");
      label295:
      tid = tid;
      if ((inDfs) && (!service.equals("IPC")) && (path != null) && (path.length() > 0))
      {
        flags2 = 4096;
        path = ('\\' + session.transport().tconHostName + '\\' + share + path);
      }
      try
      {
        session.send(paramServerMessageBlock1, paramServerMessageBlock2);
        return;
      }
      catch (SmbException paramServerMessageBlock1)
      {
        if (paramServerMessageBlock1.getNtStatus() == -1073741623) {
          treeDisconnect(true);
        }
        throw paramServerMessageBlock1;
      }
      break;
    }
  }
  
  public String toString()
  {
    return "SmbTree[share=" + share + ",service=" + service + ",tid=" + tid + ",inDfs=" + inDfs + ",inDomainDfs=" + inDomainDfs + ",connectionState=" + connectionState + "]";
  }
  
  void treeConnect(ServerMessageBlock paramServerMessageBlock1, ServerMessageBlock paramServerMessageBlock2)
  {
    synchronized (session.transport())
    {
      for (;;)
      {
        if (connectionState != 0)
        {
          if ((connectionState == 2) || (connectionState == 3)) {
            return;
          }
          try
          {
            session.transport.wait();
          }
          catch (InterruptedException paramServerMessageBlock1)
          {
            throw new SmbException(paramServerMessageBlock1.getMessage(), paramServerMessageBlock1);
          }
        }
      }
    }
    connectionState = 1;
    try
    {
      session.transport.connect();
      String str = "\\\\" + session.transport.tconHostName + '\\' + share;
      service = service0;
      Object localObject = session.transport;
      localObject = SmbTransport.log;
      if (LogStream.level >= 4)
      {
        localObject = session.transport;
        SmbTransport.log.println("treeConnect: unc=" + str + ",service=" + service);
      }
      paramServerMessageBlock2 = new SmbComTreeConnectAndXResponse(paramServerMessageBlock2);
      paramServerMessageBlock1 = new SmbComTreeConnectAndX(session, str, service, paramServerMessageBlock1);
      session.send(paramServerMessageBlock1, paramServerMessageBlock2);
      tid = tid;
      service = service;
      inDfs = shareIsInDfs;
      int i = tree_conn_counter;
      tree_conn_counter = i + 1;
      tree_num = i;
      connectionState = 2;
      return;
    }
    catch (SmbException paramServerMessageBlock1)
    {
      treeDisconnect(true);
      connectionState = 0;
      throw paramServerMessageBlock1;
    }
  }
  
  void treeDisconnect(boolean paramBoolean)
  {
    synchronized (session.transport())
    {
      if (connectionState != 2) {
        return;
      }
      connectionState = 3;
      if (!paramBoolean)
      {
        int i = tid;
        if (i == 0) {}
      }
    }
    try
    {
      send(new SmbComTreeDisconnect(), null);
      inDfs = false;
      inDomainDfs = false;
      connectionState = 0;
      session.transport.notifyAll();
      return;
      localObject1 = finally;
      throw ((Throwable)localObject1);
    }
    catch (SmbException localSmbException)
    {
      for (;;)
      {
        Object localObject2 = session.transport;
        localObject2 = SmbTransport.log;
        if (LogStream.level > 1)
        {
          localObject2 = session.transport;
          localSmbException.printStackTrace(SmbTransport.log);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbTree
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */