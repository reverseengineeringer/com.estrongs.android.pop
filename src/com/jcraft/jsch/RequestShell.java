package com.jcraft.jsch;

class RequestShell
  extends Request
{
  public void a(Session paramSession, Channel paramChannel)
  {
    super.a(paramSession, paramChannel);
    paramSession = new Buffer();
    Packet localPacket = new Packet(paramSession);
    localPacket.a();
    paramSession.a((byte)98);
    paramSession.a(paramChannel.a());
    paramSession.b(Util.b("shell"));
    if (a()) {}
    for (int i = 1;; i = 0)
    {
      paramSession.a((byte)i);
      a(localPacket);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.RequestShell
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */