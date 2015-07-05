package com.jcraft.jsch;

class RequestWindowChange
  extends Request
{
  int a = 80;
  int b = 24;
  int c = 640;
  int d = 480;
  
  public void a(Session paramSession, Channel paramChannel)
  {
    super.a(paramSession, paramChannel);
    paramSession = new Buffer();
    Packet localPacket = new Packet(paramSession);
    localPacket.a();
    paramSession.a((byte)98);
    paramSession.a(paramChannel.a());
    paramSession.b(Util.b("window-change"));
    if (a()) {}
    for (int i = 1;; i = 0)
    {
      paramSession.a((byte)i);
      paramSession.a(a);
      paramSession.a(b);
      paramSession.a(c);
      paramSession.a(d);
      a(localPacket);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.RequestWindowChange
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */