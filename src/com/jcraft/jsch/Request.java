package com.jcraft.jsch;

abstract class Request
{
  private boolean a = false;
  private Session b = null;
  private Channel c = null;
  
  void a(Packet paramPacket)
  {
    if (a) {
      c.r = -1;
    }
    b.b(paramPacket);
    if (a)
    {
      long l1 = System.currentTimeMillis();
      long l2 = c.s;
      for (;;)
      {
        if ((!c.i()) || (c.r != -1))
        {
          if (c.r == 0) {
            throw new JSchException("failed to send channel request");
          }
        }
        else {
          try
          {
            Thread.sleep(10L);
            if ((l2 > 0L) && (System.currentTimeMillis() - l1 > l2))
            {
              c.r = 0;
              throw new JSchException("channel request: timeout");
            }
          }
          catch (Exception paramPacket)
          {
            for (;;) {}
          }
        }
      }
    }
  }
  
  void a(Session paramSession, Channel paramChannel)
  {
    b = paramSession;
    c = paramChannel;
    if (s > 0) {
      a(true);
    }
  }
  
  void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  boolean a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.Request
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */