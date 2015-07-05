package com.jcraft.jsch;

import java.util.Vector;

class KeyPair$ASN1
{
  byte[] a;
  int b;
  int c;
  
  KeyPair$ASN1(KeyPair paramKeyPair, byte[] paramArrayOfByte)
  {
    this(paramKeyPair, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  KeyPair$ASN1(KeyPair paramKeyPair, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a = paramArrayOfByte;
    b = paramInt1;
    c = paramInt2;
    if (paramInt1 + paramInt2 > paramArrayOfByte.length) {
      throw new KeyPair.ASN1Exception(paramKeyPair);
    }
  }
  
  private int a(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt[0];
    byte[] arrayOfByte = a;
    int j = i + 1;
    int m = arrayOfByte[i] & 0xFF;
    i = m;
    int k = j;
    if ((m & 0x80) != 0)
    {
      k = m & 0x7F;
      i = 0;
    }
    for (;;)
    {
      if (k <= 0)
      {
        k = j;
        paramArrayOfInt[0] = k;
        return i;
      }
      i = (i << 8) + (a[j] & 0xFF);
      j += 1;
      k -= 1;
    }
  }
  
  byte[] a()
  {
    Object localObject = new int[1];
    localObject[0] = (b + 1);
    int i = a((int[])localObject);
    int j = localObject[0];
    localObject = new byte[i];
    System.arraycopy(a, j, localObject, 0, localObject.length);
    return (byte[])localObject;
  }
  
  ASN1[] b()
  {
    int j = a[b];
    Object localObject = new int[1];
    localObject[0] = (b + 1);
    int i = a((int[])localObject);
    if (j == 5) {
      return new ASN1[0];
    }
    j = localObject[0];
    Vector localVector = new Vector();
    if (i <= 0)
    {
      localObject = new ASN1[localVector.size()];
      i = 0;
    }
    for (;;)
    {
      if (i >= localVector.size())
      {
        return (ASN1[])localObject;
        int k = j + 1;
        localObject[0] = k;
        int m = a((int[])localObject);
        int n = localObject[0];
        localVector.addElement(new ASN1(d, a, k - 1, n - k + 1 + m));
        j = n + m;
        i = i - 1 - (n - k) - m;
        break;
      }
      localObject[i] = ((ASN1)localVector.elementAt(i));
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.KeyPair.ASN1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */