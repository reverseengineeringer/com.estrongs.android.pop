package com.jcraft.jsch;

public class ChannelExec
  extends ChannelSession
{
  byte[] u = new byte[0];
  
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
      new RequestExec(u).a(localSession, this);
      if (j.a != null)
      {
        k = new Thread(this);
        k.setName("Exec thread " + localSession.g());
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
        throw new JSchException("ChannelExec", localException);
      }
      throw new JSchException("ChannelExec");
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ChannelExec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */