package com.jcraft.jsch.jgss;

import org.ietf.jgss.GSSException;
import org.ietf.jgss.MessageProp;

public class GSSContextKrb5
  implements com.jcraft.jsch.GSSContext
{
  private static String a = a("javax.security.auth.useSubjectCredsOnly");
  private org.ietf.jgss.GSSContext b = null;
  
  private static String a(String paramString)
  {
    try
    {
      paramString = System.getProperty(paramString);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  private static void b(String paramString1, String paramString2)
  {
    try
    {
      System.setProperty(paramString1, paramString2);
      return;
    }
    catch (Exception paramString1) {}
  }
  
  /* Error */
  public void a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 45	org/ietf/jgss/Oid
    //   3: dup
    //   4: ldc 47
    //   6: invokespecial 50	org/ietf/jgss/Oid:<init>	(Ljava/lang/String;)V
    //   9: astore_3
    //   10: new 45	org/ietf/jgss/Oid
    //   13: dup
    //   14: ldc 52
    //   16: invokespecial 50	org/ietf/jgss/Oid:<init>	(Ljava/lang/String;)V
    //   19: astore 4
    //   21: invokestatic 58	org/ietf/jgss/GSSManager:getInstance	()Lorg/ietf/jgss/GSSManager;
    //   24: astore 5
    //   26: aload_2
    //   27: invokestatic 64	java/net/InetAddress:getByName	(Ljava/lang/String;)Ljava/net/InetAddress;
    //   30: invokevirtual 68	java/net/InetAddress:getCanonicalHostName	()Ljava/lang/String;
    //   33: astore_1
    //   34: aload_0
    //   35: aload 5
    //   37: aload 5
    //   39: new 70	java/lang/StringBuilder
    //   42: dup
    //   43: ldc 72
    //   45: invokespecial 73	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   48: aload_1
    //   49: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 80	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: aload 4
    //   57: invokevirtual 84	org/ietf/jgss/GSSManager:createName	(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;
    //   60: aload_3
    //   61: aconst_null
    //   62: iconst_0
    //   63: invokevirtual 88	org/ietf/jgss/GSSManager:createContext	(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;
    //   66: putfield 25	com/jcraft/jsch/jgss/GSSContextKrb5:b	Lorg/ietf/jgss/GSSContext;
    //   69: aload_0
    //   70: getfield 25	com/jcraft/jsch/jgss/GSSContextKrb5:b	Lorg/ietf/jgss/GSSContext;
    //   73: iconst_1
    //   74: invokeinterface 94 2 0
    //   79: aload_0
    //   80: getfield 25	com/jcraft/jsch/jgss/GSSContextKrb5:b	Lorg/ietf/jgss/GSSContext;
    //   83: iconst_1
    //   84: invokeinterface 97 2 0
    //   89: aload_0
    //   90: getfield 25	com/jcraft/jsch/jgss/GSSContextKrb5:b	Lorg/ietf/jgss/GSSContext;
    //   93: iconst_1
    //   94: invokeinterface 100 2 0
    //   99: aload_0
    //   100: getfield 25	com/jcraft/jsch/jgss/GSSContextKrb5:b	Lorg/ietf/jgss/GSSContext;
    //   103: iconst_1
    //   104: invokeinterface 103 2 0
    //   109: aload_0
    //   110: getfield 25	com/jcraft/jsch/jgss/GSSContextKrb5:b	Lorg/ietf/jgss/GSSContext;
    //   113: iconst_0
    //   114: invokeinterface 106 2 0
    //   119: return
    //   120: astore_1
    //   121: new 108	com/jcraft/jsch/JSchException
    //   124: dup
    //   125: aload_1
    //   126: invokevirtual 109	org/ietf/jgss/GSSException:toString	()Ljava/lang/String;
    //   129: invokespecial 110	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   132: athrow
    //   133: astore_1
    //   134: new 108	com/jcraft/jsch/JSchException
    //   137: dup
    //   138: aload_1
    //   139: invokevirtual 111	java/lang/NoClassDefFoundError:toString	()Ljava/lang/String;
    //   142: invokespecial 110	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   145: athrow
    //   146: astore_1
    //   147: aload_2
    //   148: astore_1
    //   149: goto -115 -> 34
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	152	0	this	GSSContextKrb5
    //   0	152	1	paramString1	String
    //   0	152	2	paramString2	String
    //   9	52	3	localOid1	org.ietf.jgss.Oid
    //   19	37	4	localOid2	org.ietf.jgss.Oid
    //   24	14	5	localGSSManager	org.ietf.jgss.GSSManager
    // Exception table:
    //   from	to	target	type
    //   0	26	120	org/ietf/jgss/GSSException
    //   26	34	120	org/ietf/jgss/GSSException
    //   34	119	120	org/ietf/jgss/GSSException
    //   0	26	133	java/lang/NoClassDefFoundError
    //   26	34	133	java/lang/NoClassDefFoundError
    //   34	119	133	java/lang/NoClassDefFoundError
    //   26	34	146	java/net/UnknownHostException
  }
  
  public boolean a()
  {
    return b.isEstablished();
  }
  
  /* Error */
  public byte[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: getstatic 19	com/jcraft/jsch/jgss/GSSContextKrb5:a	Ljava/lang/String;
    //   3: ifnonnull +10 -> 13
    //   6: ldc 14
    //   8: ldc 120
    //   10: invokestatic 122	com/jcraft/jsch/jgss/GSSContextKrb5:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   13: aload_0
    //   14: getfield 25	com/jcraft/jsch/jgss/GSSContextKrb5:b	Lorg/ietf/jgss/GSSContext;
    //   17: aload_1
    //   18: iconst_0
    //   19: iload_3
    //   20: invokeinterface 125 4 0
    //   25: astore_1
    //   26: getstatic 19	com/jcraft/jsch/jgss/GSSContextKrb5:a	Ljava/lang/String;
    //   29: ifnonnull +10 -> 39
    //   32: ldc 14
    //   34: ldc 127
    //   36: invokestatic 122	com/jcraft/jsch/jgss/GSSContextKrb5:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   39: aload_1
    //   40: areturn
    //   41: astore_1
    //   42: new 108	com/jcraft/jsch/JSchException
    //   45: dup
    //   46: aload_1
    //   47: invokevirtual 109	org/ietf/jgss/GSSException:toString	()Ljava/lang/String;
    //   50: invokespecial 110	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   53: athrow
    //   54: astore_1
    //   55: getstatic 19	com/jcraft/jsch/jgss/GSSContextKrb5:a	Ljava/lang/String;
    //   58: ifnonnull +10 -> 68
    //   61: ldc 14
    //   63: ldc 127
    //   65: invokestatic 122	com/jcraft/jsch/jgss/GSSContextKrb5:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   68: aload_1
    //   69: athrow
    //   70: astore_1
    //   71: new 108	com/jcraft/jsch/JSchException
    //   74: dup
    //   75: aload_1
    //   76: invokevirtual 128	java/lang/SecurityException:toString	()Ljava/lang/String;
    //   79: invokespecial 110	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   82: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	83	0	this	GSSContextKrb5
    //   0	83	1	paramArrayOfByte	byte[]
    //   0	83	2	paramInt1	int
    //   0	83	3	paramInt2	int
    // Exception table:
    //   from	to	target	type
    //   0	13	41	org/ietf/jgss/GSSException
    //   13	26	41	org/ietf/jgss/GSSException
    //   0	13	54	finally
    //   13	26	54	finally
    //   42	54	54	finally
    //   71	83	54	finally
    //   0	13	70	java/lang/SecurityException
    //   13	26	70	java/lang/SecurityException
  }
  
  public void b()
  {
    try
    {
      b.dispose();
      return;
    }
    catch (GSSException localGSSException) {}
  }
  
  public byte[] b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      MessageProp localMessageProp = new MessageProp(0, true);
      paramArrayOfByte = b.getMIC(paramArrayOfByte, paramInt1, paramInt2, localMessageProp);
      return paramArrayOfByte;
    }
    catch (GSSException paramArrayOfByte) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jgss.GSSContextKrb5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */