package com.jcraft.jsch;

import java.util.HashMap;
import java.util.Vector;

public class JSch
{
  static HashMap a = new HashMap();
  static Logger b = h;
  private static final Logger h;
  private Vector c = new Vector();
  private IdentityRepository d = new LocalIdentityRepository(this);
  private IdentityRepository e = d;
  private ConfigRepository f = null;
  private HostKeyRepository g = null;
  
  static
  {
    a.put("kex", "diffie-hellman-group1-sha1,diffie-hellman-group14-sha1,diffie-hellman-group-exchange-sha1");
    a.put("server_host_key", "ssh-rsa,ssh-dss");
    a.put("cipher.s2c", "aes128-ctr,aes128-cbc,3des-ctr,3des-cbc,blowfish-cbc,aes192-cbc,aes256-cbc");
    a.put("cipher.c2s", "aes128-ctr,aes128-cbc,3des-ctr,3des-cbc,blowfish-cbc,aes192-cbc,aes256-cbc");
    a.put("mac.s2c", "hmac-md5,hmac-sha1,hmac-sha2-256,hmac-sha1-96,hmac-md5-96");
    a.put("mac.c2s", "hmac-md5,hmac-sha1,hmac-sha2-256,hmac-sha1-96,hmac-md5-96");
    a.put("compression.s2c", "none");
    a.put("compression.c2s", "none");
    a.put("lang.s2c", "");
    a.put("lang.c2s", "");
    a.put("compression_level", "6");
    a.put("diffie-hellman-group-exchange-sha1", "com.jcraft.jsch.DHGEX");
    a.put("diffie-hellman-group1-sha1", "com.jcraft.jsch.DHG1");
    a.put("diffie-hellman-group14-sha1", "com.jcraft.jsch.DHG14");
    a.put("diffie-hellman-group-exchange-sha256", "com.jcraft.jsch.DHGEX256");
    a.put("dh", "com.jcraft.jsch.jce.DH");
    a.put("3des-cbc", "com.jcraft.jsch.jce.TripleDESCBC");
    a.put("blowfish-cbc", "com.jcraft.jsch.jce.BlowfishCBC");
    a.put("hmac-sha1", "com.jcraft.jsch.jce.HMACSHA1");
    a.put("hmac-sha1-96", "com.jcraft.jsch.jce.HMACSHA196");
    a.put("hmac-sha2-256", "com.jcraft.jsch.jce.HMACSHA256");
    a.put("hmac-md5", "com.jcraft.jsch.jce.HMACMD5");
    a.put("hmac-md5-96", "com.jcraft.jsch.jce.HMACMD596");
    a.put("sha-1", "com.jcraft.jsch.jce.SHA1");
    a.put("sha-256", "com.jcraft.jsch.jce.SHA256");
    a.put("md5", "com.jcraft.jsch.jce.MD5");
    a.put("signature.dss", "com.jcraft.jsch.jce.SignatureDSA");
    a.put("signature.rsa", "com.jcraft.jsch.jce.SignatureRSA");
    a.put("keypairgen.dsa", "com.jcraft.jsch.jce.KeyPairGenDSA");
    a.put("keypairgen.rsa", "com.jcraft.jsch.jce.KeyPairGenRSA");
    a.put("random", "com.jcraft.jsch.jce.Random");
    a.put("none", "com.jcraft.jsch.CipherNone");
    a.put("aes128-cbc", "com.jcraft.jsch.jce.AES128CBC");
    a.put("aes192-cbc", "com.jcraft.jsch.jce.AES192CBC");
    a.put("aes256-cbc", "com.jcraft.jsch.jce.AES256CBC");
    a.put("aes128-ctr", "com.jcraft.jsch.jce.AES128CTR");
    a.put("aes192-ctr", "com.jcraft.jsch.jce.AES192CTR");
    a.put("aes256-ctr", "com.jcraft.jsch.jce.AES256CTR");
    a.put("3des-ctr", "com.jcraft.jsch.jce.TripleDESCTR");
    a.put("arcfour", "com.jcraft.jsch.jce.ARCFOUR");
    a.put("arcfour128", "com.jcraft.jsch.jce.ARCFOUR128");
    a.put("arcfour256", "com.jcraft.jsch.jce.ARCFOUR256");
    a.put("userauth.none", "com.jcraft.jsch.UserAuthNone");
    a.put("userauth.password", "com.jcraft.jsch.UserAuthPassword");
    a.put("userauth.keyboard-interactive", "com.jcraft.jsch.UserAuthKeyboardInteractive");
    a.put("userauth.publickey", "com.jcraft.jsch.UserAuthPublicKey");
    a.put("userauth.gssapi-with-mic", "com.jcraft.jsch.UserAuthGSSAPIWithMIC");
    a.put("gssapi-with-mic.krb5", "com.jcraft.jsch.jgss.GSSContextKrb5");
    a.put("zlib", "com.jcraft.jsch.jcraft.Compression");
    a.put("zlib@openssh.com", "com.jcraft.jsch.jcraft.Compression");
    a.put("pbkdf", "com.jcraft.jsch.jce.PBKDF");
    a.put("StrictHostKeyChecking", "ask");
    a.put("HashKnownHosts", "no");
    a.put("PreferredAuthentications", "gssapi-with-mic,publickey,keyboard-interactive,password");
    a.put("CheckCiphers", "aes256-ctr,aes192-ctr,aes128-ctr,aes256-cbc,aes192-cbc,aes128-cbc,3des-ctr,arcfour,arcfour128,arcfour256");
    a.put("CheckKexes", "diffie-hellman-group14-sha1");
    a.put("MaxAuthTries", "6");
    a.put("ClearAllForwardings", "no");
    h = new JSch.1();
  }
  
  public static String c(String paramString)
  {
    synchronized (a)
    {
      paramString = (String)a.get(paramString);
      return paramString;
    }
  }
  
  static Logger d()
  {
    return b;
  }
  
  public IdentityRepository a()
  {
    try
    {
      IdentityRepository localIdentityRepository = e;
      return localIdentityRepository;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public Session a(String paramString1, String paramString2, int paramInt)
  {
    if (paramString2 == null) {
      throw new JSchException("host must not be null.");
    }
    return new Session(this, paramString1, paramString2, paramInt);
  }
  
  public void a(Identity paramIdentity, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {}
    try
    {
      arrayOfByte = new byte[paramArrayOfByte.length];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
      Util.d(paramArrayOfByte);
    }
    finally
    {
      try
      {
        paramIdentity.a(arrayOfByte);
        Util.d(arrayOfByte);
        if (!(e instanceof LocalIdentityRepository)) {
          break label59;
        }
        ((LocalIdentityRepository)e).a(paramIdentity);
        return;
      }
      finally
      {
        byte[] arrayOfByte;
        paramArrayOfByte = arrayOfByte;
      }
      paramIdentity = finally;
    }
    throw paramIdentity;
    label59:
    if (((paramIdentity instanceof IdentityFile)) && (!paramIdentity.d()))
    {
      e.a(((IdentityFile)paramIdentity).f().a());
      return;
    }
    try
    {
      if (!(e instanceof IdentityRepository.Wrapper)) {
        a(new IdentityRepository.Wrapper(e));
      }
      ((IdentityRepository.Wrapper)e).a(paramIdentity);
      return;
    }
    finally {}
  }
  
  public void a(IdentityRepository paramIdentityRepository)
  {
    if (paramIdentityRepository == null) {}
    for (;;)
    {
      try
      {
        e = d;
        return;
      }
      finally {}
      e = paramIdentityRepository;
    }
  }
  
  protected void a(Session paramSession)
  {
    synchronized (c)
    {
      c.addElement(paramSession);
      return;
    }
  }
  
  public void a(String paramString)
  {
    a(paramString, null);
  }
  
  public void a(String paramString1, String paramString2)
  {
    byte[] arrayOfByte = null;
    if (paramString2 != null) {
      arrayOfByte = Util.b(paramString2);
    }
    a(paramString1, arrayOfByte);
    if (arrayOfByte != null) {
      Util.d(arrayOfByte);
    }
  }
  
  public void a(String paramString, byte[] paramArrayOfByte)
  {
    a(IdentityFile.a(paramString, null, this), paramArrayOfByte);
  }
  
  public ConfigRepository b()
  {
    return f;
  }
  
  public void b(String paramString)
  {
    Vector localVector = e.a();
    int i = 0;
    if (i >= localVector.size()) {
      return;
    }
    Identity localIdentity = (Identity)localVector.elementAt(i);
    if (!localIdentity.c().equals(paramString)) {}
    for (;;)
    {
      i += 1;
      break;
      if ((e instanceof LocalIdentityRepository)) {
        ((LocalIdentityRepository)e).b(localIdentity);
      } else {
        e.b(localIdentity.a());
      }
    }
  }
  
  protected boolean b(Session paramSession)
  {
    synchronized (c)
    {
      boolean bool = c.remove(paramSession);
      return bool;
    }
  }
  
  public HostKeyRepository c()
  {
    if (g == null) {
      g = new KnownHosts(this);
    }
    return g;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.JSch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */