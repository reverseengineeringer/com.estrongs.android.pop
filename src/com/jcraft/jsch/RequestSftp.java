package com.jcraft.jsch;

public class RequestSftp
  extends Request
{
  RequestSftp()
  {
    a(true);
  }
  
  public void a(Session paramSession, Channel paramChannel)
  {
    super.a(paramSession, paramChannel);
    paramSession = new Buffer();
    Packet localPacket = new Packet(paramSession);
    localPacket.a();
    paramSession.a((byte)98);
    paramSession.a(paramChannel.a());
    paramSession.b(Util.b("subsystem"));
    if (a()) {}
    for (int i = 1;; i = 0)
    {
      paramSession.a((byte)i);
      paramSession.b(Util.b("sftp"));
      a(localPacket);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.RequestSftp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */