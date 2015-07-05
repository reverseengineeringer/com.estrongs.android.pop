package com.jcraft.jsch;

class RequestPtyReq
  extends Request
{
  private String a = "vt100";
  private int b = 80;
  private int c = 24;
  private int d = 640;
  private int e = 480;
  private byte[] f = Util.a;
  
  void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    b = paramInt1;
    c = paramInt2;
    d = paramInt3;
    e = paramInt4;
  }
  
  public void a(Session paramSession, Channel paramChannel)
  {
    super.a(paramSession, paramChannel);
    paramSession = new Buffer();
    Packet localPacket = new Packet(paramSession);
    localPacket.a();
    paramSession.a((byte)98);
    paramSession.a(paramChannel.a());
    paramSession.b(Util.b("pty-req"));
    if (a()) {}
    for (int i = 1;; i = 0)
    {
      paramSession.a((byte)i);
      paramSession.b(Util.b(a));
      paramSession.a(b);
      paramSession.a(c);
      paramSession.a(d);
      paramSession.a(e);
      paramSession.b(f);
      a(localPacket);
      return;
    }
  }
  
  void a(String paramString)
  {
    a = paramString;
  }
  
  void a(byte[] paramArrayOfByte)
  {
    f = paramArrayOfByte;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.RequestPtyReq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */