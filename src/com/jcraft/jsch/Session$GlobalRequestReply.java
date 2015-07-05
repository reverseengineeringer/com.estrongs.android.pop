package com.jcraft.jsch;

class Session$GlobalRequestReply
{
  private Thread b = null;
  private int c = -1;
  private int d = 0;
  
  private Session$GlobalRequestReply(Session paramSession) {}
  
  Thread a()
  {
    return b;
  }
  
  void a(int paramInt)
  {
    c = paramInt;
  }
  
  void a(Thread paramThread)
  {
    b = paramThread;
    c = -1;
  }
  
  int b()
  {
    return c;
  }
  
  void b(int paramInt)
  {
    d = paramInt;
  }
  
  int c()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.Session.GlobalRequestReply
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */