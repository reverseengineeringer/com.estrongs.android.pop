package com.jcraft.jsch;

public class ChannelShell
  extends ChannelSession
{
  ChannelShell()
  {
    y = true;
  }
  
  void b()
  {
    j.a(jd);
    j.a(je);
  }
  
  public void c()
  {
    Session localSession = j();
    try
    {
      n();
      new RequestShell().a(localSession, this);
      if (j.a != null)
      {
        k = new Thread(this);
        k.setName("Shell for " + m);
        if (j) {
          k.setDaemon(j);
        }
        k.start();
      }
      return;
    }
    catch (Exception localException)
    {
      if ((localException instanceof JSchException)) {
        throw ((JSchException)localException);
      }
      if ((localException instanceof Throwable)) {
        throw new JSchException("ChannelShell", localException);
      }
      throw new JSchException("ChannelShell");
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ChannelShell
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */