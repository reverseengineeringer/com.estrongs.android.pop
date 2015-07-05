package com.jcraft.jsch;

class RequestEnv
  extends Request
{
  byte[] a = new byte[0];
  byte[] b = new byte[0];
  
  public void a(Session paramSession, Channel paramChannel)
  {
    super.a(paramSession, paramChannel);
    paramSession = new Buffer();
    Packet localPacket = new Packet(paramSession);
    localPacket.a();
    paramSession.a((byte)98);
    paramSession.a(paramChannel.a());
    paramSession.b(Util.b("env"));
    if (a()) {}
    for (int i = 1;; i = 0)
    {
      paramSession.a((byte)i);
      paramSession.b(a);
      paramSession.b(b);
      a(localPacket);
      return;
    }
  }
  
  void a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    a = paramArrayOfByte1;
    b = paramArrayOfByte2;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.RequestEnv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */