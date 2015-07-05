package com.jcraft.jsch;

class RequestExec
  extends Request
{
  private byte[] a = new byte[0];
  
  RequestExec(byte[] paramArrayOfByte)
  {
    a = paramArrayOfByte;
  }
  
  public void a(Session paramSession, Channel paramChannel)
  {
    super.a(paramSession, paramChannel);
    paramSession = new Buffer();
    Packet localPacket = new Packet(paramSession);
    localPacket.a();
    paramSession.a((byte)98);
    paramSession.a(paramChannel.a());
    paramSession.b(Util.b("exec"));
    if (a()) {}
    for (int i = 1;; i = 0)
    {
      paramSession.a((byte)i);
      paramSession.e(a.length + 4);
      paramSession.b(a);
      a(localPacket);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.RequestExec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */