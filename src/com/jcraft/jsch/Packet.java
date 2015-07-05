package com.jcraft.jsch;

public class Packet
{
  private static Random c = null;
  Buffer a;
  byte[] b = new byte[4];
  
  public Packet(Buffer paramBuffer)
  {
    a = paramBuffer;
  }
  
  static void a(Random paramRandom)
  {
    c = paramRandom;
  }
  
  int a(int paramInt1, int paramInt2, int paramInt3)
  {
    int k = paramInt1 + 5 + 9;
    int j = -k & paramInt2 - 1;
    int i = j;
    if (j < paramInt2) {
      i = j + paramInt2;
    }
    paramInt2 = i + k + paramInt3 + 32;
    if (a.b.length < a.c + paramInt2 - 5 - 9 - paramInt1)
    {
      byte[] arrayOfByte = new byte[a.c + paramInt2 - 5 - 9 - paramInt1];
      System.arraycopy(a.b, 0, arrayOfByte, 0, a.b.length);
      a.b = arrayOfByte;
    }
    System.arraycopy(a.b, paramInt1 + 5 + 9, a.b, paramInt2, a.c - 5 - 9 - paramInt1);
    a.c = 10;
    a.a(paramInt1);
    a.c = (paramInt1 + 5 + 9);
    return paramInt2;
  }
  
  public void a()
  {
    a.c = 5;
  }
  
  void a(byte paramByte, int paramInt1, int paramInt2, int paramInt3)
  {
    System.arraycopy(a.b, paramInt2, a.b, 14, paramInt3);
    a.b[5] = paramByte;
    a.c = 6;
    a.a(paramInt1);
    a.a(paramInt3);
    a.c = (paramInt3 + 5 + 9);
  }
  
  void a(int paramInt)
  {
    int k = a.c;
    int j = -k & paramInt - 1;
    int i = j;
    if (j < paramInt) {
      i = j + paramInt;
    }
    paramInt = k + i - 4;
    b[0] = ((byte)(paramInt >>> 24));
    b[1] = ((byte)(paramInt >>> 16));
    b[2] = ((byte)(paramInt >>> 8));
    b[3] = ((byte)paramInt);
    System.arraycopy(b, 0, a.b, 0, 4);
    a.b[4] = ((byte)i);
    synchronized (c)
    {
      c.a(a.b, a.c, i);
      a.b(i);
      return;
    }
  }
  
  Buffer b()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.Packet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */