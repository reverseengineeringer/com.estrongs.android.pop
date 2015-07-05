package com.jcraft.jsch.jce;

import java.math.BigInteger;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PublicKey;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyAgreement;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;

public class DH
  implements com.jcraft.jsch.DH
{
  BigInteger a;
  BigInteger b;
  BigInteger c;
  byte[] d;
  BigInteger e;
  BigInteger f;
  byte[] g;
  private KeyPairGenerator h;
  private KeyAgreement i;
  
  public void a()
  {
    h = KeyPairGenerator.getInstance("DH");
    i = KeyAgreement.getInstance("DH");
  }
  
  void a(BigInteger paramBigInteger)
  {
    a = paramBigInteger;
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    a(new BigInteger(paramArrayOfByte));
  }
  
  void b(BigInteger paramBigInteger)
  {
    b = paramBigInteger;
  }
  
  public void b(byte[] paramArrayOfByte)
  {
    b(new BigInteger(paramArrayOfByte));
  }
  
  public byte[] b()
  {
    if (c == null)
    {
      Object localObject = new DHParameterSpec(a, b);
      h.initialize((AlgorithmParameterSpec)localObject);
      localObject = h.generateKeyPair();
      i.init(((KeyPair)localObject).getPrivate());
      ((KeyPair)localObject).getPublic().getEncoded();
      c = ((DHPublicKey)((KeyPair)localObject).getPublic()).getY();
      d = c.toByteArray();
    }
    return d;
  }
  
  void c(BigInteger paramBigInteger)
  {
    e = paramBigInteger;
  }
  
  public void c(byte[] paramArrayOfByte)
  {
    c(new BigInteger(paramArrayOfByte));
  }
  
  public byte[] c()
  {
    if (f == null)
    {
      Object localObject = KeyFactory.getInstance("DH").generatePublic(new DHPublicKeySpec(e, a, b));
      i.doPhase((Key)localObject, true);
      localObject = i.generateSecret();
      f = new BigInteger((byte[])localObject);
      g = f.toByteArray();
      g = ((byte[])localObject);
    }
    return g;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jce.DH
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */