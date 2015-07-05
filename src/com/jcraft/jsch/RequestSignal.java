package com.jcraft.jsch;

class RequestSignal
  extends Request
{
  private String a = "KILL";
  
  public void a(Session paramSession, Channel paramChannel)
  {
    super.a(paramSession, paramChannel);
    paramSession = new Buffer();
    Packet localPacket = new Packet(paramSession);
    localPacket.a();
    paramSession.a((byte)98);
    paramSession.a(paramChannel.a());
    paramSession.b(Util.b("signal"));
    if (a()) {}
    for (int i = 1;; i = 0)
    {
      paramSession.a((byte)i);
      paramSession.b(Util.b(a));
      a(localPacket);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.RequestSignal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */