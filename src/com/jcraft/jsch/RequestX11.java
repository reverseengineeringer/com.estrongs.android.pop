package com.jcraft.jsch;

class RequestX11
  extends Request
{
  public void a(Session paramSession, Channel paramChannel)
  {
    super.a(paramSession, paramChannel);
    Buffer localBuffer = new Buffer();
    Packet localPacket = new Packet(localBuffer);
    localPacket.a();
    localBuffer.a((byte)98);
    localBuffer.a(paramChannel.a());
    localBuffer.b(Util.b("x11-req"));
    if (a()) {}
    for (int i = 1;; i = 0)
    {
      localBuffer.a((byte)i);
      localBuffer.a((byte)0);
      localBuffer.b(Util.b("MIT-MAGIC-COOKIE-1"));
      localBuffer.b(ChannelX11.c(paramSession));
      localBuffer.a(0);
      a(localPacket);
      b = true;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.RequestX11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */