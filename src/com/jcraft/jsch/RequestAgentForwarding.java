package com.jcraft.jsch;

class RequestAgentForwarding
  extends Request
{
  public void a(Session paramSession, Channel paramChannel)
  {
    int i = 0;
    super.a(paramSession, paramChannel);
    a(false);
    Buffer localBuffer = new Buffer();
    Packet localPacket = new Packet(localBuffer);
    localPacket.a();
    localBuffer.a((byte)98);
    localBuffer.a(paramChannel.a());
    localBuffer.b(Util.b("auth-agent-req@openssh.com"));
    if (a()) {
      i = 1;
    }
    localBuffer.a((byte)i);
    a(localPacket);
    c = true;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.RequestAgentForwarding
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */