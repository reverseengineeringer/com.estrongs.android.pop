package com.jcraft.jsch;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.Socket;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.Properties;
import java.util.Vector;

public class Session
  implements Runnable
{
  private static final byte[] ak = Util.b("keepalive@jcraft.com");
  private static final byte[] al = Util.b("no-more-sessions@openssh.com");
  static Random f;
  private byte[] A;
  private byte[] B;
  private byte[] C;
  private byte[] D;
  private byte[] E;
  private byte[] F;
  private int G = 0;
  private int H = 0;
  private Cipher I;
  private Cipher J;
  private MAC K;
  private MAC L;
  private byte[] M;
  private byte[] N;
  private Compression O;
  private Compression P;
  private IO Q;
  private Socket R;
  private int S = 0;
  private volatile boolean T = false;
  private boolean U = false;
  private Thread V = null;
  private Object W = new Object();
  private Hashtable X = null;
  private Proxy Y = null;
  private UserInfo Z;
  String[] a = null;
  private String aa = null;
  private int ab = 0;
  private int ac = 1;
  private IdentityRepository ad = null;
  private HostKeyRepository ae = null;
  private long af = 0L;
  private boolean ag = false;
  private int ah = 8;
  private int ai = 8;
  private Session.GlobalRequestReply aj = new Session.GlobalRequestReply(this, null);
  private HostKey am = null;
  boolean b = false;
  boolean c = false;
  InputStream d = null;
  OutputStream e = null;
  Buffer g;
  Packet h;
  SocketFactory i = null;
  protected boolean j = false;
  int k = 6;
  int l = 0;
  String m = "127.0.0.1";
  String n = "127.0.0.1";
  int o = 22;
  String p = null;
  byte[] q = null;
  JSch r;
  int[] s = new int[1];
  int[] t = new int[1];
  Runnable u;
  private byte[] v;
  private byte[] w = Util.b("SSH-2.0-JSCH-0.1.51");
  private byte[] x;
  private byte[] y;
  private byte[] z;
  
  Session(JSch paramJSch, String paramString1, String paramString2, int paramInt)
  {
    r = paramJSch;
    g = new Buffer();
    h = new Packet(g);
    p = paramString1;
    m = paramString2;
    n = paramString2;
    o = paramInt;
    m();
    if (p == null) {}
    try
    {
      p = ((String)System.getProperties().get("user.name"));
      if (p == null) {
        throw new JSchException("username is not given.");
      }
      return;
    }
    catch (SecurityException paramJSch)
    {
      for (;;) {}
    }
  }
  
  private int a(String paramString, int paramInt)
  {
    for (;;)
    {
      int i2;
      int i1;
      synchronized (aj)
      {
        Buffer localBuffer = new Buffer(100);
        Packet localPacket = new Packet(localBuffer);
        paramString = ChannelForwardedTCPIP.b(paramString);
        aj.a(Thread.currentThread());
        aj.b(paramInt);
        try
        {
          localPacket.a();
          localBuffer.a((byte)80);
          localBuffer.b(Util.b("tcpip-forward"));
          localBuffer.a((byte)1);
          localBuffer.b(Util.b(paramString));
          localBuffer.a(paramInt);
          b(localPacket);
          i2 = 0;
          i1 = aj.b();
        }
        catch (Exception paramString)
        {
          aj.a(null);
          if (!(paramString instanceof Throwable)) {
            break label191;
          }
          throw new JSchException(paramString.toString(), paramString);
          throw new JSchException(paramString.toString());
        }
        aj.a(null);
        if (i1 != 1) {
          throw new JSchException("remote port forwarding failed for listen port " + paramInt);
        }
      }
      label191:
      label243:
      do
      {
        try
        {
          Thread.sleep(1000L);
          i2 += 1;
          i1 = aj.b();
          break label243;
          paramInt = aj.c();
          return paramInt;
        }
        catch (Exception paramString)
        {
          for (;;) {}
        }
        if (i2 >= 10) {
          break;
        }
      } while (i1 == -1);
    }
  }
  
  private void a(Buffer paramBuffer, Cipher paramCipher, MAC paramMAC, int paramInt1, int paramInt2)
  {
    if (!paramCipher.c()) {
      throw new JSchException("Packet corrupt");
    }
    if ((paramInt1 != 262144) && (paramMAC != null)) {}
    for (;;)
    {
      paramInt1 = paramInt2 - c;
      if (paramInt1 <= 0)
      {
        if (paramMAC != null) {
          paramMAC.a(b, 0);
        }
        throw new JSchException("Packet corrupt");
      }
      paramBuffer.k();
      if (paramInt1 > b.length) {}
      for (paramInt2 = b.length;; paramInt2 = paramInt1)
      {
        Q.c(b, 0, paramInt2);
        if (paramMAC != null) {
          paramMAC.a(b, 0, paramInt2);
        }
        paramInt1 -= paramInt2;
        break;
      }
      paramMAC = null;
    }
  }
  
  private void a(Buffer paramBuffer, KeyExchange paramKeyExchange)
  {
    a(paramKeyExchange);
    ag = false;
  }
  
  private void a(ChannelSession paramChannelSession)
  {
    Object localObject = r.b();
    if (localObject == null) {}
    do
    {
      return;
      localObject = ((ConfigRepository)localObject).a(n);
      String str = ((ConfigRepository.Config)localObject).a("ForwardAgent");
      if (str != null) {
        paramChannelSession.a(str.equals("yes"));
      }
      localObject = ((ConfigRepository.Config)localObject).a("RequestTTY");
    } while (localObject == null);
    paramChannelSession.b(((String)localObject).equals("yes"));
  }
  
  private void a(ConfigRepository.Config paramConfig, String paramString)
  {
    paramConfig = paramConfig.a(paramString);
    if (paramConfig != null) {
      a(paramString, paramConfig);
    }
  }
  
  private void a(KeyExchange paramKeyExchange)
  {
    arrayOfByte1 = paramKeyExchange.d();
    arrayOfByte2 = paramKeyExchange.e();
    paramKeyExchange = paramKeyExchange.f();
    if (z == null)
    {
      z = new byte[arrayOfByte2.length];
      System.arraycopy(arrayOfByte2, 0, z, 0, arrayOfByte2.length);
    }
    g.k();
    g.c(arrayOfByte1);
    g.a(arrayOfByte2);
    g.a((byte)65);
    g.a(z);
    paramKeyExchange.a(g.b, 0, g.c);
    A = paramKeyExchange.c();
    int i1 = g.c - z.length - 1;
    arrayOfByte3 = g.b;
    arrayOfByte3[i1] = ((byte)(arrayOfByte3[i1] + 1));
    paramKeyExchange.a(g.b, 0, g.c);
    B = paramKeyExchange.c();
    arrayOfByte3 = g.b;
    arrayOfByte3[i1] = ((byte)(arrayOfByte3[i1] + 1));
    paramKeyExchange.a(g.b, 0, g.c);
    C = paramKeyExchange.c();
    arrayOfByte3 = g.b;
    arrayOfByte3[i1] = ((byte)(arrayOfByte3[i1] + 1));
    paramKeyExchange.a(g.b, 0, g.c);
    D = paramKeyExchange.c();
    arrayOfByte3 = g.b;
    arrayOfByte3[i1] = ((byte)(arrayOfByte3[i1] + 1));
    paramKeyExchange.a(g.b, 0, g.c);
    E = paramKeyExchange.c();
    arrayOfByte3 = g.b;
    arrayOfByte3[i1] = ((byte)(arrayOfByte3[i1] + 1));
    paramKeyExchange.a(g.b, 0, g.c);
    F = paramKeyExchange.c();
    for (;;)
    {
      try
      {
        I = ((Cipher)Class.forName(d(a[3])).newInstance());
        if (I.b() > D.length) {
          continue;
        }
        I.a(1, D, B);
        ah = I.a();
        K = ((MAC)Class.forName(d(a[5])).newInstance());
        F = a(g, arrayOfByte1, arrayOfByte2, F, paramKeyExchange, K.a());
        K.a(F);
        M = new byte[K.a()];
        N = new byte[K.a()];
        J = ((Cipher)Class.forName(d(a[2])).newInstance());
      }
      catch (Exception paramKeyExchange)
      {
        if (!(paramKeyExchange instanceof JSchException)) {
          continue;
        }
        throw paramKeyExchange;
        g.k();
        g.c(arrayOfByte1);
        g.a(arrayOfByte2);
        g.a(C);
        paramKeyExchange.a(g.b, 0, g.c);
        arrayOfByte3 = paramKeyExchange.c();
        byte[] arrayOfByte4 = new byte[C.length + arrayOfByte3.length];
        System.arraycopy(C, 0, arrayOfByte4, 0, C.length);
        System.arraycopy(arrayOfByte3, 0, arrayOfByte4, C.length, arrayOfByte3.length);
        C = arrayOfByte4;
        continue;
        throw new JSchException(paramKeyExchange.toString(), paramKeyExchange);
      }
      if (J.b() > C.length) {
        continue;
      }
      J.a(0, C, A);
      ai = J.a();
      L = ((MAC)Class.forName(d(a[4])).newInstance());
      E = a(g, arrayOfByte1, arrayOfByte2, E, paramKeyExchange, L.a());
      L.a(E);
      h(a[6]);
      i(a[7]);
      return;
      g.k();
      g.c(arrayOfByte1);
      g.a(arrayOfByte2);
      g.a(D);
      paramKeyExchange.a(g.b, 0, g.c);
      arrayOfByte3 = paramKeyExchange.c();
      arrayOfByte4 = new byte[D.length + arrayOfByte3.length];
      System.arraycopy(D, 0, arrayOfByte4, 0, D.length);
      System.arraycopy(arrayOfByte3, 0, arrayOfByte4, D.length, arrayOfByte3.length);
      D = arrayOfByte4;
    }
  }
  
  private void a(String paramString, int paramInt, KeyExchange paramKeyExchange)
  {
    int i2 = 0;
    String str3 = d("StrictHostKeyChecking");
    if (aa != null) {
      paramString = aa;
    }
    byte[] arrayOfByte = paramKeyExchange.g();
    String str2 = paramKeyExchange.a();
    String str4 = paramKeyExchange.c();
    paramKeyExchange = paramString;
    if (aa == null)
    {
      paramKeyExchange = paramString;
      if (paramInt != 22) {
        paramKeyExchange = "[" + paramString + "]:" + paramInt;
      }
    }
    HostKeyRepository localHostKeyRepository = j();
    if ((d("HashKnownHosts").equals("yes")) && ((localHostKeyRepository instanceof KnownHosts))) {
      am = ((KnownHosts)localHostKeyRepository).b(paramKeyExchange, arrayOfByte);
    }
    int i3;
    for (;;)
    {
      String str1;
      try
      {
        i3 = localHostKeyRepository.a(paramKeyExchange, arrayOfByte);
        if (((!str3.equals("ask")) && (!str3.equals("yes"))) || (i3 != 2)) {
          break label1139;
        }
      }
      finally {}
      try
      {
        str1 = localHostKeyRepository.a();
        paramString = str1;
        if (str1 == null) {
          paramString = "known_hosts";
        }
        if (Z == null) {
          break label398;
        }
        paramString = "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!\nIT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\nSomeone could be eavesdropping on you right now (man-in-the-middle attack)!\nIt is also possible that the " + str2 + " host key has just been changed.\n" + "The fingerprint for the " + str2 + " key sent by the remote host is\n" + str4 + ".\n" + "Please contact your system administrator.\n" + "Add correct host key in " + paramString + " to get rid of this message.";
        if (!str3.equals("ask")) {
          break label388;
        }
        bool = Z.a(paramString + "\nDo you want to delete the old key and insert the new key?");
        if (bool) {
          break label404;
        }
        throw new JSchException("HostKey has been changed: " + paramKeyExchange);
      }
      finally {}
      am = new HostKey(paramKeyExchange, arrayOfByte);
      break;
      label388:
      Z.d(paramString);
      label398:
      boolean bool = false;
    }
    for (;;)
    {
      try
      {
        label404:
        if (str2.equals("DSA"))
        {
          paramString = "ssh-dss";
          localHostKeyRepository.a(paramKeyExchange, paramString, null);
          paramInt = 1;
          if (!str3.equals("ask"))
          {
            i1 = paramInt;
            if (!str3.equals("yes")) {
              break label633;
            }
          }
          i1 = paramInt;
          if (i3 == 0) {
            break label633;
          }
          i1 = paramInt;
          if (paramInt != 0) {
            break label633;
          }
          if (str3.equals("yes")) {
            throw new JSchException("reject HostKey: " + m);
          }
        }
        else
        {
          paramString = "ssh-rsa";
          continue;
        }
        if (Z == null) {
          break label857;
        }
      }
      finally {}
      if (!Z.a("The authenticity of host '" + m + "' can't be established.\n" + str2 + " key fingerprint is " + str4 + ".\n" + "Are you sure you want to continue connecting?")) {
        throw new JSchException("reject HostKey: " + m);
      }
      int i1 = 1;
      label633:
      if ((str3.equals("no")) && (1 == i3)) {}
      for (paramInt = 1;; paramInt = i1)
      {
        if (i3 == 0)
        {
          if (!str2.equals("DSA")) {
            break label941;
          }
          paramString = "ssh-dss";
          paramString = localHostKeyRepository.a(paramKeyExchange, paramString);
          paramKeyExchange = Util.b(Util.b(arrayOfByte, 0, arrayOfByte.length));
          i1 = i2;
        }
        for (;;)
        {
          if (i1 >= paramString.length)
          {
            if ((i3 == 0) && (JSch.d().a(1))) {
              JSch.d().a(1, "Host '" + m + "' is known and mathces the " + str2 + " host key");
            }
            if ((paramInt != 0) && (JSch.d().a(2))) {
              JSch.d().a(2, "Permanently added '" + m + "' (" + str2 + ") to the list of known hosts.");
            }
            if (paramInt == 0) {}
          }
          label857:
          try
          {
            localHostKeyRepository.a(am, Z);
            return;
          }
          finally {}
          if (i3 == 1) {
            throw new JSchException("UnknownHostKey: " + m + ". " + str2 + " key fingerprint is " + str4);
          }
          throw new JSchException("HostKey has been changed: " + m);
          label941:
          paramString = "ssh-rsa";
          break;
          if ((paramString[i3].c().equals(paramKeyExchange)) && (paramString[i1].e().equals("@revoked")))
          {
            if (Z != null) {
              Z.d("The " + str2 + " host key for " + m + " is marked as revoked.\n" + "This could mean that a stolen key is being used to " + "impersonate this host.");
            }
            if (JSch.d().a(1)) {
              JSch.d().a(1, "Host '" + m + "' has provided revoked key.");
            }
            throw new JSchException("revoked HostKey: " + m);
          }
          i1 += 1;
        }
      }
      label1139:
      paramInt = 0;
    }
  }
  
  static boolean a(Session paramSession, String paramString)
  {
    try
    {
      ((KeyExchange)Class.forName(paramString).newInstance()).a(paramSession, null, null, null, null);
      return true;
    }
    catch (Exception paramSession) {}
    return false;
  }
  
  private byte[] a(Buffer paramBuffer, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, HASH paramHASH, int paramInt)
  {
    int i1 = paramHASH.b();
    for (;;)
    {
      if (paramArrayOfByte3.length >= paramInt) {
        return paramArrayOfByte3;
      }
      paramBuffer.k();
      paramBuffer.c(paramArrayOfByte1);
      paramBuffer.a(paramArrayOfByte2);
      paramBuffer.a(paramArrayOfByte3);
      paramHASH.a(b, 0, c);
      byte[] arrayOfByte = new byte[paramArrayOfByte3.length + i1];
      System.arraycopy(paramArrayOfByte3, 0, arrayOfByte, 0, paramArrayOfByte3.length);
      System.arraycopy(paramHASH.c(), 0, arrayOfByte, paramArrayOfByte3.length, i1);
      Util.d(paramArrayOfByte3);
      paramArrayOfByte3 = arrayOfByte;
    }
  }
  
  private KeyExchange b(Buffer paramBuffer)
  {
    int i1 = paramBuffer.d();
    if (i1 != paramBuffer.a()) {
      paramBuffer.g();
    }
    for (y = new byte[c - 5];; y = new byte[i1 - 1 - paramBuffer.g()])
    {
      System.arraycopy(b, d, y, 0, y.length);
      if (!ag) {
        k();
      }
      a = KeyExchange.a(y, x);
      if (a != null) {
        break;
      }
      throw new JSchException("Algorithm negotiation fail");
    }
    if ((!U) && ((a[2].equals("none")) || (a[3].equals("none")))) {
      throw new JSchException("NONE Cipher should not be chosen before authentification is successed.");
    }
    try
    {
      paramBuffer = (KeyExchange)Class.forName(d(a[0])).newInstance();
      paramBuffer.a(this, v, w, y, x);
      return paramBuffer;
    }
    catch (Exception paramBuffer)
    {
      throw new JSchException(paramBuffer.toString(), paramBuffer);
    }
  }
  
  private void c(Packet paramPacket)
  {
    synchronized (W)
    {
      a(paramPacket);
      if (Q != null)
      {
        Q.a(paramPacket);
        H += 1;
      }
      return;
    }
  }
  
  static boolean f(String paramString)
  {
    try
    {
      paramString = (Cipher)Class.forName(paramString).newInstance();
      paramString.a(0, new byte[paramString.b()], new byte[paramString.a()]);
      return true;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  private Session.Forwarding g(String paramString)
  {
    int i2 = 0;
    Object localObject = paramString.split(" ");
    int i1;
    if (localObject.length > 1)
    {
      paramString = new Vector();
      i1 = 0;
      if (i1 < localObject.length) {
        break label136;
      }
      localObject = new StringBuffer();
      i1 = i2;
    }
    Session.Forwarding localForwarding;
    for (;;)
    {
      if (i1 >= paramString.size())
      {
        paramString = ((StringBuffer)localObject).toString();
        localForwarding = new Session.Forwarding(this, null);
        try
        {
          if (paramString.lastIndexOf(":") != -1) {
            break label207;
          }
          throw new JSchException("parseForwarding: " + paramString);
        }
        catch (NumberFormatException paramString)
        {
          throw new JSchException("parseForwarding: " + paramString.toString());
        }
        label136:
        if (localObject[i1].length() == 0) {}
        for (;;)
        {
          i1 += 1;
          break;
          paramString.addElement(localObject[i1].trim());
        }
      }
      ((StringBuffer)localObject).append((String)paramString.elementAt(i1));
      if (i1 + 1 < paramString.size()) {
        ((StringBuffer)localObject).append(":");
      }
      i1 += 1;
    }
    label207:
    d = Integer.parseInt(paramString.substring(paramString.lastIndexOf(":") + 1));
    localObject = paramString.substring(0, paramString.lastIndexOf(":"));
    if (((String)localObject).lastIndexOf(":") == -1) {
      throw new JSchException("parseForwarding: " + paramString);
    }
    c = ((String)localObject).substring(((String)localObject).lastIndexOf(":") + 1);
    paramString = ((String)localObject).substring(0, ((String)localObject).lastIndexOf(":"));
    if (paramString.lastIndexOf(":") != -1)
    {
      b = Integer.parseInt(paramString.substring(paramString.lastIndexOf(":") + 1));
      localObject = paramString.substring(0, paramString.lastIndexOf(":"));
      if (((String)localObject).length() == 0) {
        break label431;
      }
      paramString = (String)localObject;
      if (((String)localObject).equals("*")) {
        break label431;
      }
    }
    for (;;)
    {
      localObject = paramString;
      if (paramString.equals("localhost")) {
        localObject = "127.0.0.1";
      }
      a = ((String)localObject);
      return localForwarding;
      b = Integer.parseInt(paramString);
      a = "127.0.0.1";
      return localForwarding;
      label431:
      paramString = "0.0.0.0";
    }
  }
  
  private void h(String paramString)
  {
    if (paramString.equals("none")) {
      O = null;
    }
    String str;
    do
    {
      return;
      str = d(paramString);
    } while ((str == null) || ((!paramString.equals("zlib")) && ((!U) || (!paramString.equals("zlib@openssh.com")))));
    try
    {
      O = ((Compression)Class.forName(str).newInstance());
      i1 = 6;
    }
    catch (NoClassDefFoundError paramString)
    {
      int i1;
      int i2;
      throw new JSchException(paramString.toString(), paramString);
    }
    catch (Exception paramString)
    {
      label86:
      throw new JSchException(paramString.toString(), paramString);
    }
    try
    {
      i2 = Integer.parseInt(d("compression_level"));
      i1 = i2;
    }
    catch (Exception paramString)
    {
      break label86;
    }
    O.a(1, i1);
  }
  
  private void i(String paramString)
  {
    if (paramString.equals("none")) {
      P = null;
    }
    String str;
    do
    {
      return;
      str = d(paramString);
    } while ((str == null) || ((!paramString.equals("zlib")) && ((!U) || (!paramString.equals("zlib@openssh.com")))));
    try
    {
      P = ((Compression)Class.forName(str).newInstance());
      P.a(0, 0);
      return;
    }
    catch (Exception paramString)
    {
      throw new JSchException(paramString.toString(), paramString);
    }
  }
  
  private String[] j(String paramString)
  {
    int i2 = 0;
    if ((paramString == null) || (paramString.length() == 0)) {
      paramString = null;
    }
    Object localObject;
    do
    {
      return paramString;
      if (JSch.d().a(1)) {
        JSch.d().a(1, "CheckCiphers: " + paramString);
      }
      localObject = d("cipher.c2s");
      String str1 = d("cipher.s2c");
      Vector localVector = new Vector();
      paramString = Util.a(paramString, ",");
      i1 = 0;
      if (i1 >= paramString.length)
      {
        if (localVector.size() == 0) {
          return null;
        }
      }
      else
      {
        String str2 = paramString[i1];
        if ((str1.indexOf(str2) == -1) && (((String)localObject).indexOf(str2) == -1)) {}
        for (;;)
        {
          i1 += 1;
          break;
          if (!f(d(str2))) {
            localVector.addElement(str2);
          }
        }
      }
      localObject = new String[localVector.size()];
      System.arraycopy(localVector.toArray(), 0, localObject, 0, localVector.size());
      paramString = (String)localObject;
    } while (!JSch.d().a(1));
    int i1 = i2;
    for (;;)
    {
      paramString = (String)localObject;
      if (i1 >= localObject.length) {
        break;
      }
      JSch.d().a(1, localObject[i1] + " is not available.");
      i1 += 1;
    }
  }
  
  private void k()
  {
    if (ag) {}
    for (;;)
    {
      return;
      ??? = d("cipher.c2s");
      Object localObject4 = d("cipher.s2c");
      Object localObject6 = j(d("CheckCiphers"));
      Object localObject1 = localObject4;
      Object localObject3 = ???;
      if (localObject6 != null)
      {
        localObject1 = localObject4;
        localObject3 = ???;
        if (localObject6.length > 0)
        {
          localObject3 = Util.a((String)???, (String[])localObject6);
          localObject4 = Util.a((String)localObject4, (String[])localObject6);
          if (localObject3 != null)
          {
            localObject1 = localObject4;
            if (localObject4 != null) {}
          }
          else
          {
            throw new JSchException("There are not any available ciphers.");
          }
        }
      }
      ??? = d("kex");
      localObject6 = k(d("CheckKexes"));
      localObject4 = ???;
      if (localObject6 != null)
      {
        localObject4 = ???;
        if (localObject6.length > 0)
        {
          ??? = Util.a((String)???, (String[])localObject6);
          localObject4 = ???;
          if (??? == null) {
            throw new JSchException("There are not any available kexes.");
          }
        }
      }
      ag = true;
      af = System.currentTimeMillis();
      localObject6 = new Buffer();
      Packet localPacket = new Packet((Buffer)localObject6);
      localPacket.a();
      ((Buffer)localObject6).a((byte)20);
      synchronized (f)
      {
        f.a(b, c, 16);
        ((Buffer)localObject6).b(16);
        ((Buffer)localObject6).b(Util.b((String)localObject4));
        ((Buffer)localObject6).b(Util.b(d("server_host_key")));
        ((Buffer)localObject6).b(Util.b((String)localObject3));
        ((Buffer)localObject6).b(Util.b((String)localObject1));
        ((Buffer)localObject6).b(Util.b(d("mac.c2s")));
        ((Buffer)localObject6).b(Util.b(d("mac.s2c")));
        ((Buffer)localObject6).b(Util.b(d("compression.c2s")));
        ((Buffer)localObject6).b(Util.b(d("compression.s2c")));
        ((Buffer)localObject6).b(Util.b(d("lang.c2s")));
        ((Buffer)localObject6).b(Util.b(d("lang.s2c")));
        ((Buffer)localObject6).a((byte)0);
        ((Buffer)localObject6).a(0);
        ((Buffer)localObject6).c(5);
        x = new byte[((Buffer)localObject6).a()];
        ((Buffer)localObject6).d(x);
        b(localPacket);
        if (!JSch.d().a(1)) {
          continue;
        }
        JSch.d().a(1, "SSH_MSG_KEXINIT sent");
        return;
      }
    }
  }
  
  private String[] k(String paramString)
  {
    int i2 = 0;
    if ((paramString == null) || (paramString.length() == 0)) {
      paramString = null;
    }
    String[] arrayOfString;
    do
    {
      return paramString;
      if (JSch.d().a(1)) {
        JSch.d().a(1, "CheckKexes: " + paramString);
      }
      Vector localVector = new Vector();
      paramString = Util.a(paramString, ",");
      i1 = 0;
      for (;;)
      {
        if (i1 >= paramString.length)
        {
          if (localVector.size() != 0) {
            break;
          }
          return null;
        }
        if (!a(this, d(paramString[i1]))) {
          localVector.addElement(paramString[i1]);
        }
        i1 += 1;
      }
      arrayOfString = new String[localVector.size()];
      System.arraycopy(localVector.toArray(), 0, arrayOfString, 0, localVector.size());
      paramString = arrayOfString;
    } while (!JSch.d().a(1));
    int i1 = i2;
    for (;;)
    {
      paramString = arrayOfString;
      if (i1 >= arrayOfString.length) {
        break;
      }
      JSch.d().a(1, arrayOfString[i1] + " is not available.");
      i1 += 1;
    }
  }
  
  private void l()
  {
    h.a();
    g.a((byte)21);
    b(h);
    if (JSch.d().a(1)) {
      JSch.d().a(1, "SSH_MSG_NEWKEYS sent");
    }
  }
  
  private void m()
  {
    Object localObject1 = r.b();
    if (localObject1 == null) {}
    for (;;)
    {
      return;
      ConfigRepository.Config localConfig = ((ConfigRepository)localObject1).a(n);
      String str = localConfig.b();
      if (str != null) {
        p = str;
      }
      str = localConfig.a();
      if (str != null) {
        m = str;
      }
      int i1 = localConfig.c();
      if (i1 != -1) {
        o = i1;
      }
      a(localConfig, "kex");
      a(localConfig, "server_host_key");
      a(localConfig, "cipher.c2s");
      a(localConfig, "cipher.s2c");
      a(localConfig, "mac.c2s");
      a(localConfig, "mac.s2c");
      a(localConfig, "compression.c2s");
      a(localConfig, "compression.s2c");
      a(localConfig, "compression_level");
      a(localConfig, "StrictHostKeyChecking");
      a(localConfig, "HashKnownHosts");
      a(localConfig, "PreferredAuthentications");
      a(localConfig, "MaxAuthTries");
      a(localConfig, "ClearAllForwardings");
      str = localConfig.a("HostKeyAlias");
      if (str != null) {
        e(str);
      }
      str = localConfig.a("UserKnownHostsFile");
      if (str != null)
      {
        localObject2 = new KnownHosts(r);
        ((KnownHosts)localObject2).a(str);
        a((HostKeyRepository)localObject2);
      }
      Object localObject2 = localConfig.b("IdentityFile");
      label316:
      label322:
      IdentityRepository.Wrapper localWrapper;
      if (localObject2 != null)
      {
        localObject1 = ((ConfigRepository)localObject1).a("").b("IdentityFile");
        if (localObject1 == null) {
          break label473;
        }
        i1 = 0;
        if (i1 < localObject1.length) {
          break label456;
        }
        if (localObject2.length - localObject1.length > 0)
        {
          localWrapper = new IdentityRepository.Wrapper(r.a(), true);
          i1 = 0;
          if (i1 < localObject2.length) {
            break label481;
          }
          a(localWrapper);
        }
      }
      localObject1 = localConfig.a("ServerAliveInterval");
      if (localObject1 != null) {}
      try
      {
        c(Integer.parseInt((String)localObject1));
        localObject1 = localConfig.a("ConnectTimeout");
        if (localObject1 != null) {}
        try
        {
          b(Integer.parseInt((String)localObject1));
          localObject1 = localConfig.a("MaxAuthTries");
          if (localObject1 != null) {
            a("MaxAuthTries", (String)localObject1);
          }
          localObject1 = localConfig.a("ClearAllForwardings");
          if (localObject1 == null) {
            continue;
          }
          a("ClearAllForwardings", (String)localObject1);
          return;
          label456:
          r.a(localObject1[i1]);
          i1 += 1;
          break label316;
          label473:
          localObject1 = new String[0];
          break label322;
          label481:
          str = localObject2[i1];
          int i2 = 0;
          label489:
          if (i2 >= localObject1.length) {
            label495:
            if (str != null) {
              break label531;
            }
          }
          for (;;)
          {
            i1 += 1;
            break;
            if (!str.equals(localObject1[i2]))
            {
              i2 += 1;
              break label489;
            }
            str = null;
            break label495;
            label531:
            localWrapper.a(IdentityFile.a(str, null, r));
          }
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          for (;;) {}
        }
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        for (;;) {}
      }
    }
  }
  
  private void n()
  {
    int i2 = 0;
    if (d("ClearAllForwardings").equals("yes")) {}
    do
    {
      return;
      localObject = r.b();
    } while (localObject == null);
    Object localObject = ((ConfigRepository)localObject).a(n);
    String[] arrayOfString = ((ConfigRepository.Config)localObject).b("LocalForward");
    int i1;
    if (arrayOfString != null) {
      i1 = 0;
    }
    for (;;)
    {
      if (i1 >= arrayOfString.length)
      {
        localObject = ((ConfigRepository.Config)localObject).b("RemoteForward");
        if (localObject == null) {
          break;
        }
        i1 = i2;
        while (i1 < localObject.length)
        {
          c(localObject[i1]);
          i1 += 1;
        }
        break;
      }
      b(arrayOfString[i1]);
      i1 += 1;
    }
  }
  
  public int a(String paramString1, int paramInt1, String paramString2, int paramInt2)
  {
    return a(paramString1, paramInt1, paramString2, paramInt2, null);
  }
  
  public int a(String paramString1, int paramInt1, String paramString2, int paramInt2, ServerSocketFactory paramServerSocketFactory)
  {
    return a(paramString1, paramInt1, paramString2, paramInt2, paramServerSocketFactory, 0);
  }
  
  public int a(String paramString1, int paramInt1, String paramString2, int paramInt2, ServerSocketFactory paramServerSocketFactory, int paramInt3)
  {
    paramString1 = PortWatcher.a(this, paramString1, paramInt1, paramString2, paramInt2, paramServerSocketFactory);
    paramString1.a(paramInt3);
    paramServerSocketFactory = new Thread(paramString1);
    paramServerSocketFactory.setName("PortWatcher Thread for " + paramString2);
    if (j) {
      paramServerSocketFactory.setDaemon(j);
    }
    paramServerSocketFactory.start();
    return b;
  }
  
  public Buffer a(Buffer paramBuffer)
  {
    int i1;
    Object localObject;
    for (;;)
    {
      paramBuffer.k();
      Q.c(b, c, ah);
      c += ah;
      if (I != null) {
        I.a(b, 0, ah, b, 0);
      }
      i1 = b[0] << 24 & 0xFF000000 | b[1] << 16 & 0xFF0000 | b[2] << 8 & 0xFF00 | b[3] & 0xFF;
      if ((i1 < 5) || (i1 > 262144)) {
        a(paramBuffer, I, K, i1, 262144);
      }
      int i2 = i1 + 4 - ah;
      if (c + i2 > b.length)
      {
        localObject = new byte[c + i2];
        System.arraycopy(b, 0, localObject, 0, c);
        b = ((byte[])localObject);
      }
      if (i2 % ah != 0)
      {
        localObject = "Bad packet length " + i2;
        if (JSch.d().a(4)) {
          JSch.d().a(4, (String)localObject);
        }
        a(paramBuffer, I, K, i1, 262144 - ah);
      }
      if (i2 > 0)
      {
        Q.c(b, c, i2);
        c += i2;
        if (I != null) {
          I.a(b, ah, i2, b, ah);
        }
      }
      if (K == null) {
        break;
      }
      K.a(G);
      K.a(b, 0, c);
      K.a(M, 0);
      Q.c(N, 0, N.length);
      if (Arrays.equals(M, N)) {
        break;
      }
      if (i2 > 262144) {
        throw new IOException("MAC Error");
      }
      a(paramBuffer, I, K, i1, 262144 - i2);
    }
    G += 1;
    if (P != null)
    {
      i1 = b[4];
      s[0] = (c - 5 - i1);
      localObject = P.b(b, 5, s);
      if (localObject != null)
      {
        b = ((byte[])localObject);
        c = (s[0] + 5);
      }
    }
    else
    {
      i1 = paramBuffer.n() & 0xFF;
      if (i1 != 1) {
        break label653;
      }
      paramBuffer.m();
      paramBuffer.d();
      paramBuffer.f();
      i1 = paramBuffer.d();
      localObject = paramBuffer.j();
      paramBuffer = paramBuffer.j();
      throw new JSchException("SSH_MSG_DISCONNECT: " + i1 + " " + Util.b((byte[])localObject) + " " + Util.b(paramBuffer));
    }
    System.err.println("fail in inflater");
    for (;;)
    {
      paramBuffer.m();
      return paramBuffer;
      label653:
      if (i1 == 2) {
        break;
      }
      if (i1 == 3)
      {
        paramBuffer.m();
        paramBuffer.d();
        paramBuffer.f();
        i1 = paramBuffer.d();
        if (!JSch.d().a(1)) {
          break;
        }
        JSch.d().a(1, "Received SSH_MSG_UNIMPLEMENTED for " + i1);
        break;
      }
      if (i1 == 4)
      {
        paramBuffer.m();
        paramBuffer.d();
        paramBuffer.f();
        break;
      }
      if (i1 == 93)
      {
        paramBuffer.m();
        paramBuffer.d();
        paramBuffer.f();
        localObject = Channel.a(paramBuffer.d(), this);
        if (localObject == null) {
          break;
        }
        ((Channel)localObject).b(paramBuffer.e());
        break;
      }
      if (i1 == 52)
      {
        U = true;
        if ((P == null) && (O == null))
        {
          h(a[6]);
          i(a[7]);
        }
      }
    }
  }
  
  public Channel a(String paramString)
  {
    if (!T) {
      throw new JSchException("session is down");
    }
    try
    {
      paramString = Channel.a(paramString);
      a(paramString);
      paramString.b();
      if ((paramString instanceof ChannelSession)) {
        a((ChannelSession)paramString);
      }
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  /* Error */
  public void a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 133	com/jcraft/jsch/Session:T	Z
    //   4: ifeq +14 -> 18
    //   7: new 236	com/jcraft/jsch/JSchException
    //   10: dup
    //   11: ldc_w 978
    //   14: invokespecial 241	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   17: athrow
    //   18: aload_0
    //   19: new 332	com/jcraft/jsch/IO
    //   22: dup
    //   23: invokespecial 979	com/jcraft/jsch/IO:<init>	()V
    //   26: putfield 330	com/jcraft/jsch/Session:Q	Lcom/jcraft/jsch/IO;
    //   29: getstatic 778	com/jcraft/jsch/Session:f	Lcom/jcraft/jsch/Random;
    //   32: ifnonnull +22 -> 54
    //   35: aload_0
    //   36: ldc_w 981
    //   39: invokevirtual 416	com/jcraft/jsch/Session:d	(Ljava/lang/String;)Ljava/lang/String;
    //   42: invokestatic 422	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   45: invokevirtual 426	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   48: checkcast 780	com/jcraft/jsch/Random
    //   51: putstatic 778	com/jcraft/jsch/Session:f	Lcom/jcraft/jsch/Random;
    //   54: getstatic 778	com/jcraft/jsch/Session:f	Lcom/jcraft/jsch/Random;
    //   57: invokestatic 984	com/jcraft/jsch/Packet:a	(Lcom/jcraft/jsch/Random;)V
    //   60: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   63: iconst_1
    //   64: invokeinterface 565 2 0
    //   69: ifeq +45 -> 114
    //   72: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   75: iconst_1
    //   76: new 283	java/lang/StringBuilder
    //   79: dup
    //   80: ldc_w 986
    //   83: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   86: aload_0
    //   87: getfield 175	com/jcraft/jsch/Session:m	Ljava/lang/String;
    //   90: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: ldc_w 988
    //   96: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: aload_0
    //   100: getfield 179	com/jcraft/jsch/Session:o	I
    //   103: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   106: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   109: invokeinterface 574 3 0
    //   114: aload_0
    //   115: getfield 153	com/jcraft/jsch/Session:Y	Lcom/jcraft/jsch/Proxy;
    //   118: ifnonnull +414 -> 532
    //   121: aload_0
    //   122: getfield 149	com/jcraft/jsch/Session:i	Lcom/jcraft/jsch/SocketFactory;
    //   125: ifnonnull +353 -> 478
    //   128: aload_0
    //   129: aload_0
    //   130: getfield 175	com/jcraft/jsch/Session:m	Ljava/lang/String;
    //   133: aload_0
    //   134: getfield 179	com/jcraft/jsch/Session:o	I
    //   137: iload_1
    //   138: invokestatic 991	com/jcraft/jsch/Util:a	(Ljava/lang/String;II)Ljava/net/Socket;
    //   141: putfield 993	com/jcraft/jsch/Session:R	Ljava/net/Socket;
    //   144: aload_0
    //   145: getfield 993	com/jcraft/jsch/Session:R	Ljava/net/Socket;
    //   148: invokevirtual 999	java/net/Socket:getInputStream	()Ljava/io/InputStream;
    //   151: astore 9
    //   153: aload_0
    //   154: getfield 993	com/jcraft/jsch/Session:R	Ljava/net/Socket;
    //   157: invokevirtual 1003	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   160: astore 8
    //   162: aload_0
    //   163: getfield 993	com/jcraft/jsch/Session:R	Ljava/net/Socket;
    //   166: iconst_1
    //   167: invokevirtual 1006	java/net/Socket:setTcpNoDelay	(Z)V
    //   170: aload_0
    //   171: getfield 330	com/jcraft/jsch/Session:Q	Lcom/jcraft/jsch/IO;
    //   174: aload 9
    //   176: invokevirtual 1009	com/jcraft/jsch/IO:a	(Ljava/io/InputStream;)V
    //   179: aload_0
    //   180: getfield 330	com/jcraft/jsch/Session:Q	Lcom/jcraft/jsch/IO;
    //   183: aload 8
    //   185: invokevirtual 1012	com/jcraft/jsch/IO:a	(Ljava/io/OutputStream;)V
    //   188: iload_1
    //   189: ifle +18 -> 207
    //   192: aload_0
    //   193: getfield 993	com/jcraft/jsch/Session:R	Ljava/net/Socket;
    //   196: ifnull +11 -> 207
    //   199: aload_0
    //   200: getfield 993	com/jcraft/jsch/Session:R	Ljava/net/Socket;
    //   203: iload_1
    //   204: invokevirtual 1015	java/net/Socket:setSoTimeout	(I)V
    //   207: aload_0
    //   208: iconst_1
    //   209: putfield 133	com/jcraft/jsch/Session:T	Z
    //   212: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   215: iconst_1
    //   216: invokeinterface 565 2 0
    //   221: ifeq +15 -> 236
    //   224: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   227: iconst_1
    //   228: ldc_w 1017
    //   231: invokeinterface 574 3 0
    //   236: aload_0
    //   237: getfield 204	com/jcraft/jsch/Session:r	Lcom/jcraft/jsch/JSch;
    //   240: aload_0
    //   241: invokevirtual 1020	com/jcraft/jsch/JSch:a	(Lcom/jcraft/jsch/Session;)V
    //   244: aload_0
    //   245: getfield 123	com/jcraft/jsch/Session:w	[B
    //   248: arraylength
    //   249: iconst_1
    //   250: iadd
    //   251: newarray <illegal type>
    //   253: astore 8
    //   255: aload_0
    //   256: getfield 123	com/jcraft/jsch/Session:w	[B
    //   259: iconst_0
    //   260: aload 8
    //   262: iconst_0
    //   263: aload_0
    //   264: getfield 123	com/jcraft/jsch/Session:w	[B
    //   267: arraylength
    //   268: invokestatic 393	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   271: aload 8
    //   273: aload 8
    //   275: arraylength
    //   276: iconst_1
    //   277: isub
    //   278: bipush 10
    //   280: bastore
    //   281: aload_0
    //   282: getfield 330	com/jcraft/jsch/Session:Q	Lcom/jcraft/jsch/IO;
    //   285: aload 8
    //   287: iconst_0
    //   288: aload 8
    //   290: arraylength
    //   291: invokevirtual 1021	com/jcraft/jsch/IO:a	([BII)V
    //   294: goto +1984 -> 2278
    //   297: iload_2
    //   298: aload_0
    //   299: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   302: getfield 321	com/jcraft/jsch/Buffer:b	[B
    //   305: arraylength
    //   306: if_icmplt +316 -> 622
    //   309: iload_3
    //   310: ifge +371 -> 681
    //   313: new 236	com/jcraft/jsch/JSchException
    //   316: dup
    //   317: ldc_w 1023
    //   320: invokespecial 241	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   323: athrow
    //   324: astore 8
    //   326: aload_0
    //   327: iconst_0
    //   328: putfield 185	com/jcraft/jsch/Session:ag	Z
    //   331: aload_0
    //   332: getfield 133	com/jcraft/jsch/Session:T	Z
    //   335: ifeq +86 -> 421
    //   338: aload 8
    //   340: invokevirtual 297	java/lang/Exception:toString	()Ljava/lang/String;
    //   343: astore 9
    //   345: aload_0
    //   346: getfield 216	com/jcraft/jsch/Session:h	Lcom/jcraft/jsch/Packet;
    //   349: invokevirtual 265	com/jcraft/jsch/Packet:a	()V
    //   352: aload_0
    //   353: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   356: aload 9
    //   358: invokevirtual 676	java/lang/String:length	()I
    //   361: bipush 13
    //   363: iadd
    //   364: iconst_2
    //   365: iadd
    //   366: bipush 84
    //   368: iadd
    //   369: invokevirtual 1025	com/jcraft/jsch/Buffer:e	(I)V
    //   372: aload_0
    //   373: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   376: iconst_1
    //   377: invokevirtual 268	com/jcraft/jsch/Buffer:a	(B)V
    //   380: aload_0
    //   381: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   384: iconst_3
    //   385: invokevirtual 275	com/jcraft/jsch/Buffer:a	(I)V
    //   388: aload_0
    //   389: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   392: aload 9
    //   394: invokestatic 106	com/jcraft/jsch/Util:b	(Ljava/lang/String;)[B
    //   397: invokevirtual 273	com/jcraft/jsch/Buffer:b	([B)V
    //   400: aload_0
    //   401: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   404: ldc_w 1027
    //   407: invokestatic 106	com/jcraft/jsch/Util:b	(Ljava/lang/String;)[B
    //   410: invokevirtual 273	com/jcraft/jsch/Buffer:b	([B)V
    //   413: aload_0
    //   414: aload_0
    //   415: getfield 216	com/jcraft/jsch/Session:h	Lcom/jcraft/jsch/Packet;
    //   418: invokevirtual 278	com/jcraft/jsch/Session:b	(Lcom/jcraft/jsch/Packet;)V
    //   421: aload_0
    //   422: invokevirtual 1028	com/jcraft/jsch/Session:b	()V
    //   425: aload_0
    //   426: iconst_0
    //   427: putfield 133	com/jcraft/jsch/Session:T	Z
    //   430: aload 8
    //   432: instanceof 976
    //   435: ifeq +1744 -> 2179
    //   438: aload 8
    //   440: checkcast 976	java/lang/RuntimeException
    //   443: athrow
    //   444: astore 8
    //   446: aload_0
    //   447: getfield 183	com/jcraft/jsch/Session:q	[B
    //   450: invokestatic 613	com/jcraft/jsch/Util:d	([B)V
    //   453: aload_0
    //   454: aconst_null
    //   455: putfield 183	com/jcraft/jsch/Session:q	[B
    //   458: aload 8
    //   460: athrow
    //   461: astore 8
    //   463: new 236	com/jcraft/jsch/JSchException
    //   466: dup
    //   467: aload 8
    //   469: invokevirtual 297	java/lang/Exception:toString	()Ljava/lang/String;
    //   472: aload 8
    //   474: invokespecial 300	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   477: athrow
    //   478: aload_0
    //   479: aload_0
    //   480: getfield 149	com/jcraft/jsch/Session:i	Lcom/jcraft/jsch/SocketFactory;
    //   483: aload_0
    //   484: getfield 175	com/jcraft/jsch/Session:m	Ljava/lang/String;
    //   487: aload_0
    //   488: getfield 179	com/jcraft/jsch/Session:o	I
    //   491: invokeinterface 1033 3 0
    //   496: putfield 993	com/jcraft/jsch/Session:R	Ljava/net/Socket;
    //   499: aload_0
    //   500: getfield 149	com/jcraft/jsch/Session:i	Lcom/jcraft/jsch/SocketFactory;
    //   503: aload_0
    //   504: getfield 993	com/jcraft/jsch/Session:R	Ljava/net/Socket;
    //   507: invokeinterface 1036 2 0
    //   512: astore 9
    //   514: aload_0
    //   515: getfield 149	com/jcraft/jsch/Session:i	Lcom/jcraft/jsch/SocketFactory;
    //   518: aload_0
    //   519: getfield 993	com/jcraft/jsch/Session:R	Ljava/net/Socket;
    //   522: invokeinterface 1039 2 0
    //   527: astore 8
    //   529: goto -367 -> 162
    //   532: aload_0
    //   533: getfield 153	com/jcraft/jsch/Session:Y	Lcom/jcraft/jsch/Proxy;
    //   536: astore 8
    //   538: aload 8
    //   540: monitorenter
    //   541: aload_0
    //   542: getfield 153	com/jcraft/jsch/Session:Y	Lcom/jcraft/jsch/Proxy;
    //   545: aload_0
    //   546: getfield 149	com/jcraft/jsch/Session:i	Lcom/jcraft/jsch/SocketFactory;
    //   549: aload_0
    //   550: getfield 175	com/jcraft/jsch/Session:m	Ljava/lang/String;
    //   553: aload_0
    //   554: getfield 179	com/jcraft/jsch/Session:o	I
    //   557: iload_1
    //   558: invokeinterface 1044 5 0
    //   563: aload_0
    //   564: getfield 330	com/jcraft/jsch/Session:Q	Lcom/jcraft/jsch/IO;
    //   567: aload_0
    //   568: getfield 153	com/jcraft/jsch/Session:Y	Lcom/jcraft/jsch/Proxy;
    //   571: invokeinterface 1046 1 0
    //   576: invokevirtual 1009	com/jcraft/jsch/IO:a	(Ljava/io/InputStream;)V
    //   579: aload_0
    //   580: getfield 330	com/jcraft/jsch/Session:Q	Lcom/jcraft/jsch/IO;
    //   583: aload_0
    //   584: getfield 153	com/jcraft/jsch/Session:Y	Lcom/jcraft/jsch/Proxy;
    //   587: invokeinterface 1048 1 0
    //   592: invokevirtual 1012	com/jcraft/jsch/IO:a	(Ljava/io/OutputStream;)V
    //   595: aload_0
    //   596: aload_0
    //   597: getfield 153	com/jcraft/jsch/Session:Y	Lcom/jcraft/jsch/Proxy;
    //   600: invokeinterface 1051 1 0
    //   605: putfield 993	com/jcraft/jsch/Session:R	Ljava/net/Socket;
    //   608: aload 8
    //   610: monitorexit
    //   611: goto -423 -> 188
    //   614: astore 9
    //   616: aload 8
    //   618: monitorexit
    //   619: aload 9
    //   621: athrow
    //   622: aload_0
    //   623: getfield 330	com/jcraft/jsch/Session:Q	Lcom/jcraft/jsch/IO;
    //   626: invokevirtual 1052	com/jcraft/jsch/IO:a	()I
    //   629: istore 4
    //   631: iload 4
    //   633: ifge +9 -> 642
    //   636: iload 4
    //   638: istore_3
    //   639: goto -330 -> 309
    //   642: aload_0
    //   643: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   646: getfield 321	com/jcraft/jsch/Buffer:b	[B
    //   649: iload_2
    //   650: iload 4
    //   652: i2b
    //   653: bastore
    //   654: iload_2
    //   655: iconst_1
    //   656: iadd
    //   657: istore 5
    //   659: iload 4
    //   661: istore_3
    //   662: iload 5
    //   664: istore_2
    //   665: iload 4
    //   667: bipush 10
    //   669: if_icmpne -372 -> 297
    //   672: iload 5
    //   674: istore_2
    //   675: iload 4
    //   677: istore_3
    //   678: goto -369 -> 309
    //   681: iload_2
    //   682: istore_3
    //   683: aload_0
    //   684: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   687: getfield 321	com/jcraft/jsch/Buffer:b	[B
    //   690: iload_2
    //   691: iconst_1
    //   692: isub
    //   693: baload
    //   694: bipush 10
    //   696: if_icmpne +35 -> 731
    //   699: iload_2
    //   700: iconst_1
    //   701: isub
    //   702: istore_2
    //   703: iload_2
    //   704: istore_3
    //   705: iload_2
    //   706: ifle +25 -> 731
    //   709: iload_2
    //   710: istore_3
    //   711: aload_0
    //   712: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   715: getfield 321	com/jcraft/jsch/Buffer:b	[B
    //   718: iload_2
    //   719: iconst_1
    //   720: isub
    //   721: baload
    //   722: bipush 13
    //   724: if_icmpne +7 -> 731
    //   727: iload_2
    //   728: iconst_1
    //   729: isub
    //   730: istore_3
    //   731: iload_3
    //   732: iconst_3
    //   733: if_icmple +1545 -> 2278
    //   736: iload_3
    //   737: aload_0
    //   738: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   741: getfield 321	com/jcraft/jsch/Buffer:b	[B
    //   744: arraylength
    //   745: if_icmpeq +59 -> 804
    //   748: aload_0
    //   749: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   752: getfield 321	com/jcraft/jsch/Buffer:b	[B
    //   755: iconst_0
    //   756: baload
    //   757: bipush 83
    //   759: if_icmpne +1519 -> 2278
    //   762: aload_0
    //   763: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   766: getfield 321	com/jcraft/jsch/Buffer:b	[B
    //   769: iconst_1
    //   770: baload
    //   771: bipush 83
    //   773: if_icmpne +1505 -> 2278
    //   776: aload_0
    //   777: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   780: getfield 321	com/jcraft/jsch/Buffer:b	[B
    //   783: iconst_2
    //   784: baload
    //   785: bipush 72
    //   787: if_icmpne +1491 -> 2278
    //   790: aload_0
    //   791: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   794: getfield 321	com/jcraft/jsch/Buffer:b	[B
    //   797: iconst_3
    //   798: baload
    //   799: bipush 45
    //   801: if_icmpne +1477 -> 2278
    //   804: iload_3
    //   805: aload_0
    //   806: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   809: getfield 321	com/jcraft/jsch/Buffer:b	[B
    //   812: arraylength
    //   813: if_icmpeq +38 -> 851
    //   816: iload_3
    //   817: bipush 7
    //   819: if_icmplt +32 -> 851
    //   822: aload_0
    //   823: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   826: getfield 321	com/jcraft/jsch/Buffer:b	[B
    //   829: iconst_4
    //   830: baload
    //   831: bipush 49
    //   833: if_icmpne +29 -> 862
    //   836: aload_0
    //   837: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   840: getfield 321	com/jcraft/jsch/Buffer:b	[B
    //   843: bipush 6
    //   845: baload
    //   846: bipush 57
    //   848: if_icmpeq +14 -> 862
    //   851: new 236	com/jcraft/jsch/JSchException
    //   854: dup
    //   855: ldc_w 1054
    //   858: invokespecial 241	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   861: athrow
    //   862: aload_0
    //   863: iload_3
    //   864: newarray <illegal type>
    //   866: putfield 637	com/jcraft/jsch/Session:v	[B
    //   869: aload_0
    //   870: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   873: getfield 321	com/jcraft/jsch/Buffer:b	[B
    //   876: iconst_0
    //   877: aload_0
    //   878: getfield 637	com/jcraft/jsch/Session:v	[B
    //   881: iconst_0
    //   882: iload_3
    //   883: invokestatic 393	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   886: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   889: iconst_1
    //   890: invokeinterface 565 2 0
    //   895: ifeq +67 -> 962
    //   898: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   901: iconst_1
    //   902: new 283	java/lang/StringBuilder
    //   905: dup
    //   906: ldc_w 1056
    //   909: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   912: aload_0
    //   913: getfield 637	com/jcraft/jsch/Session:v	[B
    //   916: invokestatic 557	com/jcraft/jsch/Util:b	([B)Ljava/lang/String;
    //   919: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   922: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   925: invokeinterface 574 3 0
    //   930: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   933: iconst_1
    //   934: new 283	java/lang/StringBuilder
    //   937: dup
    //   938: ldc_w 1058
    //   941: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   944: aload_0
    //   945: getfield 123	com/jcraft/jsch/Session:w	[B
    //   948: invokestatic 557	com/jcraft/jsch/Util:b	([B)Ljava/lang/String;
    //   951: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   954: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   957: invokeinterface 574 3 0
    //   962: aload_0
    //   963: invokespecial 624	com/jcraft/jsch/Session:k	()V
    //   966: aload_0
    //   967: aload_0
    //   968: aload_0
    //   969: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   972: invokevirtual 1060	com/jcraft/jsch/Session:a	(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    //   975: putfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   978: aload_0
    //   979: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   982: invokevirtual 929	com/jcraft/jsch/Buffer:n	()B
    //   985: bipush 20
    //   987: if_icmpeq +39 -> 1026
    //   990: aload_0
    //   991: iconst_0
    //   992: putfield 185	com/jcraft/jsch/Session:ag	Z
    //   995: new 236	com/jcraft/jsch/JSchException
    //   998: dup
    //   999: new 283	java/lang/StringBuilder
    //   1002: dup
    //   1003: ldc_w 1062
    //   1006: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1009: aload_0
    //   1010: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   1013: invokevirtual 929	com/jcraft/jsch/Buffer:n	()B
    //   1016: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1019: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1022: invokespecial 241	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   1025: athrow
    //   1026: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1029: iconst_1
    //   1030: invokeinterface 565 2 0
    //   1035: ifeq +15 -> 1050
    //   1038: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1041: iconst_1
    //   1042: ldc_w 1064
    //   1045: invokeinterface 574 3 0
    //   1050: aload_0
    //   1051: aload_0
    //   1052: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   1055: invokespecial 1066	com/jcraft/jsch/Session:b	(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;
    //   1058: astore 8
    //   1060: aload_0
    //   1061: aload_0
    //   1062: aload_0
    //   1063: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   1066: invokevirtual 1060	com/jcraft/jsch/Session:a	(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    //   1069: putfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   1072: aload 8
    //   1074: invokevirtual 1067	com/jcraft/jsch/KeyExchange:b	()I
    //   1077: aload_0
    //   1078: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   1081: invokevirtual 929	com/jcraft/jsch/Buffer:n	()B
    //   1084: if_icmpne +57 -> 1141
    //   1087: aload_0
    //   1088: invokestatic 776	java/lang/System:currentTimeMillis	()J
    //   1091: putfield 167	com/jcraft/jsch/Session:af	J
    //   1094: aload 8
    //   1096: aload_0
    //   1097: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   1100: invokevirtual 1070	com/jcraft/jsch/KeyExchange:a	(Lcom/jcraft/jsch/Buffer;)Z
    //   1103: istore 6
    //   1105: iload 6
    //   1107: ifne +70 -> 1177
    //   1110: aload_0
    //   1111: iconst_0
    //   1112: putfield 185	com/jcraft/jsch/Session:ag	Z
    //   1115: new 236	com/jcraft/jsch/JSchException
    //   1118: dup
    //   1119: new 283	java/lang/StringBuilder
    //   1122: dup
    //   1123: ldc_w 1072
    //   1126: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1129: iload 6
    //   1131: invokevirtual 1075	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   1134: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1137: invokespecial 241	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   1140: athrow
    //   1141: aload_0
    //   1142: iconst_0
    //   1143: putfield 185	com/jcraft/jsch/Session:ag	Z
    //   1146: new 236	com/jcraft/jsch/JSchException
    //   1149: dup
    //   1150: new 283	java/lang/StringBuilder
    //   1153: dup
    //   1154: ldc_w 1077
    //   1157: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1160: aload_0
    //   1161: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   1164: invokevirtual 929	com/jcraft/jsch/Buffer:n	()B
    //   1167: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1170: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1173: invokespecial 241	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   1176: athrow
    //   1177: aload 8
    //   1179: invokevirtual 1067	com/jcraft/jsch/KeyExchange:b	()I
    //   1182: istore_2
    //   1183: iload_2
    //   1184: ifne -124 -> 1060
    //   1187: aload_0
    //   1188: aload_0
    //   1189: getfield 175	com/jcraft/jsch/Session:m	Ljava/lang/String;
    //   1192: aload_0
    //   1193: getfield 179	com/jcraft/jsch/Session:o	I
    //   1196: aload 8
    //   1198: invokespecial 1079	com/jcraft/jsch/Session:a	(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    //   1201: aload_0
    //   1202: invokespecial 1081	com/jcraft/jsch/Session:l	()V
    //   1205: aload_0
    //   1206: aload_0
    //   1207: aload_0
    //   1208: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   1211: invokevirtual 1060	com/jcraft/jsch/Session:a	(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    //   1214: putfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   1217: aload_0
    //   1218: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   1221: invokevirtual 929	com/jcraft/jsch/Buffer:n	()B
    //   1224: bipush 21
    //   1226: if_icmpne +265 -> 1491
    //   1229: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1232: iconst_1
    //   1233: invokeinterface 565 2 0
    //   1238: ifeq +15 -> 1253
    //   1241: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1244: iconst_1
    //   1245: ldc_w 1083
    //   1248: invokeinterface 574 3 0
    //   1253: aload_0
    //   1254: aload_0
    //   1255: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   1258: aload 8
    //   1260: invokespecial 1085	com/jcraft/jsch/Session:a	(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    //   1263: aload_0
    //   1264: ldc_w 817
    //   1267: invokevirtual 416	com/jcraft/jsch/Session:d	(Ljava/lang/String;)Ljava/lang/String;
    //   1270: astore 8
    //   1272: aload 8
    //   1274: ifnull +12 -> 1286
    //   1277: aload_0
    //   1278: aload 8
    //   1280: invokestatic 699	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   1283: putfield 169	com/jcraft/jsch/Session:k	I
    //   1286: iconst_0
    //   1287: istore_3
    //   1288: aload_0
    //   1289: ldc_w 1087
    //   1292: invokevirtual 416	com/jcraft/jsch/Session:d	(Ljava/lang/String;)Ljava/lang/String;
    //   1295: invokestatic 422	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   1298: invokevirtual 426	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   1301: checkcast 1089	com/jcraft/jsch/UserAuth
    //   1304: astore 9
    //   1306: aload 9
    //   1308: aload_0
    //   1309: invokevirtual 1092	com/jcraft/jsch/UserAuth:a	(Lcom/jcraft/jsch/Session;)Z
    //   1312: istore 6
    //   1314: aload_0
    //   1315: ldc_w 815
    //   1318: invokevirtual 416	com/jcraft/jsch/Session:d	(Ljava/lang/String;)Ljava/lang/String;
    //   1321: astore 8
    //   1323: aload 8
    //   1325: ldc_w 741
    //   1328: invokestatic 744	com/jcraft/jsch/Util:a	(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    //   1331: astore 12
    //   1333: iload 6
    //   1335: ifne +937 -> 2272
    //   1338: aload 9
    //   1340: checkcast 1094	com/jcraft/jsch/UserAuthNone
    //   1343: invokevirtual 1095	com/jcraft/jsch/UserAuthNone:a	()Ljava/lang/String;
    //   1346: astore 9
    //   1348: aload 9
    //   1350: ifnull +10 -> 1360
    //   1353: aload 9
    //   1355: invokevirtual 1098	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1358: astore 8
    //   1360: aload 8
    //   1362: ldc_w 741
    //   1365: invokestatic 744	com/jcraft/jsch/Util:a	(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    //   1368: astore 10
    //   1370: iconst_0
    //   1371: istore_2
    //   1372: aload 8
    //   1374: astore 9
    //   1376: iload 6
    //   1378: istore 7
    //   1380: iload_3
    //   1381: istore 4
    //   1383: iload 6
    //   1385: ifne +859 -> 2244
    //   1388: iload 6
    //   1390: istore 7
    //   1392: iload_3
    //   1393: istore 4
    //   1395: aload 12
    //   1397: ifnull +847 -> 2244
    //   1400: iload_2
    //   1401: aload 12
    //   1403: arraylength
    //   1404: if_icmplt +881 -> 2285
    //   1407: iload_3
    //   1408: istore_2
    //   1409: iload 6
    //   1411: ifne +620 -> 2031
    //   1414: aload_0
    //   1415: getfield 171	com/jcraft/jsch/Session:l	I
    //   1418: aload_0
    //   1419: getfield 169	com/jcraft/jsch/Session:k	I
    //   1422: if_icmplt +44 -> 1466
    //   1425: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1428: iconst_1
    //   1429: invokeinterface 565 2 0
    //   1434: ifeq +32 -> 1466
    //   1437: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1440: iconst_1
    //   1441: new 283	java/lang/StringBuilder
    //   1444: dup
    //   1445: ldc_w 1100
    //   1448: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1451: aload_0
    //   1452: getfield 169	com/jcraft/jsch/Session:k	I
    //   1455: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1458: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1461: invokeinterface 574 3 0
    //   1466: iload_2
    //   1467: ifeq +553 -> 2020
    //   1470: new 236	com/jcraft/jsch/JSchException
    //   1473: dup
    //   1474: ldc_w 1102
    //   1477: invokespecial 241	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   1480: athrow
    //   1481: astore 8
    //   1483: aload_0
    //   1484: iconst_0
    //   1485: putfield 185	com/jcraft/jsch/Session:ag	Z
    //   1488: aload 8
    //   1490: athrow
    //   1491: aload_0
    //   1492: iconst_0
    //   1493: putfield 185	com/jcraft/jsch/Session:ag	Z
    //   1496: new 236	com/jcraft/jsch/JSchException
    //   1499: dup
    //   1500: new 283	java/lang/StringBuilder
    //   1503: dup
    //   1504: ldc_w 1104
    //   1507: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1510: aload_0
    //   1511: getfield 209	com/jcraft/jsch/Session:g	Lcom/jcraft/jsch/Buffer;
    //   1514: invokevirtual 929	com/jcraft/jsch/Buffer:n	()B
    //   1517: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1520: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1523: invokespecial 241	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   1526: athrow
    //   1527: astore 8
    //   1529: new 236	com/jcraft/jsch/JSchException
    //   1532: dup
    //   1533: new 283	java/lang/StringBuilder
    //   1536: dup
    //   1537: ldc_w 1106
    //   1540: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1543: aload_0
    //   1544: ldc_w 817
    //   1547: invokevirtual 416	com/jcraft/jsch/Session:d	(Ljava/lang/String;)Ljava/lang/String;
    //   1550: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1553: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1556: aload 8
    //   1558: invokespecial 300	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1561: athrow
    //   1562: astore 8
    //   1564: new 236	com/jcraft/jsch/JSchException
    //   1567: dup
    //   1568: aload 8
    //   1570: invokevirtual 297	java/lang/Exception:toString	()Ljava/lang/String;
    //   1573: aload 8
    //   1575: invokespecial 300	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1578: athrow
    //   1579: iload_2
    //   1580: aload 10
    //   1582: arraylength
    //   1583: if_icmplt +9 -> 1592
    //   1586: iload 5
    //   1588: istore_2
    //   1589: goto +715 -> 2304
    //   1592: aload 10
    //   1594: iload_2
    //   1595: aaload
    //   1596: aload 13
    //   1598: invokevirtual 364	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1601: ifeq +713 -> 2314
    //   1604: iconst_1
    //   1605: istore_2
    //   1606: goto +698 -> 2304
    //   1609: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1612: iconst_1
    //   1613: invokeinterface 565 2 0
    //   1618: ifeq +58 -> 1676
    //   1621: ldc_w 1108
    //   1624: astore 8
    //   1626: iload 4
    //   1628: iconst_1
    //   1629: isub
    //   1630: istore_2
    //   1631: iload_2
    //   1632: aload 12
    //   1634: arraylength
    //   1635: if_icmplt +176 -> 1811
    //   1638: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1641: iconst_1
    //   1642: aload 8
    //   1644: invokeinterface 574 3 0
    //   1649: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1652: iconst_1
    //   1653: new 283	java/lang/StringBuilder
    //   1656: dup
    //   1657: ldc_w 1110
    //   1660: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1663: aload 13
    //   1665: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1668: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1671: invokeinterface 574 3 0
    //   1676: aload_0
    //   1677: new 283	java/lang/StringBuilder
    //   1680: dup
    //   1681: ldc_w 1112
    //   1684: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1687: aload 13
    //   1689: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1692: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1695: invokevirtual 416	com/jcraft/jsch/Session:d	(Ljava/lang/String;)Ljava/lang/String;
    //   1698: ifnull +630 -> 2328
    //   1701: aload_0
    //   1702: new 283	java/lang/StringBuilder
    //   1705: dup
    //   1706: ldc_w 1112
    //   1709: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1712: aload 13
    //   1714: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1717: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1720: invokevirtual 416	com/jcraft/jsch/Session:d	(Ljava/lang/String;)Ljava/lang/String;
    //   1723: invokestatic 422	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   1726: invokevirtual 426	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   1729: checkcast 1089	com/jcraft/jsch/UserAuth
    //   1732: astore 8
    //   1734: aload 8
    //   1736: ifnull +530 -> 2266
    //   1739: iconst_0
    //   1740: istore_2
    //   1741: iconst_0
    //   1742: istore_3
    //   1743: aload 8
    //   1745: aload_0
    //   1746: invokevirtual 1092	com/jcraft/jsch/UserAuth:a	(Lcom/jcraft/jsch/Session;)Z
    //   1749: istore 7
    //   1751: iload 7
    //   1753: istore 6
    //   1755: iload 6
    //   1757: ifeq +503 -> 2260
    //   1760: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1763: iconst_1
    //   1764: invokeinterface 565 2 0
    //   1769: ifeq +491 -> 2260
    //   1772: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1775: iconst_1
    //   1776: new 283	java/lang/StringBuilder
    //   1779: dup
    //   1780: ldc_w 1114
    //   1783: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1786: aload 13
    //   1788: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1791: ldc_w 1116
    //   1794: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1797: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1800: invokeinterface 574 3 0
    //   1805: iload 4
    //   1807: istore_2
    //   1808: goto -432 -> 1376
    //   1811: new 283	java/lang/StringBuilder
    //   1814: dup
    //   1815: aload 8
    //   1817: invokestatic 511	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1820: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1823: aload 12
    //   1825: iload_2
    //   1826: aaload
    //   1827: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1830: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1833: astore 11
    //   1835: aload 11
    //   1837: astore 8
    //   1839: iload_2
    //   1840: iconst_1
    //   1841: iadd
    //   1842: aload 12
    //   1844: arraylength
    //   1845: if_icmpge +476 -> 2321
    //   1848: new 283	java/lang/StringBuilder
    //   1851: dup
    //   1852: aload 11
    //   1854: invokestatic 511	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1857: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1860: ldc_w 741
    //   1863: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1866: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1869: astore 8
    //   1871: goto +450 -> 2321
    //   1874: astore 8
    //   1876: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1879: iconst_2
    //   1880: invokeinterface 565 2 0
    //   1885: ifeq +443 -> 2328
    //   1888: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1891: iconst_2
    //   1892: new 283	java/lang/StringBuilder
    //   1895: dup
    //   1896: ldc_w 1118
    //   1899: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1902: aload 13
    //   1904: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1907: ldc_w 1120
    //   1910: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1913: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1916: invokeinterface 574 3 0
    //   1921: goto +407 -> 2328
    //   1924: aload 8
    //   1926: invokevirtual 1123	com/jcraft/jsch/JSchPartialAuthException:getMethods	()Ljava/lang/String;
    //   1929: astore 8
    //   1931: aload 8
    //   1933: ldc_w 741
    //   1936: invokestatic 744	com/jcraft/jsch/Util:a	(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    //   1939: astore 10
    //   1941: aload 9
    //   1943: aload 8
    //   1945: invokevirtual 364	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1948: ifne +306 -> 2254
    //   1951: iconst_0
    //   1952: istore_2
    //   1953: goto +396 -> 2349
    //   1956: astore 8
    //   1958: aload 8
    //   1960: athrow
    //   1961: astore 8
    //   1963: aload 8
    //   1965: athrow
    //   1966: iload 6
    //   1968: istore 7
    //   1970: iload_2
    //   1971: istore 4
    //   1973: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1976: iconst_2
    //   1977: invokeinterface 565 2 0
    //   1982: ifeq +262 -> 2244
    //   1985: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   1988: iconst_2
    //   1989: new 283	java/lang/StringBuilder
    //   1992: dup
    //   1993: ldc_w 1125
    //   1996: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1999: aload 8
    //   2001: invokevirtual 297	java/lang/Exception:toString	()Ljava/lang/String;
    //   2004: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2007: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2010: invokeinterface 574 3 0
    //   2015: iconst_0
    //   2016: istore_2
    //   2017: goto -608 -> 1409
    //   2020: new 236	com/jcraft/jsch/JSchException
    //   2023: dup
    //   2024: ldc_w 1127
    //   2027: invokespecial 241	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   2030: athrow
    //   2031: aload_0
    //   2032: getfield 993	com/jcraft/jsch/Session:R	Ljava/net/Socket;
    //   2035: ifnull +25 -> 2060
    //   2038: iload_1
    //   2039: ifgt +10 -> 2049
    //   2042: aload_0
    //   2043: getfield 131	com/jcraft/jsch/Session:S	I
    //   2046: ifle +14 -> 2060
    //   2049: aload_0
    //   2050: getfield 993	com/jcraft/jsch/Session:R	Ljava/net/Socket;
    //   2053: aload_0
    //   2054: getfield 131	com/jcraft/jsch/Session:S	I
    //   2057: invokevirtual 1015	java/net/Socket:setSoTimeout	(I)V
    //   2060: aload_0
    //   2061: iconst_1
    //   2062: putfield 135	com/jcraft/jsch/Session:U	Z
    //   2065: aload_0
    //   2066: getfield 139	com/jcraft/jsch/Session:W	Ljava/lang/Object;
    //   2069: astore 8
    //   2071: aload 8
    //   2073: monitorenter
    //   2074: aload_0
    //   2075: getfield 133	com/jcraft/jsch/Session:T	Z
    //   2078: ifeq +77 -> 2155
    //   2081: aload_0
    //   2082: new 254	java/lang/Thread
    //   2085: dup
    //   2086: aload_0
    //   2087: invokespecial 889	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
    //   2090: putfield 137	com/jcraft/jsch/Session:V	Ljava/lang/Thread;
    //   2093: aload_0
    //   2094: getfield 137	com/jcraft/jsch/Session:V	Ljava/lang/Thread;
    //   2097: new 283	java/lang/StringBuilder
    //   2100: dup
    //   2101: ldc_w 1129
    //   2104: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2107: aload_0
    //   2108: getfield 175	com/jcraft/jsch/Session:m	Ljava/lang/String;
    //   2111: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2114: ldc_w 1131
    //   2117: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2120: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2123: invokevirtual 894	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   2126: aload_0
    //   2127: getfield 165	com/jcraft/jsch/Session:j	Z
    //   2130: ifeq +14 -> 2144
    //   2133: aload_0
    //   2134: getfield 137	com/jcraft/jsch/Session:V	Ljava/lang/Thread;
    //   2137: aload_0
    //   2138: getfield 165	com/jcraft/jsch/Session:j	Z
    //   2141: invokevirtual 897	java/lang/Thread:setDaemon	(Z)V
    //   2144: aload_0
    //   2145: getfield 137	com/jcraft/jsch/Session:V	Ljava/lang/Thread;
    //   2148: invokevirtual 900	java/lang/Thread:start	()V
    //   2151: aload_0
    //   2152: invokespecial 1133	com/jcraft/jsch/Session:n	()V
    //   2155: aload 8
    //   2157: monitorexit
    //   2158: aload_0
    //   2159: getfield 183	com/jcraft/jsch/Session:q	[B
    //   2162: invokestatic 613	com/jcraft/jsch/Util:d	([B)V
    //   2165: aload_0
    //   2166: aconst_null
    //   2167: putfield 183	com/jcraft/jsch/Session:q	[B
    //   2170: return
    //   2171: astore 9
    //   2173: aload 8
    //   2175: monitorexit
    //   2176: aload 9
    //   2178: athrow
    //   2179: aload 8
    //   2181: instanceof 236
    //   2184: ifeq +9 -> 2193
    //   2187: aload 8
    //   2189: checkcast 236	com/jcraft/jsch/JSchException
    //   2192: athrow
    //   2193: new 236	com/jcraft/jsch/JSchException
    //   2196: dup
    //   2197: new 283	java/lang/StringBuilder
    //   2200: dup
    //   2201: ldc_w 1135
    //   2204: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2207: aload 8
    //   2209: invokevirtual 1138	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   2212: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2215: invokespecial 241	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   2218: athrow
    //   2219: astore 9
    //   2221: goto -1796 -> 425
    //   2224: astore 9
    //   2226: goto -1805 -> 421
    //   2229: astore 8
    //   2231: goto -265 -> 1966
    //   2234: astore 8
    //   2236: goto -312 -> 1924
    //   2239: astore 8
    //   2241: goto +95 -> 2336
    //   2244: iload 4
    //   2246: istore_2
    //   2247: iload 7
    //   2249: istore 6
    //   2251: goto -842 -> 1409
    //   2254: iload 4
    //   2256: istore_2
    //   2257: goto +92 -> 2349
    //   2260: iload 4
    //   2262: istore_2
    //   2263: goto -887 -> 1376
    //   2266: iload 4
    //   2268: istore_2
    //   2269: goto -893 -> 1376
    //   2272: aconst_null
    //   2273: astore 8
    //   2275: goto -915 -> 1360
    //   2278: iconst_0
    //   2279: istore_2
    //   2280: iconst_0
    //   2281: istore_3
    //   2282: goto -1985 -> 297
    //   2285: iload_2
    //   2286: iconst_1
    //   2287: iadd
    //   2288: istore 4
    //   2290: aload 12
    //   2292: iload_2
    //   2293: aaload
    //   2294: astore 13
    //   2296: iconst_0
    //   2297: istore 5
    //   2299: iconst_0
    //   2300: istore_2
    //   2301: goto -722 -> 1579
    //   2304: iload_2
    //   2305: ifne -696 -> 1609
    //   2308: iload 4
    //   2310: istore_2
    //   2311: goto -935 -> 1376
    //   2314: iload_2
    //   2315: iconst_1
    //   2316: iadd
    //   2317: istore_2
    //   2318: goto -739 -> 1579
    //   2321: iload_2
    //   2322: iconst_1
    //   2323: iadd
    //   2324: istore_2
    //   2325: goto -694 -> 1631
    //   2328: aconst_null
    //   2329: astore 8
    //   2331: goto -597 -> 1734
    //   2334: astore 8
    //   2336: iconst_1
    //   2337: istore_3
    //   2338: iload 4
    //   2340: istore_2
    //   2341: goto -965 -> 1376
    //   2344: astore 8
    //   2346: goto -422 -> 1924
    //   2349: aload 8
    //   2351: astore 9
    //   2353: iconst_0
    //   2354: istore_3
    //   2355: goto -979 -> 1376
    //   2358: astore 8
    //   2360: goto -394 -> 1966
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	2363	0	this	Session
    //   0	2363	1	paramInt	int
    //   297	2044	2	i1	int
    //   309	2046	3	i2	int
    //   629	1710	4	i3	int
    //   657	1641	5	i4	int
    //   1103	1147	6	bool1	boolean
    //   1378	870	7	bool2	boolean
    //   160	129	8	localObject1	Object
    //   324	115	8	localException1	Exception
    //   444	15	8	localObject2	Object
    //   461	12	8	localException2	Exception
    //   527	846	8	localObject3	Object
    //   1481	8	8	localJSchException1	JSchException
    //   1527	30	8	localNumberFormatException	NumberFormatException
    //   1562	12	8	localException3	Exception
    //   1624	246	8	localObject4	Object
    //   1874	51	8	localException4	Exception
    //   1929	15	8	str1	String
    //   1956	3	8	localRuntimeException	RuntimeException
    //   1961	39	8	localJSchException2	JSchException
    //   2229	1	8	localException5	Exception
    //   2234	1	8	localJSchPartialAuthException1	JSchPartialAuthException
    //   2239	1	8	localJSchAuthCancelException1	JSchAuthCancelException
    //   2273	57	8	localObject6	Object
    //   2334	1	8	localJSchAuthCancelException2	JSchAuthCancelException
    //   2344	6	8	localJSchPartialAuthException2	JSchPartialAuthException
    //   2358	1	8	localException6	Exception
    //   151	362	9	localObject7	Object
    //   614	6	9	localObject8	Object
    //   1304	638	9	localObject9	Object
    //   2171	6	9	localObject10	Object
    //   2219	1	9	localException7	Exception
    //   2224	1	9	localException8	Exception
    //   2351	1	9	localObject11	Object
    //   1368	572	10	arrayOfString1	String[]
    //   1833	20	11	str2	String
    //   1331	960	12	arrayOfString2	String[]
    //   1596	699	13	localObject12	Object
    // Exception table:
    //   from	to	target	type
    //   114	162	324	java/lang/Exception
    //   162	188	324	java/lang/Exception
    //   192	207	324	java/lang/Exception
    //   207	236	324	java/lang/Exception
    //   236	294	324	java/lang/Exception
    //   297	309	324	java/lang/Exception
    //   313	324	324	java/lang/Exception
    //   478	529	324	java/lang/Exception
    //   532	541	324	java/lang/Exception
    //   619	622	324	java/lang/Exception
    //   622	631	324	java/lang/Exception
    //   642	654	324	java/lang/Exception
    //   683	699	324	java/lang/Exception
    //   711	727	324	java/lang/Exception
    //   736	804	324	java/lang/Exception
    //   804	816	324	java/lang/Exception
    //   822	851	324	java/lang/Exception
    //   851	862	324	java/lang/Exception
    //   862	962	324	java/lang/Exception
    //   962	1026	324	java/lang/Exception
    //   1026	1050	324	java/lang/Exception
    //   1050	1060	324	java/lang/Exception
    //   1060	1105	324	java/lang/Exception
    //   1110	1141	324	java/lang/Exception
    //   1141	1177	324	java/lang/Exception
    //   1177	1183	324	java/lang/Exception
    //   1187	1201	324	java/lang/Exception
    //   1201	1253	324	java/lang/Exception
    //   1253	1263	324	java/lang/Exception
    //   1263	1272	324	java/lang/Exception
    //   1277	1286	324	java/lang/Exception
    //   1306	1333	324	java/lang/Exception
    //   1338	1348	324	java/lang/Exception
    //   1353	1360	324	java/lang/Exception
    //   1360	1370	324	java/lang/Exception
    //   1400	1407	324	java/lang/Exception
    //   1414	1466	324	java/lang/Exception
    //   1470	1481	324	java/lang/Exception
    //   1483	1491	324	java/lang/Exception
    //   1491	1527	324	java/lang/Exception
    //   1529	1562	324	java/lang/Exception
    //   1564	1579	324	java/lang/Exception
    //   1579	1586	324	java/lang/Exception
    //   1592	1604	324	java/lang/Exception
    //   1609	1621	324	java/lang/Exception
    //   1631	1676	324	java/lang/Exception
    //   1811	1835	324	java/lang/Exception
    //   1839	1871	324	java/lang/Exception
    //   1876	1921	324	java/lang/Exception
    //   1924	1951	324	java/lang/Exception
    //   1958	1961	324	java/lang/Exception
    //   1963	1966	324	java/lang/Exception
    //   1973	2015	324	java/lang/Exception
    //   2020	2031	324	java/lang/Exception
    //   2031	2038	324	java/lang/Exception
    //   2042	2049	324	java/lang/Exception
    //   2049	2060	324	java/lang/Exception
    //   2060	2074	324	java/lang/Exception
    //   2176	2179	324	java/lang/Exception
    //   114	162	444	finally
    //   162	188	444	finally
    //   192	207	444	finally
    //   207	236	444	finally
    //   236	294	444	finally
    //   297	309	444	finally
    //   313	324	444	finally
    //   326	331	444	finally
    //   331	421	444	finally
    //   421	425	444	finally
    //   425	444	444	finally
    //   478	529	444	finally
    //   532	541	444	finally
    //   619	622	444	finally
    //   622	631	444	finally
    //   642	654	444	finally
    //   683	699	444	finally
    //   711	727	444	finally
    //   736	804	444	finally
    //   804	816	444	finally
    //   822	851	444	finally
    //   851	862	444	finally
    //   862	962	444	finally
    //   962	1026	444	finally
    //   1026	1050	444	finally
    //   1050	1060	444	finally
    //   1060	1105	444	finally
    //   1110	1141	444	finally
    //   1141	1177	444	finally
    //   1177	1183	444	finally
    //   1187	1201	444	finally
    //   1201	1253	444	finally
    //   1253	1263	444	finally
    //   1263	1272	444	finally
    //   1277	1286	444	finally
    //   1288	1306	444	finally
    //   1306	1333	444	finally
    //   1338	1348	444	finally
    //   1353	1360	444	finally
    //   1360	1370	444	finally
    //   1400	1407	444	finally
    //   1414	1466	444	finally
    //   1470	1481	444	finally
    //   1483	1491	444	finally
    //   1491	1527	444	finally
    //   1529	1562	444	finally
    //   1564	1579	444	finally
    //   1579	1586	444	finally
    //   1592	1604	444	finally
    //   1609	1621	444	finally
    //   1631	1676	444	finally
    //   1676	1734	444	finally
    //   1743	1751	444	finally
    //   1760	1805	444	finally
    //   1811	1835	444	finally
    //   1839	1871	444	finally
    //   1876	1921	444	finally
    //   1924	1951	444	finally
    //   1958	1961	444	finally
    //   1963	1966	444	finally
    //   1973	2015	444	finally
    //   2020	2031	444	finally
    //   2031	2038	444	finally
    //   2042	2049	444	finally
    //   2049	2060	444	finally
    //   2060	2074	444	finally
    //   2176	2179	444	finally
    //   2179	2193	444	finally
    //   2193	2219	444	finally
    //   35	54	461	java/lang/Exception
    //   541	611	614	finally
    //   616	619	614	finally
    //   1187	1201	1481	com/jcraft/jsch/JSchException
    //   1263	1272	1527	java/lang/NumberFormatException
    //   1277	1286	1527	java/lang/NumberFormatException
    //   1288	1306	1562	java/lang/Exception
    //   1676	1734	1874	java/lang/Exception
    //   1743	1751	1956	java/lang/RuntimeException
    //   1760	1805	1956	java/lang/RuntimeException
    //   1743	1751	1961	com/jcraft/jsch/JSchException
    //   1760	1805	1961	com/jcraft/jsch/JSchException
    //   2074	2144	2171	finally
    //   2144	2155	2171	finally
    //   2155	2158	2171	finally
    //   2173	2176	2171	finally
    //   421	425	2219	java/lang/Exception
    //   331	421	2224	java/lang/Exception
    //   1760	1805	2229	java/lang/Exception
    //   1760	1805	2234	com/jcraft/jsch/JSchPartialAuthException
    //   1760	1805	2239	com/jcraft/jsch/JSchAuthCancelException
    //   1743	1751	2334	com/jcraft/jsch/JSchAuthCancelException
    //   1743	1751	2344	com/jcraft/jsch/JSchPartialAuthException
    //   1743	1751	2358	java/lang/Exception
  }
  
  void a(Channel paramChannel)
  {
    paramChannel.b(this);
  }
  
  public void a(HostKeyRepository paramHostKeyRepository)
  {
    ae = paramHostKeyRepository;
  }
  
  public void a(IdentityRepository paramIdentityRepository)
  {
    ad = paramIdentityRepository;
  }
  
  public void a(Packet paramPacket)
  {
    if (O != null)
    {
      t[0] = a.c;
      a.b = O.a(a.b, 5, t);
      a.c = t[0];
    }
    int i1;
    if (J != null)
    {
      paramPacket.a(ai);
      i1 = a.b[4];
    }
    for (;;)
    {
      synchronized (f)
      {
        f.a(a.b, a.c - i1, i1);
        if (L != null)
        {
          L.a(H);
          L.a(a.b, 0, a.c);
          L.a(a.b, a.c);
        }
        if (J != null)
        {
          ??? = a.b;
          J.a((byte[])???, 0, a.c, (byte[])???, 0);
        }
        if (L != null) {
          a.b(L.a());
        }
        return;
      }
      paramPacket.a(8);
    }
  }
  
  /* Error */
  void a(Packet paramPacket, Channel paramChannel, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 1150	com/jcraft/jsch/Session:e	()I
    //   4: i2l
    //   5: lstore 11
    //   7: iload_3
    //   8: istore 5
    //   10: aload_0
    //   11: getfield 185	com/jcraft/jsch/Session:ag	Z
    //   14: ifeq +49 -> 63
    //   17: lload 11
    //   19: lconst_0
    //   20: lcmp
    //   21: ifle +28 -> 49
    //   24: invokestatic 776	java/lang/System:currentTimeMillis	()J
    //   27: aload_0
    //   28: getfield 167	com/jcraft/jsch/Session:af	J
    //   31: lsub
    //   32: lload 11
    //   34: lcmp
    //   35: ifle +14 -> 49
    //   38: new 236	com/jcraft/jsch/JSchException
    //   41: dup
    //   42: ldc_w 1152
    //   45: invokespecial 241	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   48: athrow
    //   49: ldc2_w 1153
    //   52: invokestatic 306	java/lang/Thread:sleep	(J)V
    //   55: goto -45 -> 10
    //   58: astore 13
    //   60: goto -50 -> 10
    //   63: aload_2
    //   64: monitorenter
    //   65: aload_2
    //   66: getfield 1156	com/jcraft/jsch/Channel:h	J
    //   69: lstore 9
    //   71: lload 9
    //   73: iload 5
    //   75: i2l
    //   76: lcmp
    //   77: ifge +30 -> 107
    //   80: aload_2
    //   81: aload_2
    //   82: getfield 1158	com/jcraft/jsch/Channel:t	I
    //   85: iconst_1
    //   86: iadd
    //   87: putfield 1158	com/jcraft/jsch/Channel:t	I
    //   90: aload_2
    //   91: ldc2_w 1159
    //   94: invokevirtual 1163	java/lang/Object:wait	(J)V
    //   97: aload_2
    //   98: aload_2
    //   99: getfield 1158	com/jcraft/jsch/Channel:t	I
    //   102: iconst_1
    //   103: isub
    //   104: putfield 1158	com/jcraft/jsch/Channel:t	I
    //   107: aload_2
    //   108: getfield 1156	com/jcraft/jsch/Channel:h	J
    //   111: iload 5
    //   113: i2l
    //   114: lcmp
    //   115: iflt +56 -> 171
    //   118: aload_2
    //   119: aload_2
    //   120: getfield 1156	com/jcraft/jsch/Channel:h	J
    //   123: iload 5
    //   125: i2l
    //   126: lsub
    //   127: putfield 1156	com/jcraft/jsch/Channel:h	J
    //   130: aload_2
    //   131: monitorexit
    //   132: aload_0
    //   133: aload_1
    //   134: invokespecial 1165	com/jcraft/jsch/Session:c	(Lcom/jcraft/jsch/Packet;)V
    //   137: return
    //   138: astore 13
    //   140: aload_2
    //   141: aload_2
    //   142: getfield 1158	com/jcraft/jsch/Channel:t	I
    //   145: iconst_1
    //   146: isub
    //   147: putfield 1158	com/jcraft/jsch/Channel:t	I
    //   150: goto -43 -> 107
    //   153: astore_1
    //   154: aload_2
    //   155: monitorexit
    //   156: aload_1
    //   157: athrow
    //   158: astore_1
    //   159: aload_2
    //   160: aload_2
    //   161: getfield 1158	com/jcraft/jsch/Channel:t	I
    //   164: iconst_1
    //   165: isub
    //   166: putfield 1158	com/jcraft/jsch/Channel:t	I
    //   169: aload_1
    //   170: athrow
    //   171: aload_2
    //   172: monitorexit
    //   173: aload_2
    //   174: getfield 1167	com/jcraft/jsch/Channel:n	Z
    //   177: ifne +10 -> 187
    //   180: aload_2
    //   181: invokevirtual 1169	com/jcraft/jsch/Channel:i	()Z
    //   184: ifne +14 -> 198
    //   187: new 920	java/io/IOException
    //   190: dup
    //   191: ldc_w 1171
    //   194: invokespecial 923	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   197: athrow
    //   198: iconst_m1
    //   199: istore_3
    //   200: aload_2
    //   201: monitorenter
    //   202: aload_2
    //   203: getfield 1156	com/jcraft/jsch/Channel:h	J
    //   206: lconst_0
    //   207: lcmp
    //   208: ifle +226 -> 434
    //   211: aload_2
    //   212: getfield 1156	com/jcraft/jsch/Channel:h	J
    //   215: lstore 9
    //   217: lload 9
    //   219: iload 5
    //   221: i2l
    //   222: lcmp
    //   223: ifle +208 -> 431
    //   226: iload 5
    //   228: i2l
    //   229: lstore 9
    //   231: lload 9
    //   233: iload 5
    //   235: i2l
    //   236: lcmp
    //   237: ifeq +189 -> 426
    //   240: lload 9
    //   242: l2i
    //   243: istore 7
    //   245: aload_0
    //   246: getfield 447	com/jcraft/jsch/Session:J	Lcom/jcraft/jsch/Cipher;
    //   249: ifnull +127 -> 376
    //   252: aload_0
    //   253: getfield 193	com/jcraft/jsch/Session:ai	I
    //   256: istore_3
    //   257: aload_0
    //   258: getfield 449	com/jcraft/jsch/Session:L	Lcom/jcraft/jsch/MAC;
    //   261: ifnull +121 -> 382
    //   264: aload_0
    //   265: getfield 449	com/jcraft/jsch/Session:L	Lcom/jcraft/jsch/MAC;
    //   268: invokeinterface 437 1 0
    //   273: istore 6
    //   275: aload_1
    //   276: iload 7
    //   278: iload_3
    //   279: iload 6
    //   281: invokevirtual 1174	com/jcraft/jsch/Packet:a	(III)I
    //   284: istore_3
    //   285: aload_1
    //   286: getfield 1142	com/jcraft/jsch/Packet:a	Lcom/jcraft/jsch/Buffer;
    //   289: invokevirtual 929	com/jcraft/jsch/Buffer:n	()B
    //   292: istore 4
    //   294: aload_2
    //   295: invokevirtual 1175	com/jcraft/jsch/Channel:a	()I
    //   298: istore 8
    //   300: iload 5
    //   302: i2l
    //   303: lload 9
    //   305: lsub
    //   306: l2i
    //   307: istore 5
    //   309: aload_2
    //   310: aload_2
    //   311: getfield 1156	com/jcraft/jsch/Channel:h	J
    //   314: lload 9
    //   316: lsub
    //   317: putfield 1156	com/jcraft/jsch/Channel:h	J
    //   320: iconst_1
    //   321: istore 7
    //   323: iload_3
    //   324: istore 6
    //   326: iload 8
    //   328: istore_3
    //   329: aload_2
    //   330: monitorexit
    //   331: iload 7
    //   333: ifeq +24 -> 357
    //   336: aload_0
    //   337: aload_1
    //   338: invokespecial 1165	com/jcraft/jsch/Session:c	(Lcom/jcraft/jsch/Packet;)V
    //   341: iload 5
    //   343: ifeq -206 -> 137
    //   346: aload_1
    //   347: iload 4
    //   349: iload_3
    //   350: iload 6
    //   352: iload 5
    //   354: invokevirtual 1178	com/jcraft/jsch/Packet:a	(BIII)V
    //   357: aload_2
    //   358: monitorenter
    //   359: aload_0
    //   360: getfield 185	com/jcraft/jsch/Session:ag	Z
    //   363: ifeq +30 -> 393
    //   366: aload_2
    //   367: monitorexit
    //   368: goto -358 -> 10
    //   371: astore_1
    //   372: aload_2
    //   373: monitorexit
    //   374: aload_1
    //   375: athrow
    //   376: bipush 8
    //   378: istore_3
    //   379: goto -122 -> 257
    //   382: iconst_0
    //   383: istore 6
    //   385: goto -110 -> 275
    //   388: astore_1
    //   389: aload_2
    //   390: monitorexit
    //   391: aload_1
    //   392: athrow
    //   393: aload_2
    //   394: getfield 1156	com/jcraft/jsch/Channel:h	J
    //   397: iload 5
    //   399: i2l
    //   400: lcmp
    //   401: iflt +20 -> 421
    //   404: aload_2
    //   405: aload_2
    //   406: getfield 1156	com/jcraft/jsch/Channel:h	J
    //   409: iload 5
    //   411: i2l
    //   412: lsub
    //   413: putfield 1156	com/jcraft/jsch/Channel:h	J
    //   416: aload_2
    //   417: monitorexit
    //   418: goto -286 -> 132
    //   421: aload_2
    //   422: monitorexit
    //   423: goto -413 -> 10
    //   426: iconst_0
    //   427: istore_3
    //   428: goto -143 -> 285
    //   431: goto -200 -> 231
    //   434: iconst_0
    //   435: istore 4
    //   437: iconst_0
    //   438: istore 6
    //   440: iconst_0
    //   441: istore 7
    //   443: goto -114 -> 329
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	446	0	this	Session
    //   0	446	1	paramPacket	Packet
    //   0	446	2	paramChannel	Channel
    //   0	446	3	paramInt	int
    //   292	144	4	b1	byte
    //   8	402	5	i1	int
    //   273	166	6	i2	int
    //   243	199	7	i3	int
    //   298	29	8	i4	int
    //   69	246	9	l1	long
    //   5	28	11	l2	long
    //   58	1	13	localInterruptedException1	InterruptedException
    //   138	1	13	localInterruptedException2	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   49	55	58	java/lang/InterruptedException
    //   80	97	138	java/lang/InterruptedException
    //   65	71	153	finally
    //   97	107	153	finally
    //   107	132	153	finally
    //   140	150	153	finally
    //   154	156	153	finally
    //   159	171	153	finally
    //   171	173	153	finally
    //   80	97	158	finally
    //   359	368	371	finally
    //   372	374	371	finally
    //   393	418	371	finally
    //   421	423	371	finally
    //   202	217	388	finally
    //   245	257	388	finally
    //   257	275	388	finally
    //   275	285	388	finally
    //   285	300	388	finally
    //   309	320	388	finally
    //   329	331	388	finally
    //   389	391	388	finally
  }
  
  public void a(UserInfo paramUserInfo)
  {
    Z = paramUserInfo;
  }
  
  public void a(String paramString1, String paramString2)
  {
    synchronized (W)
    {
      if (X == null) {
        X = new Hashtable();
      }
      X.put(paramString1, paramString2);
      return;
    }
  }
  
  byte[] a()
  {
    return z;
  }
  
  public int b(String paramString)
  {
    paramString = g(paramString);
    return a(a, b, c, d);
  }
  
  public void b()
  {
    if (!T) {
      return;
    }
    if (JSch.d().a(1)) {
      JSch.d().a(1, "Disconnecting from " + m + " port " + o);
    }
    Channel.a(this);
    T = false;
    PortWatcher.a(this);
    ChannelForwardedTCPIP.c(this);
    ChannelX11.d(this);
    synchronized (W)
    {
      if (V != null)
      {
        Thread.yield();
        V.interrupt();
        V = null;
      }
      u = null;
      try
      {
        if (Q != null)
        {
          if (Q.a != null) {
            Q.a.close();
          }
          if (Q.b != null) {
            Q.b.close();
          }
          if (Q.c != null) {
            Q.c.close();
          }
        }
        if (Y != null) {
          break label232;
        }
        if (R != null) {
          R.close();
        }
      }
      catch (Exception localException)
      {
        synchronized (Y)
        {
          for (;;)
          {
            Y.d();
            Y = null;
          }
          localException = localException;
        }
      }
      Q = null;
      R = null;
      r.b(this);
      return;
    }
  }
  
  public void b(int paramInt)
  {
    if (R == null)
    {
      if (paramInt < 0) {
        throw new JSchException("invalid timeout value");
      }
      S = paramInt;
      return;
    }
    try
    {
      R.setSoTimeout(paramInt);
      S = paramInt;
      return;
    }
    catch (Exception localException)
    {
      if ((localException instanceof Throwable)) {
        throw new JSchException(localException.toString(), localException);
      }
      throw new JSchException(localException.toString());
    }
  }
  
  public void b(Packet paramPacket)
  {
    long l1 = e();
    for (;;)
    {
      if (!ag) {}
      int i1;
      do
      {
        c(paramPacket);
        return;
        if ((l1 > 0L) && (System.currentTimeMillis() - af > l1)) {
          throw new JSchException("timeout in wating for rekeying process.");
        }
        i1 = a.n();
      } while ((i1 == 20) || (i1 == 21) || (i1 == 30) || (i1 == 31) || (i1 == 31) || (i1 == 32) || (i1 == 33) || (i1 == 34) || (i1 == 1));
      try
      {
        Thread.sleep(10L);
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
  
  public int c(String paramString)
  {
    paramString = g(paramString);
    int i1 = a(a, b);
    ChannelForwardedTCPIP.a(this, a, b, i1, c, d, null);
    return i1;
  }
  
  public UserInfo c()
  {
    return Z;
  }
  
  public void c(int paramInt)
  {
    b(paramInt);
    ab = paramInt;
  }
  
  public String d(String paramString)
  {
    if (X != null)
    {
      Object localObject = X.get(paramString);
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
    }
    paramString = JSch.c(paramString);
    if ((paramString instanceof String)) {
      return (String)paramString;
    }
    return null;
  }
  
  public boolean d()
  {
    return T;
  }
  
  public int e()
  {
    return S;
  }
  
  public void e(String paramString)
  {
    aa = paramString;
  }
  
  public void f()
  {
    Buffer localBuffer = new Buffer();
    Packet localPacket = new Packet(localBuffer);
    localPacket.a();
    localBuffer.a((byte)80);
    localBuffer.b(ak);
    localBuffer.a((byte)1);
    b(localPacket);
  }
  
  public String g()
  {
    return m;
  }
  
  public String h()
  {
    return p;
  }
  
  IdentityRepository i()
  {
    if (ad == null) {
      return r.a();
    }
    return ad;
  }
  
  public HostKeyRepository j()
  {
    if (ae == null) {
      return r.c();
    }
    return ae;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_0
    //   2: putfield 1208	com/jcraft/jsch/Session:u	Ljava/lang/Runnable;
    //   5: new 206	com/jcraft/jsch/Buffer
    //   8: dup
    //   9: invokespecial 207	com/jcraft/jsch/Buffer:<init>	()V
    //   12: astore 7
    //   14: new 211	com/jcraft/jsch/Packet
    //   17: dup
    //   18: aload 7
    //   20: invokespecial 214	com/jcraft/jsch/Packet:<init>	(Lcom/jcraft/jsch/Buffer;)V
    //   23: astore 10
    //   25: iconst_1
    //   26: newarray <illegal type>
    //   28: astore 11
    //   30: iconst_1
    //   31: newarray <illegal type>
    //   33: astore 12
    //   35: aconst_null
    //   36: astore 9
    //   38: iconst_0
    //   39: istore_2
    //   40: aload_0
    //   41: getfield 133	com/jcraft/jsch/Session:T	Z
    //   44: ifeq +14 -> 58
    //   47: aload_0
    //   48: getfield 1208	com/jcraft/jsch/Session:u	Ljava/lang/Runnable;
    //   51: astore 8
    //   53: aload 8
    //   55: ifnonnull +13 -> 68
    //   58: aload_0
    //   59: invokevirtual 1028	com/jcraft/jsch/Session:b	()V
    //   62: aload_0
    //   63: iconst_0
    //   64: putfield 133	com/jcraft/jsch/Session:T	Z
    //   67: return
    //   68: aload_0
    //   69: aload 7
    //   71: invokevirtual 1060	com/jcraft/jsch/Session:a	(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    //   74: astore 8
    //   76: aload 8
    //   78: invokevirtual 929	com/jcraft/jsch/Buffer:n	()B
    //   81: sipush 255
    //   84: iand
    //   85: istore_3
    //   86: aload 9
    //   88: ifnull +1555 -> 1643
    //   91: aload 9
    //   93: invokevirtual 1067	com/jcraft/jsch/KeyExchange:b	()I
    //   96: iload_3
    //   97: if_icmpne +1546 -> 1643
    //   100: aload_0
    //   101: invokestatic 776	java/lang/System:currentTimeMillis	()J
    //   104: putfield 167	com/jcraft/jsch/Session:af	J
    //   107: aload 9
    //   109: aload 8
    //   111: invokevirtual 1070	com/jcraft/jsch/KeyExchange:a	(Lcom/jcraft/jsch/Buffer;)Z
    //   114: istore 4
    //   116: iload 4
    //   118: ifne +1516 -> 1634
    //   121: new 236	com/jcraft/jsch/JSchException
    //   124: dup
    //   125: new 283	java/lang/StringBuilder
    //   128: dup
    //   129: ldc_w 1072
    //   132: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   135: iload 4
    //   137: invokevirtual 1075	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   140: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: invokespecial 241	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   146: athrow
    //   147: astore 7
    //   149: aload_0
    //   150: iconst_0
    //   151: putfield 185	com/jcraft/jsch/Session:ag	Z
    //   154: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   157: iconst_1
    //   158: invokeinterface 565 2 0
    //   163: ifeq -105 -> 58
    //   166: invokestatic 560	com/jcraft/jsch/JSch:d	()Lcom/jcraft/jsch/Logger;
    //   169: iconst_1
    //   170: new 283	java/lang/StringBuilder
    //   173: dup
    //   174: ldc_w 1247
    //   177: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   180: aload 7
    //   182: invokevirtual 1250	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   185: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   191: invokeinterface 574 3 0
    //   196: goto -138 -> 58
    //   199: astore 8
    //   201: aload_0
    //   202: getfield 185	com/jcraft/jsch/Session:ag	Z
    //   205: ifne +22 -> 227
    //   208: iload_2
    //   209: aload_0
    //   210: getfield 159	com/jcraft/jsch/Session:ac	I
    //   213: if_icmpge +14 -> 227
    //   216: aload_0
    //   217: invokevirtual 1252	com/jcraft/jsch/Session:f	()V
    //   220: iload_2
    //   221: iconst_1
    //   222: iadd
    //   223: istore_2
    //   224: goto -184 -> 40
    //   227: aload_0
    //   228: getfield 185	com/jcraft/jsch/Session:ag	Z
    //   231: ifeq +18 -> 249
    //   234: iload_2
    //   235: aload_0
    //   236: getfield 159	com/jcraft/jsch/Session:ac	I
    //   239: if_icmpge +10 -> 249
    //   242: iload_2
    //   243: iconst_1
    //   244: iadd
    //   245: istore_2
    //   246: goto -206 -> 40
    //   249: aload 8
    //   251: athrow
    //   252: new 920	java/io/IOException
    //   255: dup
    //   256: new 283	java/lang/StringBuilder
    //   259: dup
    //   260: ldc_w 1254
    //   263: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   266: iload_3
    //   267: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   270: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: invokespecial 923	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   276: athrow
    //   277: aload_0
    //   278: aload 8
    //   280: invokespecial 1066	com/jcraft/jsch/Session:b	(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;
    //   283: astore 9
    //   285: aload 8
    //   287: astore 7
    //   289: iconst_0
    //   290: istore_2
    //   291: goto -251 -> 40
    //   294: aload_0
    //   295: invokespecial 1081	com/jcraft/jsch/Session:l	()V
    //   298: aload_0
    //   299: aload 8
    //   301: aload 9
    //   303: invokespecial 1085	com/jcraft/jsch/Session:a	(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    //   306: iconst_0
    //   307: istore_2
    //   308: aconst_null
    //   309: astore 9
    //   311: aload 8
    //   313: astore 7
    //   315: goto -275 -> 40
    //   318: aload 8
    //   320: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   323: pop
    //   324: aload 8
    //   326: invokevirtual 619	com/jcraft/jsch/Buffer:g	()I
    //   329: pop
    //   330: aload 8
    //   332: invokevirtual 619	com/jcraft/jsch/Buffer:g	()I
    //   335: pop
    //   336: aload 8
    //   338: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   341: aload_0
    //   342: invokestatic 954	com/jcraft/jsch/Channel:a	(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    //   345: astore 7
    //   347: aload 8
    //   349: aload 11
    //   351: aload 12
    //   353: invokevirtual 1257	com/jcraft/jsch/Buffer:a	([I[I)[B
    //   356: astore 13
    //   358: aload 7
    //   360: ifnonnull +12 -> 372
    //   363: iconst_0
    //   364: istore_2
    //   365: aload 8
    //   367: astore 7
    //   369: goto -329 -> 40
    //   372: aload 12
    //   374: iconst_0
    //   375: iaload
    //   376: istore_2
    //   377: iload_2
    //   378: ifne +12 -> 390
    //   381: iconst_0
    //   382: istore_2
    //   383: aload 8
    //   385: astore 7
    //   387: goto -347 -> 40
    //   390: aload 7
    //   392: aload 13
    //   394: aload 11
    //   396: iconst_0
    //   397: iaload
    //   398: aload 12
    //   400: iconst_0
    //   401: iaload
    //   402: invokevirtual 1258	com/jcraft/jsch/Channel:a	([BII)V
    //   405: aload 12
    //   407: iconst_0
    //   408: iaload
    //   409: istore_2
    //   410: aload 7
    //   412: aload 7
    //   414: getfield 1260	com/jcraft/jsch/Channel:f	I
    //   417: iload_2
    //   418: isub
    //   419: invokevirtual 1262	com/jcraft/jsch/Channel:d	(I)V
    //   422: aload 7
    //   424: getfield 1260	com/jcraft/jsch/Channel:f	I
    //   427: aload 7
    //   429: getfield 1264	com/jcraft/jsch/Channel:e	I
    //   432: iconst_2
    //   433: idiv
    //   434: if_icmpge +1200 -> 1634
    //   437: aload 10
    //   439: invokevirtual 265	com/jcraft/jsch/Packet:a	()V
    //   442: aload 8
    //   444: bipush 93
    //   446: invokevirtual 268	com/jcraft/jsch/Buffer:a	(B)V
    //   449: aload 8
    //   451: aload 7
    //   453: invokevirtual 1175	com/jcraft/jsch/Channel:a	()I
    //   456: invokevirtual 275	com/jcraft/jsch/Buffer:a	(I)V
    //   459: aload 8
    //   461: aload 7
    //   463: getfield 1264	com/jcraft/jsch/Channel:e	I
    //   466: aload 7
    //   468: getfield 1260	com/jcraft/jsch/Channel:f	I
    //   471: isub
    //   472: invokevirtual 275	com/jcraft/jsch/Buffer:a	(I)V
    //   475: aload 7
    //   477: monitorenter
    //   478: aload 7
    //   480: getfield 1167	com/jcraft/jsch/Channel:n	Z
    //   483: ifne +9 -> 492
    //   486: aload_0
    //   487: aload 10
    //   489: invokevirtual 278	com/jcraft/jsch/Session:b	(Lcom/jcraft/jsch/Packet;)V
    //   492: aload 7
    //   494: monitorexit
    //   495: aload 7
    //   497: aload 7
    //   499: getfield 1264	com/jcraft/jsch/Channel:e	I
    //   502: invokevirtual 1262	com/jcraft/jsch/Channel:d	(I)V
    //   505: iconst_0
    //   506: istore_2
    //   507: aload 8
    //   509: astore 7
    //   511: goto -471 -> 40
    //   514: astore 13
    //   516: aload 7
    //   518: invokevirtual 1266	com/jcraft/jsch/Channel:h	()V
    //   521: iconst_0
    //   522: istore_2
    //   523: aload 8
    //   525: astore 7
    //   527: goto -487 -> 40
    //   530: astore 7
    //   532: iconst_0
    //   533: istore_2
    //   534: aload 8
    //   536: astore 7
    //   538: goto -498 -> 40
    //   541: astore 8
    //   543: aload 7
    //   545: monitorexit
    //   546: aload 8
    //   548: athrow
    //   549: aload 8
    //   551: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   554: pop
    //   555: aload 8
    //   557: invokevirtual 932	com/jcraft/jsch/Buffer:f	()I
    //   560: pop
    //   561: aload 8
    //   563: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   566: aload_0
    //   567: invokestatic 954	com/jcraft/jsch/Channel:a	(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    //   570: astore 7
    //   572: aload 8
    //   574: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   577: pop
    //   578: aload 8
    //   580: aload 11
    //   582: aload 12
    //   584: invokevirtual 1257	com/jcraft/jsch/Buffer:a	([I[I)[B
    //   587: astore 13
    //   589: aload 7
    //   591: ifnonnull +1196 -> 1787
    //   594: iconst_0
    //   595: istore_2
    //   596: aload 8
    //   598: astore 7
    //   600: goto -560 -> 40
    //   603: aload 7
    //   605: aload 13
    //   607: aload 11
    //   609: iconst_0
    //   610: iaload
    //   611: aload 12
    //   613: iconst_0
    //   614: iaload
    //   615: invokevirtual 1268	com/jcraft/jsch/Channel:b	([BII)V
    //   618: aload 12
    //   620: iconst_0
    //   621: iaload
    //   622: istore_2
    //   623: aload 7
    //   625: aload 7
    //   627: getfield 1260	com/jcraft/jsch/Channel:f	I
    //   630: iload_2
    //   631: isub
    //   632: invokevirtual 1262	com/jcraft/jsch/Channel:d	(I)V
    //   635: aload 7
    //   637: getfield 1260	com/jcraft/jsch/Channel:f	I
    //   640: aload 7
    //   642: getfield 1264	com/jcraft/jsch/Channel:e	I
    //   645: iconst_2
    //   646: idiv
    //   647: if_icmpge +987 -> 1634
    //   650: aload 10
    //   652: invokevirtual 265	com/jcraft/jsch/Packet:a	()V
    //   655: aload 8
    //   657: bipush 93
    //   659: invokevirtual 268	com/jcraft/jsch/Buffer:a	(B)V
    //   662: aload 8
    //   664: aload 7
    //   666: invokevirtual 1175	com/jcraft/jsch/Channel:a	()I
    //   669: invokevirtual 275	com/jcraft/jsch/Buffer:a	(I)V
    //   672: aload 8
    //   674: aload 7
    //   676: getfield 1264	com/jcraft/jsch/Channel:e	I
    //   679: aload 7
    //   681: getfield 1260	com/jcraft/jsch/Channel:f	I
    //   684: isub
    //   685: invokevirtual 275	com/jcraft/jsch/Buffer:a	(I)V
    //   688: aload 7
    //   690: monitorenter
    //   691: aload 7
    //   693: getfield 1167	com/jcraft/jsch/Channel:n	Z
    //   696: ifne +9 -> 705
    //   699: aload_0
    //   700: aload 10
    //   702: invokevirtual 278	com/jcraft/jsch/Session:b	(Lcom/jcraft/jsch/Packet;)V
    //   705: aload 7
    //   707: monitorexit
    //   708: aload 7
    //   710: aload 7
    //   712: getfield 1264	com/jcraft/jsch/Channel:e	I
    //   715: invokevirtual 1262	com/jcraft/jsch/Channel:d	(I)V
    //   718: iconst_0
    //   719: istore_2
    //   720: aload 8
    //   722: astore 7
    //   724: goto -684 -> 40
    //   727: astore 8
    //   729: aload 7
    //   731: monitorexit
    //   732: aload 8
    //   734: athrow
    //   735: aload 8
    //   737: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   740: pop
    //   741: aload 8
    //   743: invokevirtual 932	com/jcraft/jsch/Buffer:f	()I
    //   746: pop
    //   747: aload 8
    //   749: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   752: aload_0
    //   753: invokestatic 954	com/jcraft/jsch/Channel:a	(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    //   756: astore 7
    //   758: aload 7
    //   760: ifnonnull +12 -> 772
    //   763: iconst_0
    //   764: istore_2
    //   765: aload 8
    //   767: astore 7
    //   769: goto -729 -> 40
    //   772: aload 7
    //   774: aload 8
    //   776: invokevirtual 956	com/jcraft/jsch/Buffer:e	()J
    //   779: invokevirtual 958	com/jcraft/jsch/Channel:b	(J)V
    //   782: iconst_0
    //   783: istore_2
    //   784: aload 8
    //   786: astore 7
    //   788: goto -748 -> 40
    //   791: aload 8
    //   793: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   796: pop
    //   797: aload 8
    //   799: invokevirtual 932	com/jcraft/jsch/Buffer:f	()I
    //   802: pop
    //   803: aload 8
    //   805: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   808: aload_0
    //   809: invokestatic 954	com/jcraft/jsch/Channel:a	(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    //   812: astore 7
    //   814: aload 7
    //   816: ifnull +818 -> 1634
    //   819: aload 7
    //   821: invokevirtual 1270	com/jcraft/jsch/Channel:e	()V
    //   824: iconst_0
    //   825: istore_2
    //   826: aload 8
    //   828: astore 7
    //   830: goto -790 -> 40
    //   833: aload 8
    //   835: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   838: pop
    //   839: aload 8
    //   841: invokevirtual 932	com/jcraft/jsch/Buffer:f	()I
    //   844: pop
    //   845: aload 8
    //   847: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   850: aload_0
    //   851: invokestatic 954	com/jcraft/jsch/Channel:a	(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    //   854: astore 7
    //   856: aload 7
    //   858: ifnull +776 -> 1634
    //   861: aload 7
    //   863: invokevirtual 1266	com/jcraft/jsch/Channel:h	()V
    //   866: iconst_0
    //   867: istore_2
    //   868: aload 8
    //   870: astore 7
    //   872: goto -832 -> 40
    //   875: aload 8
    //   877: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   880: pop
    //   881: aload 8
    //   883: invokevirtual 932	com/jcraft/jsch/Buffer:f	()I
    //   886: pop
    //   887: aload 8
    //   889: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   892: aload_0
    //   893: invokestatic 954	com/jcraft/jsch/Channel:a	(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    //   896: astore 7
    //   898: aload 8
    //   900: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   903: istore_2
    //   904: aload 8
    //   906: invokevirtual 956	com/jcraft/jsch/Buffer:e	()J
    //   909: lstore 5
    //   911: aload 8
    //   913: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   916: istore_3
    //   917: aload 7
    //   919: ifnull +715 -> 1634
    //   922: aload 7
    //   924: lload 5
    //   926: invokevirtual 1272	com/jcraft/jsch/Channel:a	(J)V
    //   929: aload 7
    //   931: iload_3
    //   932: invokevirtual 1274	com/jcraft/jsch/Channel:f	(I)V
    //   935: aload 7
    //   937: iconst_1
    //   938: putfield 1276	com/jcraft/jsch/Channel:p	Z
    //   941: aload 7
    //   943: iload_2
    //   944: invokevirtual 1277	com/jcraft/jsch/Channel:a	(I)V
    //   947: iconst_0
    //   948: istore_2
    //   949: aload 8
    //   951: astore 7
    //   953: goto -913 -> 40
    //   956: aload 8
    //   958: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   961: pop
    //   962: aload 8
    //   964: invokevirtual 932	com/jcraft/jsch/Buffer:f	()I
    //   967: pop
    //   968: aload 8
    //   970: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   973: aload_0
    //   974: invokestatic 954	com/jcraft/jsch/Channel:a	(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    //   977: astore 7
    //   979: aload 7
    //   981: ifnull +653 -> 1634
    //   984: aload 7
    //   986: aload 8
    //   988: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   991: invokevirtual 1279	com/jcraft/jsch/Channel:g	(I)V
    //   994: aload 7
    //   996: iconst_1
    //   997: putfield 1167	com/jcraft/jsch/Channel:n	Z
    //   1000: aload 7
    //   1002: iconst_1
    //   1003: putfield 1281	com/jcraft/jsch/Channel:m	Z
    //   1006: aload 7
    //   1008: iconst_0
    //   1009: invokevirtual 1277	com/jcraft/jsch/Channel:a	(I)V
    //   1012: iconst_0
    //   1013: istore_2
    //   1014: aload 8
    //   1016: astore 7
    //   1018: goto -978 -> 40
    //   1021: aload 8
    //   1023: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   1026: pop
    //   1027: aload 8
    //   1029: invokevirtual 932	com/jcraft/jsch/Buffer:f	()I
    //   1032: pop
    //   1033: aload 8
    //   1035: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   1038: istore_3
    //   1039: aload 8
    //   1041: invokevirtual 934	com/jcraft/jsch/Buffer:j	()[B
    //   1044: astore 7
    //   1046: aload 8
    //   1048: invokevirtual 619	com/jcraft/jsch/Buffer:g	()I
    //   1051: ifeq +752 -> 1803
    //   1054: iconst_1
    //   1055: istore_2
    //   1056: iload_3
    //   1057: aload_0
    //   1058: invokestatic 954	com/jcraft/jsch/Channel:a	(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    //   1061: astore 13
    //   1063: aload 13
    //   1065: ifnull +569 -> 1634
    //   1068: bipush 100
    //   1070: istore_1
    //   1071: aload 7
    //   1073: invokestatic 557	com/jcraft/jsch/Util:b	([B)Ljava/lang/String;
    //   1076: ldc_w 1283
    //   1079: invokevirtual 364	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1082: ifeq +16 -> 1098
    //   1085: aload 13
    //   1087: aload 8
    //   1089: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   1092: invokevirtual 1279	com/jcraft/jsch/Channel:g	(I)V
    //   1095: bipush 99
    //   1097: istore_1
    //   1098: iload_2
    //   1099: ifeq +535 -> 1634
    //   1102: aload 10
    //   1104: invokevirtual 265	com/jcraft/jsch/Packet:a	()V
    //   1107: aload 8
    //   1109: iload_1
    //   1110: invokevirtual 268	com/jcraft/jsch/Buffer:a	(B)V
    //   1113: aload 8
    //   1115: aload 13
    //   1117: invokevirtual 1175	com/jcraft/jsch/Channel:a	()I
    //   1120: invokevirtual 275	com/jcraft/jsch/Buffer:a	(I)V
    //   1123: aload_0
    //   1124: aload 10
    //   1126: invokevirtual 278	com/jcraft/jsch/Session:b	(Lcom/jcraft/jsch/Packet;)V
    //   1129: iconst_0
    //   1130: istore_2
    //   1131: aload 8
    //   1133: astore 7
    //   1135: goto -1095 -> 40
    //   1138: aload 8
    //   1140: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   1143: pop
    //   1144: aload 8
    //   1146: invokevirtual 932	com/jcraft/jsch/Buffer:f	()I
    //   1149: pop
    //   1150: aload 8
    //   1152: invokevirtual 934	com/jcraft/jsch/Buffer:j	()[B
    //   1155: invokestatic 557	com/jcraft/jsch/Util:b	([B)Ljava/lang/String;
    //   1158: astore 7
    //   1160: ldc_w 1285
    //   1163: aload 7
    //   1165: invokevirtual 364	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1168: ifne +98 -> 1266
    //   1171: ldc_w 1287
    //   1174: aload 7
    //   1176: invokevirtual 364	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1179: ifeq +10 -> 1189
    //   1182: aload_0
    //   1183: getfield 141	com/jcraft/jsch/Session:b	Z
    //   1186: ifne +80 -> 1266
    //   1189: ldc_w 1289
    //   1192: aload 7
    //   1194: invokevirtual 364	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1197: ifeq +10 -> 1207
    //   1200: aload_0
    //   1201: getfield 143	com/jcraft/jsch/Session:c	Z
    //   1204: ifne +62 -> 1266
    //   1207: aload 10
    //   1209: invokevirtual 265	com/jcraft/jsch/Packet:a	()V
    //   1212: aload 8
    //   1214: bipush 92
    //   1216: invokevirtual 268	com/jcraft/jsch/Buffer:a	(B)V
    //   1219: aload 8
    //   1221: aload 8
    //   1223: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   1226: invokevirtual 275	com/jcraft/jsch/Buffer:a	(I)V
    //   1229: aload 8
    //   1231: iconst_1
    //   1232: invokevirtual 275	com/jcraft/jsch/Buffer:a	(I)V
    //   1235: aload 8
    //   1237: getstatic 1291	com/jcraft/jsch/Util:a	[B
    //   1240: invokevirtual 273	com/jcraft/jsch/Buffer:b	([B)V
    //   1243: aload 8
    //   1245: getstatic 1291	com/jcraft/jsch/Util:a	[B
    //   1248: invokevirtual 273	com/jcraft/jsch/Buffer:b	([B)V
    //   1251: aload_0
    //   1252: aload 10
    //   1254: invokevirtual 278	com/jcraft/jsch/Session:b	(Lcom/jcraft/jsch/Packet;)V
    //   1257: iconst_0
    //   1258: istore_2
    //   1259: aload 8
    //   1261: astore 7
    //   1263: goto -1223 -> 40
    //   1266: aload 7
    //   1268: invokestatic 963	com/jcraft/jsch/Channel:a	(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    //   1271: astore 13
    //   1273: aload_0
    //   1274: aload 13
    //   1276: invokevirtual 966	com/jcraft/jsch/Session:a	(Lcom/jcraft/jsch/Channel;)V
    //   1279: aload 13
    //   1281: aload 8
    //   1283: invokevirtual 1293	com/jcraft/jsch/Channel:a	(Lcom/jcraft/jsch/Buffer;)V
    //   1286: aload 13
    //   1288: invokevirtual 968	com/jcraft/jsch/Channel:b	()V
    //   1291: new 254	java/lang/Thread
    //   1294: dup
    //   1295: aload 13
    //   1297: invokespecial 889	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
    //   1300: astore 13
    //   1302: aload 13
    //   1304: new 283	java/lang/StringBuilder
    //   1307: dup
    //   1308: ldc_w 1295
    //   1311: invokespecial 286	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1314: aload 7
    //   1316: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1319: ldc_w 645
    //   1322: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1325: aload_0
    //   1326: getfield 175	com/jcraft/jsch/Session:m	Ljava/lang/String;
    //   1329: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1332: invokevirtual 294	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1335: invokevirtual 894	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   1338: aload_0
    //   1339: getfield 165	com/jcraft/jsch/Session:j	Z
    //   1342: ifeq +12 -> 1354
    //   1345: aload 13
    //   1347: aload_0
    //   1348: getfield 165	com/jcraft/jsch/Session:j	Z
    //   1351: invokevirtual 897	java/lang/Thread:setDaemon	(Z)V
    //   1354: aload 13
    //   1356: invokevirtual 900	java/lang/Thread:start	()V
    //   1359: iconst_0
    //   1360: istore_2
    //   1361: aload 8
    //   1363: astore 7
    //   1365: goto -1325 -> 40
    //   1368: aload 8
    //   1370: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   1373: pop
    //   1374: aload 8
    //   1376: invokevirtual 932	com/jcraft/jsch/Buffer:f	()I
    //   1379: pop
    //   1380: aload 8
    //   1382: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   1385: aload_0
    //   1386: invokestatic 954	com/jcraft/jsch/Channel:a	(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    //   1389: astore 7
    //   1391: aload 7
    //   1393: ifnonnull +12 -> 1405
    //   1396: iconst_0
    //   1397: istore_2
    //   1398: aload 8
    //   1400: astore 7
    //   1402: goto -1362 -> 40
    //   1405: aload 7
    //   1407: iconst_1
    //   1408: putfield 1297	com/jcraft/jsch/Channel:r	I
    //   1411: iconst_0
    //   1412: istore_2
    //   1413: aload 8
    //   1415: astore 7
    //   1417: goto -1377 -> 40
    //   1420: aload 8
    //   1422: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   1425: pop
    //   1426: aload 8
    //   1428: invokevirtual 932	com/jcraft/jsch/Buffer:f	()I
    //   1431: pop
    //   1432: aload 8
    //   1434: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   1437: aload_0
    //   1438: invokestatic 954	com/jcraft/jsch/Channel:a	(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    //   1441: astore 7
    //   1443: aload 7
    //   1445: ifnonnull +12 -> 1457
    //   1448: iconst_0
    //   1449: istore_2
    //   1450: aload 8
    //   1452: astore 7
    //   1454: goto -1414 -> 40
    //   1457: aload 7
    //   1459: iconst_0
    //   1460: putfield 1297	com/jcraft/jsch/Channel:r	I
    //   1463: iconst_0
    //   1464: istore_2
    //   1465: aload 8
    //   1467: astore 7
    //   1469: goto -1429 -> 40
    //   1472: aload 8
    //   1474: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   1477: pop
    //   1478: aload 8
    //   1480: invokevirtual 932	com/jcraft/jsch/Buffer:f	()I
    //   1483: pop
    //   1484: aload 8
    //   1486: invokevirtual 934	com/jcraft/jsch/Buffer:j	()[B
    //   1489: pop
    //   1490: aload 8
    //   1492: invokevirtual 619	com/jcraft/jsch/Buffer:g	()I
    //   1495: ifeq +313 -> 1808
    //   1498: iconst_1
    //   1499: istore_2
    //   1500: iload_2
    //   1501: ifeq +133 -> 1634
    //   1504: aload 10
    //   1506: invokevirtual 265	com/jcraft/jsch/Packet:a	()V
    //   1509: aload 8
    //   1511: bipush 82
    //   1513: invokevirtual 268	com/jcraft/jsch/Buffer:a	(B)V
    //   1516: aload_0
    //   1517: aload 10
    //   1519: invokevirtual 278	com/jcraft/jsch/Session:b	(Lcom/jcraft/jsch/Packet;)V
    //   1522: iconst_0
    //   1523: istore_2
    //   1524: aload 8
    //   1526: astore 7
    //   1528: goto -1488 -> 40
    //   1531: aload_0
    //   1532: getfield 200	com/jcraft/jsch/Session:aj	Lcom/jcraft/jsch/Session$GlobalRequestReply;
    //   1535: invokevirtual 1299	com/jcraft/jsch/Session$GlobalRequestReply:a	()Ljava/lang/Thread;
    //   1538: astore 7
    //   1540: aload 7
    //   1542: ifnull +92 -> 1634
    //   1545: aload_0
    //   1546: getfield 200	com/jcraft/jsch/Session:aj	Lcom/jcraft/jsch/Session$GlobalRequestReply;
    //   1549: astore 13
    //   1551: iload_3
    //   1552: bipush 81
    //   1554: if_icmpne +65 -> 1619
    //   1557: iconst_1
    //   1558: istore_2
    //   1559: aload 13
    //   1561: iload_2
    //   1562: invokevirtual 1300	com/jcraft/jsch/Session$GlobalRequestReply:a	(I)V
    //   1565: iload_3
    //   1566: bipush 81
    //   1568: if_icmpne +37 -> 1605
    //   1571: aload_0
    //   1572: getfield 200	com/jcraft/jsch/Session:aj	Lcom/jcraft/jsch/Session$GlobalRequestReply;
    //   1575: invokevirtual 308	com/jcraft/jsch/Session$GlobalRequestReply:c	()I
    //   1578: ifne +27 -> 1605
    //   1581: aload 8
    //   1583: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   1586: pop
    //   1587: aload 8
    //   1589: invokevirtual 932	com/jcraft/jsch/Buffer:f	()I
    //   1592: pop
    //   1593: aload_0
    //   1594: getfield 200	com/jcraft/jsch/Session:aj	Lcom/jcraft/jsch/Session$GlobalRequestReply;
    //   1597: aload 8
    //   1599: invokevirtual 616	com/jcraft/jsch/Buffer:d	()I
    //   1602: invokevirtual 263	com/jcraft/jsch/Session$GlobalRequestReply:b	(I)V
    //   1605: aload 7
    //   1607: invokevirtual 1206	java/lang/Thread:interrupt	()V
    //   1610: iconst_0
    //   1611: istore_2
    //   1612: aload 8
    //   1614: astore 7
    //   1616: goto -1576 -> 40
    //   1619: iconst_0
    //   1620: istore_2
    //   1621: goto -62 -> 1559
    //   1624: astore 7
    //   1626: goto -1564 -> 62
    //   1629: astore 7
    //   1631: goto -1569 -> 62
    //   1634: iconst_0
    //   1635: istore_2
    //   1636: aload 8
    //   1638: astore 7
    //   1640: goto -1600 -> 40
    //   1643: iload_3
    //   1644: lookupswitch	default:+140->1784, 20:+-1367->277, 21:+-1350->294, 80:+-172->1472, 81:+-113->1531, 82:+-113->1531, 90:+-506->1138, 91:+-769->875, 92:+-688->956, 93:+-909->735, 94:+-1326->318, 95:+-1095->549, 96:+-853->791, 97:+-811->833, 98:+-623->1021, 99:+-276->1368, 100:+-224->1420
    //   1784: goto -1532 -> 252
    //   1787: aload 12
    //   1789: iconst_0
    //   1790: iaload
    //   1791: ifne -1188 -> 603
    //   1794: iconst_0
    //   1795: istore_2
    //   1796: aload 8
    //   1798: astore 7
    //   1800: goto -1760 -> 40
    //   1803: iconst_0
    //   1804: istore_2
    //   1805: goto -749 -> 1056
    //   1808: iconst_0
    //   1809: istore_2
    //   1810: goto -310 -> 1500
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1813	0	this	Session
    //   1070	40	1	b1	byte
    //   39	1771	2	i1	int
    //   85	1559	3	i2	int
    //   114	22	4	bool	boolean
    //   909	16	5	l1	long
    //   12	58	7	localBuffer1	Buffer
    //   147	34	7	localException1	Exception
    //   287	239	7	localObject1	Object
    //   530	1	7	localException2	Exception
    //   536	1079	7	localObject2	Object
    //   1624	1	7	localNullPointerException	NullPointerException
    //   1629	1	7	localException3	Exception
    //   1638	161	7	localObject3	Object
    //   51	59	8	localObject4	Object
    //   199	336	8	localInterruptedIOException	java.io.InterruptedIOException
    //   541	180	8	localObject5	Object
    //   727	1070	8	localBuffer2	Buffer
    //   36	274	9	localKeyExchange	KeyExchange
    //   23	1495	10	localPacket	Packet
    //   28	580	11	arrayOfInt1	int[]
    //   33	1755	12	arrayOfInt2	int[]
    //   356	37	13	arrayOfByte	byte[]
    //   514	1	13	localException4	Exception
    //   587	973	13	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   40	53	147	java/lang/Exception
    //   68	76	147	java/lang/Exception
    //   76	86	147	java/lang/Exception
    //   91	116	147	java/lang/Exception
    //   121	147	147	java/lang/Exception
    //   201	220	147	java/lang/Exception
    //   227	242	147	java/lang/Exception
    //   249	252	147	java/lang/Exception
    //   252	277	147	java/lang/Exception
    //   277	285	147	java/lang/Exception
    //   294	306	147	java/lang/Exception
    //   318	358	147	java/lang/Exception
    //   410	478	147	java/lang/Exception
    //   495	505	147	java/lang/Exception
    //   546	549	147	java/lang/Exception
    //   549	589	147	java/lang/Exception
    //   603	618	147	java/lang/Exception
    //   623	691	147	java/lang/Exception
    //   708	718	147	java/lang/Exception
    //   732	735	147	java/lang/Exception
    //   735	758	147	java/lang/Exception
    //   772	782	147	java/lang/Exception
    //   791	814	147	java/lang/Exception
    //   819	824	147	java/lang/Exception
    //   833	856	147	java/lang/Exception
    //   861	866	147	java/lang/Exception
    //   875	917	147	java/lang/Exception
    //   922	947	147	java/lang/Exception
    //   956	979	147	java/lang/Exception
    //   984	1012	147	java/lang/Exception
    //   1021	1054	147	java/lang/Exception
    //   1056	1063	147	java/lang/Exception
    //   1071	1095	147	java/lang/Exception
    //   1102	1129	147	java/lang/Exception
    //   1138	1189	147	java/lang/Exception
    //   1189	1207	147	java/lang/Exception
    //   1207	1257	147	java/lang/Exception
    //   1266	1354	147	java/lang/Exception
    //   1354	1359	147	java/lang/Exception
    //   1368	1391	147	java/lang/Exception
    //   1405	1411	147	java/lang/Exception
    //   1420	1443	147	java/lang/Exception
    //   1457	1463	147	java/lang/Exception
    //   1472	1498	147	java/lang/Exception
    //   1504	1522	147	java/lang/Exception
    //   1531	1540	147	java/lang/Exception
    //   1545	1551	147	java/lang/Exception
    //   1559	1565	147	java/lang/Exception
    //   1571	1605	147	java/lang/Exception
    //   1605	1610	147	java/lang/Exception
    //   68	76	199	java/io/InterruptedIOException
    //   390	405	514	java/lang/Exception
    //   516	521	530	java/lang/Exception
    //   478	492	541	finally
    //   492	495	541	finally
    //   543	546	541	finally
    //   691	705	727	finally
    //   705	708	727	finally
    //   729	732	727	finally
    //   58	62	1624	java/lang/NullPointerException
    //   58	62	1629	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.Session
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */