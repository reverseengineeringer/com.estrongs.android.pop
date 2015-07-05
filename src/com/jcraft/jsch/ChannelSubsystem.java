package com.jcraft.jsch;

public class ChannelSubsystem
  extends ChannelSession
{
  boolean F = false;
  boolean G = true;
  String H = "";
  boolean u = false;
  
  void b()
  {
    j.a(jd);
    j.a(je);
  }
  
  public void b(boolean paramBoolean)
  {
    F = paramBoolean;
  }
  
  public void c()
  {
    Session localSession = j();
    try
    {
      if (u) {
        new RequestX11().a(localSession, this);
      }
      if (F) {
        new RequestPtyReq().a(localSession, this);
      }
      ((RequestSubsystem)new RequestSubsystem()).a(localSession, this, H, G);
      if (j.a != null)
      {
        k = new Thread(this);
        k.setName("Subsystem for " + m);
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
        throw new JSchException("ChannelSubsystem", localException);
      }
      throw new JSchException("ChannelSubsystem");
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ChannelSubsystem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */