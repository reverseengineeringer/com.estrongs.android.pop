package com.jcraft.jsch;

import com.estrongs.android.util.f;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedOutputStream;
import java.nio.charset.Charset;
import java.util.Hashtable;
import java.util.Vector;

public class ChannelSftp
  extends ChannelSession
{
  private static final String U = File.separator;
  private static final char V = File.separatorChar;
  private static boolean W;
  private int F = 1;
  private int[] G = new int[1];
  private Buffer H;
  private Packet I;
  private Buffer J;
  private Packet K;
  private int L = 3;
  private int M = 3;
  private String N = String.valueOf(L);
  private Hashtable O = null;
  private InputStream P = null;
  private InputStream Q = null;
  private boolean R = false;
  private boolean S = false;
  private boolean T = false;
  private String X;
  private String Y;
  private String Z;
  private String aa = "UTF-8";
  private boolean ab = true;
  private boolean ac;
  private ChannelSftp.RequestQueue ad = new ChannelSftp.RequestQueue(this, 16);
  private boolean u = false;
  
  static
  {
    if ((byte)File.separatorChar == 92) {}
    for (boolean bool = true;; bool = false)
    {
      W = bool;
      return;
    }
  }
  
  public ChannelSftp()
  {
    c(2097152);
    d(2097152);
    e(32768);
  }
  
  private int a(byte[] paramArrayOfByte1, long paramLong, byte[] paramArrayOfByte2, int paramInt1, int paramInt2)
  {
    K.a();
    int i = paramInt2;
    if (J.b.length < J.c + 13 + 21 + paramArrayOfByte1.length + paramInt2 + 84) {
      i = J.b.length - (J.c + 13 + 21 + paramArrayOfByte1.length + 84);
    }
    a(J, (byte)6, paramArrayOfByte1.length + 21 + i);
    Buffer localBuffer = J;
    paramInt2 = F;
    F = (paramInt2 + 1);
    localBuffer.a(paramInt2);
    J.b(paramArrayOfByte1);
    J.a(paramLong);
    if (J.b != paramArrayOfByte2) {
      J.b(paramArrayOfByte2, paramInt1, i);
    }
    for (;;)
    {
      j().a(K, this, paramArrayOfByte1.length + 21 + i + 4);
      return i;
      J.a(i);
      J.b(i);
    }
  }
  
  private ChannelSftp.Header a(Buffer paramBuffer, ChannelSftp.Header paramHeader)
  {
    paramBuffer.m();
    c(b, 0, 9);
    a = (paramBuffer.d() - 5);
    b = (paramBuffer.g() & 0xFF);
    c = paramBuffer.d();
    return paramHeader;
  }
  
  private SftpATTRS a(byte[] paramArrayOfByte)
  {
    try
    {
      c(paramArrayOfByte);
      paramArrayOfByte = new ChannelSftp.Header(this);
      paramArrayOfByte = a(H, paramArrayOfByte);
      int i = a;
      int j = b;
      b(H, i);
      if (j != 105)
      {
        if (j == 101)
        {
          i = H.d();
          a(H, i);
        }
        throw new SftpException(4, "");
      }
    }
    catch (Exception paramArrayOfByte)
    {
      if ((paramArrayOfByte instanceof SftpException))
      {
        throw ((SftpException)paramArrayOfByte);
        paramArrayOfByte = SftpATTRS.a(H);
        return paramArrayOfByte;
      }
      if ((paramArrayOfByte instanceof Throwable)) {
        throw new SftpException(4, "", paramArrayOfByte);
      }
      throw new SftpException(4, "");
    }
  }
  
  private void a(byte paramByte, int paramInt)
  {
    a(H, paramByte, paramInt);
  }
  
  private void a(byte paramByte, byte[] paramArrayOfByte)
  {
    a(paramByte, paramArrayOfByte, null);
  }
  
  private void a(byte paramByte, byte[] paramArrayOfByte, String paramString)
  {
    I.a();
    int i = paramArrayOfByte.length + 9;
    int j;
    if (paramString == null)
    {
      a(paramByte, i);
      paramString = H;
      j = F;
      F = (j + 1);
      paramString.a(j);
    }
    for (;;)
    {
      H.b(paramArrayOfByte);
      j().a(I, this, i + 4);
      return;
      i += paramString.length() + 4;
      a((byte)-56, i);
      Buffer localBuffer = H;
      j = F;
      F = (j + 1);
      localBuffer.a(j);
      H.b(Util.b(paramString));
    }
  }
  
  private void a(byte paramByte, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, String paramString)
  {
    I.a();
    int i = paramArrayOfByte1.length + 13 + paramArrayOfByte2.length;
    int j;
    if (paramString == null)
    {
      a(paramByte, i);
      paramString = H;
      j = F;
      F = (j + 1);
      paramString.a(j);
    }
    for (;;)
    {
      H.b(paramArrayOfByte1);
      H.b(paramArrayOfByte2);
      j().a(I, this, i + 4);
      return;
      i += paramString.length() + 4;
      a((byte)-56, i);
      Buffer localBuffer = H;
      j = F;
      F = (j + 1);
      localBuffer.a(j);
      H.b(Util.b(paramString));
    }
  }
  
  private void a(int paramInt1, int paramInt2, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    P.mark(102400);
    Object localObject1 = new byte[0];
    int i = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = i;
    if (paramInt2 <= 0)
    {
      label26:
      if (localObject1.length > 0)
      {
        paramArrayOfByte = f.a((byte[])localObject1, localObject1.length);
        if ((!"UTF-8".equals(paramArrayOfByte)) && (Charset.isSupported(paramArrayOfByte))) {
          j(paramArrayOfByte);
        }
      }
      P.reset();
      H.k();
      return;
    }
    i = paramInt1;
    label114:
    byte[] arrayOfByte;
    boolean bool;
    if (paramInt1 > 0)
    {
      H.l();
      if (H.b.length > H.c + paramInt1)
      {
        i = paramInt1;
        i = c(H.b, H.c, i);
        localObject2 = H;
        c += i;
        i = paramInt1 - i;
      }
    }
    else
    {
      arrayOfByte = H.j();
      if (M <= 3) {
        H.j();
      }
      SftpATTRS.a(H);
      if (paramArrayOfByte != null) {
        break label263;
      }
      bool = true;
    }
    for (;;)
    {
      if (bool)
      {
        localObject2 = f.a((byte[])localObject1, arrayOfByte);
        localObject1 = localObject2;
        if (localObject2.length >= 1024) {
          break label26;
        }
        localObject1 = localObject2;
        label232:
        paramInt2 -= 1;
        paramInt1 = i;
        break;
        i = H.b.length - H.c;
        break label114;
        label263:
        if (!paramBoolean) {
          bool = Util.b(paramArrayOfByte, arrayOfByte);
        } else {
          if (ab) {
            break label316;
          }
        }
      }
    }
    label316:
    for (Object localObject2 = Util.b(Util.a(arrayOfByte, aa), "UTF-8");; localObject2 = arrayOfByte)
    {
      bool = Util.a(paramArrayOfByte, (byte[])localObject2);
      break;
      break label232;
    }
  }
  
  private void a(Buffer paramBuffer, byte paramByte, int paramInt)
  {
    paramBuffer.a((byte)94);
    paramBuffer.a(c);
    paramBuffer.a(paramInt + 4);
    paramBuffer.a(paramInt);
    paramBuffer.a(paramByte);
  }
  
  private void a(Buffer paramBuffer, int paramInt)
  {
    if ((M >= 3) && (paramBuffer.a() >= 4)) {
      throw new SftpException(paramInt, Util.a(paramBuffer.j(), "UTF-8"));
    }
    throw new SftpException(paramInt, "Failure");
  }
  
  private void a(String paramString, SftpATTRS paramSftpATTRS)
  {
    try
    {
      a(Util.b(paramString, aa), paramSftpATTRS);
      paramString = new ChannelSftp.Header(this);
      paramString = a(H, paramString);
      i = a;
      int j = b;
      b(H, i);
      if (j != 101) {
        throw new SftpException(4, "");
      }
    }
    catch (Exception paramString)
    {
      int i;
      if ((paramString instanceof SftpException))
      {
        throw ((SftpException)paramString);
        i = H.d();
        if (i != 0) {
          a(H, i);
        }
        return;
      }
      if ((paramString instanceof Throwable)) {
        throw new SftpException(4, "", paramString);
      }
      throw new SftpException(4, "");
    }
  }
  
  private void a(byte[] paramArrayOfByte, int paramInt)
  {
    I.a();
    a((byte)3, paramArrayOfByte.length + 17);
    Buffer localBuffer = H;
    int i = F;
    F = (i + 1);
    localBuffer.a(i);
    H.b(paramArrayOfByte);
    H.a(paramInt);
    H.a(0);
    j().a(I, this, paramArrayOfByte.length + 17 + 4);
  }
  
  private void a(byte[] paramArrayOfByte, long paramLong, int paramInt, ChannelSftp.RequestQueue paramRequestQueue)
  {
    I.a();
    a((byte)5, paramArrayOfByte.length + 21);
    Buffer localBuffer = H;
    int i = F;
    F = (i + 1);
    localBuffer.a(i);
    H.b(paramArrayOfByte);
    H.a(paramLong);
    H.a(paramInt);
    j().a(I, this, paramArrayOfByte.length + 21 + 4);
    if (paramRequestQueue != null) {
      paramRequestQueue.a(F - 1, paramLong, paramInt);
    }
  }
  
  private void a(byte[] paramArrayOfByte, SftpATTRS paramSftpATTRS)
  {
    I.a();
    a((byte)9, paramArrayOfByte.length + 9 + paramSftpATTRS.c());
    Buffer localBuffer = H;
    int i = F;
    F = (i + 1);
    localBuffer.a(i);
    H.b(paramArrayOfByte);
    paramSftpATTRS.b(H);
    j().a(I, this, paramArrayOfByte.length + 9 + paramSftpATTRS.c() + 4);
  }
  
  private void a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (R) {}
    for (String str = "posix-rename@openssh.com";; str = null)
    {
      a((byte)18, paramArrayOfByte1, paramArrayOfByte2, str);
      return;
    }
  }
  
  private boolean a(String paramString, byte[][] paramArrayOfByte)
  {
    paramString = Util.b(paramString, "UTF-8");
    if (paramArrayOfByte != null) {
      paramArrayOfByte[0] = paramString;
    }
    return m(paramString);
  }
  
  private boolean a(byte[] paramArrayOfByte, ChannelSftp.Header paramHeader)
  {
    i(paramArrayOfByte);
    return a(null, paramHeader);
  }
  
  private boolean a(int[] paramArrayOfInt, ChannelSftp.Header paramHeader)
  {
    paramHeader = a(H, paramHeader);
    int i = a;
    int j = b;
    if (paramArrayOfInt != null) {
      paramArrayOfInt[0] = c;
    }
    b(H, i);
    if (j != 101) {
      throw new SftpException(4, "");
    }
    i = H.d();
    if (i != 0) {
      a(H, i);
    }
    return true;
  }
  
  private void b(Buffer paramBuffer, int paramInt)
  {
    paramBuffer.k();
    c(b, 0, paramInt);
    paramBuffer.b(paramInt);
  }
  
  private void b(byte[] paramArrayOfByte)
  {
    a((byte)16, paramArrayOfByte);
  }
  
  private void b(byte[] paramArrayOfByte, SftpATTRS paramSftpATTRS)
  {
    int j = 4;
    I.a();
    int k = paramArrayOfByte.length;
    int i;
    Object localObject;
    if (paramSftpATTRS != null)
    {
      i = paramSftpATTRS.c();
      a((byte)14, i + (k + 9));
      localObject = H;
      i = F;
      F = (i + 1);
      ((Buffer)localObject).a(i);
      H.b(paramArrayOfByte);
      if (paramSftpATTRS == null) {
        break label131;
      }
      paramSftpATTRS.b(H);
    }
    for (;;)
    {
      localObject = j();
      Packet localPacket = I;
      k = paramArrayOfByte.length;
      i = j;
      if (paramSftpATTRS != null) {
        i = paramSftpATTRS.c();
      }
      ((Session)localObject).a(localPacket, this, i + (k + 9) + 4);
      return;
      i = 4;
      break;
      label131:
      H.a(0);
    }
  }
  
  private int c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    for (;;)
    {
      if (paramInt2 <= 0) {
        return i - paramInt1;
      }
      int j = P.read(paramArrayOfByte, i, paramInt2);
      if (j <= 0) {
        throw new IOException("inputstream is closed");
      }
      i += j;
      paramInt2 -= j;
    }
  }
  
  private void c(long paramLong)
  {
    for (;;)
    {
      if (paramLong <= 0L) {}
      long l;
      do
      {
        return;
        l = P.skip(paramLong);
      } while (l <= 0L);
      paramLong -= l;
    }
  }
  
  private void c(byte[] paramArrayOfByte)
  {
    a((byte)17, paramArrayOfByte);
  }
  
  private void d(byte[] paramArrayOfByte)
  {
    a((byte)13, paramArrayOfByte);
  }
  
  private void e(byte[] paramArrayOfByte)
  {
    a((byte)15, paramArrayOfByte);
  }
  
  private void f(byte[] paramArrayOfByte)
  {
    a((byte)19, paramArrayOfByte);
  }
  
  private void g(byte[] paramArrayOfByte)
  {
    a((byte)11, paramArrayOfByte);
  }
  
  private void h(byte[] paramArrayOfByte)
  {
    a((byte)12, paramArrayOfByte);
  }
  
  private void i(byte[] paramArrayOfByte)
  {
    a((byte)4, paramArrayOfByte);
  }
  
  private void j(byte[] paramArrayOfByte)
  {
    a(paramArrayOfByte, 1);
  }
  
  private void k(byte[] paramArrayOfByte)
  {
    a(paramArrayOfByte, 26);
  }
  
  private boolean k(String paramString)
  {
    try
    {
      c(Util.b(paramString, aa));
      paramString = new ChannelSftp.Header(this);
      paramString = a(H, paramString);
      int i = a;
      int j = b;
      b(H, i);
      if (j != 105) {
        return false;
      }
      boolean bool = SftpATTRS.a(H).d();
      return bool;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  private SftpATTRS l(String paramString)
  {
    return a(Util.b(paramString, aa));
  }
  
  private void l(byte[] paramArrayOfByte)
  {
    a(paramArrayOfByte, 10);
  }
  
  private boolean m(byte[] paramArrayOfByte)
  {
    int k = paramArrayOfByte.length;
    int j;
    for (int i = 0;; i = j + 1)
    {
      if (i >= k) {
        return false;
      }
      if ((paramArrayOfByte[i] == 42) || (paramArrayOfByte[i] == 63)) {
        return true;
      }
      j = i;
      if (paramArrayOfByte[i] == 92)
      {
        j = i;
        if (i + 1 < k) {
          j = i + 1;
        }
      }
    }
  }
  
  private byte[] m(String paramString)
  {
    b(Util.b(paramString, aa));
    paramString = new ChannelSftp.Header(this);
    paramString = a(H, paramString);
    int i = a;
    int j = b;
    b(H, i);
    if ((j != 101) && (j != 104)) {
      throw new SftpException(4, "");
    }
    if (j == 101)
    {
      i = H.d();
      a(H, i);
    }
    i = H.d();
    paramString = null;
    for (;;)
    {
      if (i <= 0) {
        return paramString;
      }
      paramString = H.j();
      if (M <= 3) {
        H.j();
      }
      SftpATTRS.a(H);
      i -= 1;
    }
  }
  
  private void n(String paramString)
  {
    X = paramString;
  }
  
  private Vector o(String paramString)
  {
    Vector localVector = new Vector();
    int j = paramString.lastIndexOf('/');
    if (j < 0)
    {
      localVector.addElement(Util.a(paramString));
      return localVector;
    }
    if (j == 0) {}
    String str;
    for (int i = 1;; i = j)
    {
      str = paramString.substring(0, i);
      localObject1 = paramString.substring(j + 1);
      str = Util.a(str);
      paramString = new byte[1][];
      if (a((String)localObject1, paramString)) {
        break;
      }
      paramString = str;
      if (!str.equals("/")) {
        paramString = str + "/";
      }
      localVector.addElement(paramString + Util.a((String)localObject1));
      return localVector;
    }
    byte[] arrayOfByte2 = paramString[0];
    g(Util.b(str, aa));
    paramString = new ChannelSftp.Header(this);
    paramString = a(H, paramString);
    i = a;
    j = b;
    b(H, i);
    if ((j != 101) && (j != 102)) {
      throw new SftpException(4, "");
    }
    if (j == 101)
    {
      i = H.d();
      a(H, i);
    }
    byte[] arrayOfByte3 = H.j();
    Object localObject1 = null;
    ChannelSftp.Header localHeader;
    for (;;)
    {
      h(arrayOfByte3);
      localHeader = a(H, paramString);
      i = a;
      j = b;
      if ((j != 101) && (j != 104)) {
        throw new SftpException(4, "");
      }
      if (j == 101)
      {
        b(H, i);
        if (!a(arrayOfByte3, localHeader)) {
          break label683;
        }
        return localVector;
      }
      H.m();
      c(H.b, 0, 4);
      i -= 4;
      j = H.d();
      H.k();
      if (j > 0) {
        break;
      }
      paramString = localHeader;
    }
    int k = i;
    if (i > 0)
    {
      H.l();
      if (H.b.length > H.c + i) {}
      for (k = i;; k = H.b.length - H.c)
      {
        k = P.read(H.b, H.c, k);
        if (k > 0) {
          break label487;
        }
        paramString = localHeader;
        break;
      }
      label487:
      paramString = H;
      c += k;
      k = i - k;
    }
    byte[] arrayOfByte1 = H.j();
    if (M <= 3) {
      H.j();
    }
    SftpATTRS.a(H);
    paramString = null;
    Object localObject2;
    label569:
    Object localObject3;
    if (!ab)
    {
      paramString = Util.a(arrayOfByte1, aa);
      localObject2 = Util.b(paramString, "UTF-8");
      localObject3 = localObject1;
      if (Util.a(arrayOfByte2, (byte[])localObject2))
      {
        localObject2 = paramString;
        if (paramString == null) {
          localObject2 = Util.a(arrayOfByte1, aa);
        }
        paramString = (String)localObject1;
        if (localObject1 == null) {
          if (str.endsWith("/")) {
            break label692;
          }
        }
      }
    }
    label683:
    label692:
    for (paramString = str + "/";; paramString = str)
    {
      localVector.addElement(paramString + (String)localObject2);
      localObject3 = paramString;
      j -= 1;
      localObject1 = localObject3;
      i = k;
      break;
      return null;
      localObject2 = arrayOfByte1;
      break label569;
    }
  }
  
  private boolean p(String paramString)
  {
    return a(paramString, null);
  }
  
  private String q(String paramString)
  {
    if (paramString.charAt(0) == '/') {
      return paramString;
    }
    String str = r();
    if (str.endsWith("/")) {
      return str + paramString;
    }
    return str + "/" + paramString;
  }
  
  private String r()
  {
    if (X == null) {
      X = o();
    }
    return X;
  }
  
  private String r(String paramString)
  {
    Vector localVector = o(paramString);
    if (localVector.size() != 1) {
      throw new SftpException(4, paramString + " is not unique: " + localVector.toString());
    }
    return (String)localVector.elementAt(0);
  }
  
  private void s()
  {
    I.a();
    a((byte)1, 5);
    H.a(3);
    j().a(I, this, 9);
  }
  
  public InputStream a(String paramString, SftpProgressMonitor paramSftpProgressMonitor, long paramLong)
  {
    try
    {
      ((Channel.MyPipedInputStream)Q).a();
      paramString = r(q(paramString));
      byte[] arrayOfByte = Util.b(paramString, aa);
      SftpATTRS localSftpATTRS = a(arrayOfByte);
      if (paramSftpProgressMonitor != null) {
        paramSftpProgressMonitor.a(1, paramString, "??", localSftpATTRS.g());
      }
      j(arrayOfByte);
      paramString = new ChannelSftp.Header(this);
      paramString = a(H, paramString);
      i = a;
      j = b;
      b(H, i);
      if ((j != 101) && (j != 102)) {
        throw new SftpException(4, "");
      }
    }
    catch (Exception paramString)
    {
      int i;
      int j;
      if ((paramString instanceof SftpException))
      {
        throw ((SftpException)paramString);
        if (j == 101)
        {
          i = H.d();
          a(H, i);
        }
        paramString = H.j();
        ad.a();
        paramString = new ChannelSftp.2(this, paramLong, paramSftpProgressMonitor, paramString);
        return paramString;
      }
      if ((paramString instanceof Throwable)) {
        throw new SftpException(4, "", paramString);
      }
      throw new SftpException(4, "");
    }
  }
  
  public OutputStream a(String paramString, SftpProgressMonitor paramSftpProgressMonitor, int paramInt)
  {
    return a(paramString, paramSftpProgressMonitor, paramInt, 0L);
  }
  
  public OutputStream a(String paramString, SftpProgressMonitor paramSftpProgressMonitor, int paramInt, long paramLong)
  {
    try
    {
      ((Channel.MyPipedInputStream)Q).a();
      paramString = r(q(paramString));
      if (!k(paramString)) {
        break label70;
      }
      throw new SftpException(4, paramString + " is a directory");
    }
    catch (Exception paramString)
    {
      if (!(paramString instanceof SftpException)) {
        break label261;
      }
    }
    throw ((SftpException)paramString);
    label70:
    paramString = Util.b(paramString, aa);
    long l2 = 0L;
    long l1;
    if (paramInt != 1)
    {
      l1 = l2;
      if (paramInt != 2) {
        break label106;
      }
    }
    try
    {
      l1 = a(paramString).g();
      label106:
      if (paramInt == 0) {
        k(paramString);
      }
      int i;
      int j;
      for (;;)
      {
        paramString = new ChannelSftp.Header(this);
        paramString = a(H, paramString);
        i = a;
        j = b;
        b(H, i);
        if ((j == 101) || (j == 102)) {
          break;
        }
        throw new SftpException(4, "");
        l(paramString);
      }
      if (j == 101)
      {
        i = H.d();
        a(H, i);
      }
      paramString = H.j();
      if (paramInt != 1)
      {
        l2 = paramLong;
        if (paramInt != 2)
        {
          paramString = new ChannelSftp.1(this, paramString, new long[] { l2 }, paramSftpProgressMonitor);
          return paramString;
          label261:
          if ((paramString instanceof Throwable)) {
            throw new SftpException(4, "", paramString);
          }
          throw new SftpException(4, "");
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        l1 = l2;
        continue;
        l2 = paramLong + l1;
      }
    }
  }
  
  public void a(String paramString, int paramInt)
  {
    int i = 0;
    int j;
    do
    {
      try
      {
        ((Channel.MyPipedInputStream)Q).a();
        paramString = o(q(paramString));
        j = paramString.size();
      }
      catch (Exception paramString)
      {
        String str;
        SftpATTRS localSftpATTRS;
        if (!(paramString instanceof SftpException)) {
          continue;
        }
        throw ((SftpException)paramString);
        if (!(paramString instanceof Throwable)) {
          continue;
        }
        throw new SftpException(4, "", paramString);
        throw new SftpException(4, "");
      }
      str = (String)paramString.elementAt(i);
      localSftpATTRS = l(str);
      localSftpATTRS.a(0);
      localSftpATTRS.a(localSftpATTRS.k(), paramInt);
      a(str, localSftpATTRS);
      i += 1;
    } while (i < j);
  }
  
  public void a(String paramString, ChannelSftp.LsEntrySelector paramLsEntrySelector)
  {
    int j;
    Object localObject1;
    Object localObject2;
    Object localObject3;
    boolean bool2;
    for (;;)
    {
      try
      {
        ((Channel.MyPipedInputStream)Q).a();
        paramString = q(paramString);
        new Vector();
        j = paramString.lastIndexOf('/');
        if (j != 0) {
          break label185;
        }
        i = 1;
        localObject1 = paramString.substring(0, i);
        localObject2 = paramString.substring(j + 1);
        localObject1 = Util.a((String)localObject1);
        localObject3 = new byte[1][];
        bool2 = a((String)localObject2, (byte[][])localObject3);
        if (!bool2) {
          break label191;
        }
        paramString = localObject3[0];
        g(Util.b((String)localObject1, aa));
        localObject1 = new ChannelSftp.Header(this);
        localObject1 = a(H, (ChannelSftp.Header)localObject1);
        i = a;
        j = b;
        b(H, i);
        if ((j == 101) || (j == 102)) {
          break;
        }
        throw new SftpException(4, "");
      }
      catch (Exception paramString)
      {
        if (!(paramString instanceof SftpException)) {
          break label790;
        }
      }
      throw ((SftpException)paramString);
      label185:
      i = j;
      continue;
      label191:
      paramString = Util.a(paramString);
      if (l(paramString).d())
      {
        localObject2 = null;
        localObject1 = paramString;
        paramString = (String)localObject2;
      }
      else if (ab)
      {
        paramString = Util.a(localObject3[0]);
      }
      else
      {
        paramString = Util.b(Util.a((String)localObject2), aa);
      }
    }
    if (j == 101)
    {
      i = H.d();
      a(H, i);
    }
    int i = 0;
    byte[] arrayOfByte2 = H.j();
    break label849;
    for (;;)
    {
      a(arrayOfByte2, (ChannelSftp.Header)localObject1);
      return;
      h(arrayOfByte2);
      localObject2 = a(H, (ChannelSftp.Header)localObject1);
      j = a;
      k = b;
      if ((k != 101) && (k != 104)) {
        throw new SftpException(4, "");
      }
      if (k != 101) {
        break label407;
      }
      b(H, j);
      k = H.d();
      if (k != 1) {
        break;
      }
      localObject1 = localObject2;
    }
    a(H, k);
    label407:
    H.m();
    c(H.b, 0, 4);
    j -= 4;
    int k = H.d();
    H.k();
    int m;
    if (ac)
    {
      a(k, j, paramString, bool2);
      m = j;
      j = i;
      i = m;
    }
    label632:
    label693:
    label718:
    label776:
    label790:
    label849:
    label856:
    label871:
    label891:
    label898:
    for (;;)
    {
      if (i > 0)
      {
        H.l();
        if (H.b.length > H.c + i)
        {
          m = i;
          m = c(H.b, H.c, m);
          localObject1 = H;
          c += m;
          i -= m;
        }
      }
      boolean bool1;
      Object localObject4;
      for (;;)
      {
        byte[] arrayOfByte1 = H.j();
        if (M <= 3) {}
        for (localObject3 = H.j();; localObject3 = null)
        {
          SftpATTRS localSftpATTRS = SftpATTRS.a(H);
          if (j != 1) {
            break label871;
          }
          k -= 1;
          break label856;
          m = H.b.length - H.c;
          break;
          for (;;)
          {
            if (!bool1) {
              break label891;
            }
            localObject4 = localObject1;
            if (localObject1 == null) {
              localObject4 = Util.a(arrayOfByte1, aa);
            }
            if (localObject3 != null) {
              break label776;
            }
            localObject1 = localSftpATTRS.toString() + " " + (String)localObject4;
            j = paramLsEntrySelector.a(new ChannelSftp.LsEntry(this, (String)localObject4, (String)localObject1, localSftpATTRS));
            break label891;
            if (bool2) {
              break;
            }
            bool1 = Util.b(paramString, arrayOfByte1);
            localObject1 = localObject4;
          }
          if (!ab) {
            localObject1 = Util.a(arrayOfByte1, aa);
          }
          for (localObject4 = Util.b((String)localObject1, "UTF-8");; localObject4 = arrayOfByte1)
          {
            bool1 = Util.a(paramString, (byte[])localObject4);
            break;
            localObject1 = Util.a((byte[])localObject3, aa);
            break label693;
            if ((paramString instanceof Throwable)) {
              throw new SftpException(4, "", paramString);
            }
            throw new SftpException(4, "");
          }
        }
      }
      m = j;
      j = i;
      i = m;
      break label856;
      if (i != 0) {
        break;
      }
      for (;;)
      {
        if (k > 0) {
          break label898;
        }
        i = j;
        localObject1 = localObject2;
        break label849;
        break;
        localObject1 = null;
        localObject4 = null;
        if (paramString != null) {
          break label718;
        }
        bool1 = true;
        localObject1 = localObject4;
        break label632;
        k -= 1;
      }
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (M < 2) {
      throw new SftpException(8, "The remote sshd is too old to support rename operation.");
    }
    try
    {
      ((Channel.MyPipedInputStream)Q).a();
      localObject = q(paramString1);
      paramString1 = q(paramString2);
      paramString2 = r((String)localObject);
      localObject = o(paramString1);
      i = ((Vector)localObject).size();
      if (i >= 2) {
        throw new SftpException(4, ((Vector)localObject).toString());
      }
    }
    catch (Exception paramString1)
    {
      Object localObject;
      int i;
      if ((paramString1 instanceof SftpException))
      {
        throw ((SftpException)paramString1);
        if (i == 1) {}
        for (paramString1 = (String)((Vector)localObject).elementAt(0);; paramString1 = Util.a(paramString1))
        {
          a(Util.b(paramString2, aa), Util.b(paramString1, aa));
          paramString1 = new ChannelSftp.Header(this);
          paramString1 = a(H, paramString1);
          i = a;
          int j = b;
          b(H, i);
          if (j == 101) {
            break;
          }
          throw new SftpException(4, "");
          if (p(paramString1)) {
            throw new SftpException(4, paramString1);
          }
        }
        i = H.d();
        if (i == 0) {
          return;
        }
        a(H, i);
        return;
      }
      if ((paramString1 instanceof Throwable)) {
        throw new SftpException(4, "", paramString1);
      }
      throw new SftpException(4, "");
    }
  }
  
  void b() {}
  
  public void b(String paramString)
  {
    try
    {
      ((Channel.MyPipedInputStream)Q).a();
      paramString = r(q(paramString));
      arrayOfByte = m(paramString);
      localSftpATTRS = a(arrayOfByte);
      if ((localSftpATTRS.f() & 0x4) == 0) {
        throw new SftpException(4, "Can't change directory: " + paramString);
      }
    }
    catch (Exception paramString)
    {
      byte[] arrayOfByte;
      SftpATTRS localSftpATTRS;
      if ((paramString instanceof SftpException))
      {
        throw ((SftpException)paramString);
        if (!localSftpATTRS.d()) {
          throw new SftpException(4, "Can't change directory: " + paramString);
        }
        n(Util.a(arrayOfByte, aa));
        return;
      }
      if ((paramString instanceof Throwable)) {
        throw new SftpException(4, "", paramString);
      }
      throw new SftpException(4, "");
    }
  }
  
  public OutputStream c(String paramString)
  {
    return a(paramString, null, 0);
  }
  
  public void c()
  {
    try
    {
      Object localObject1 = new PipedOutputStream();
      this.j.a((OutputStream)localObject1);
      localObject1 = new Channel.MyPipedInputStream(this, (PipedOutputStream)localObject1, this.i);
      this.j.a((InputStream)localObject1);
      Q = ja;
      P = new BufferedInputStream(Q);
      if (P != null) {
        break label95;
      }
      throw new JSchException("channel is down");
    }
    catch (Exception localException)
    {
      if (!(localException instanceof JSchException)) {
        break label452;
      }
    }
    throw ((JSchException)localException);
    label95:
    new RequestSftp().a(j(), this);
    H = new Buffer(g);
    I = new Packet(H);
    J = new Buffer(this.i);
    K = new Packet(J);
    s();
    Object localObject2 = new ChannelSftp.Header(this);
    localObject2 = a(H, (ChannelSftp.Header)localObject2);
    int i = a;
    if (i > 262144) {
      throw new SftpException(4, "Received message is too long: " + i);
    }
    int j = b;
    M = c;
    O = new Hashtable();
    if (i > 0) {
      b(H, i);
    }
    for (;;)
    {
      if ((O.get("posix-rename@openssh.com") != null) && (O.get("posix-rename@openssh.com").equals("1"))) {
        R = true;
      }
      if ((O.get("statvfs@openssh.com") != null) && (O.get("statvfs@openssh.com").equals("2"))) {
        S = true;
      }
      if ((O.get("hardlink@openssh.com") != null) && (O.get("hardlink@openssh.com").equals("1"))) {
        T = true;
      }
      Z = new File(".").getCanonicalPath();
      return;
      label452:
      do
      {
        localObject2 = H.j();
        j = localObject2.length;
        byte[] arrayOfByte = H.j();
        i = i - (j + 4) - (arrayOfByte.length + 4);
        O.put(Util.b((byte[])localObject2), Util.b(arrayOfByte));
        continue;
        if ((localObject2 instanceof Throwable)) {
          throw new JSchException(((Exception)localObject2).toString(), (Throwable)localObject2);
        }
        throw new JSchException(((Exception)localObject2).toString());
      } while (i > 0);
    }
  }
  
  public Vector d(String paramString)
  {
    Vector localVector = new Vector();
    a(paramString, new ChannelSftp.3(this, localVector));
    return localVector;
  }
  
  public String e(String paramString)
  {
    Object localObject = null;
    try
    {
      if (M < 3) {
        throw new SftpException(8, "The remote sshd is too old to support symlink operation.");
      }
    }
    catch (Exception paramString)
    {
      if ((paramString instanceof SftpException))
      {
        throw ((SftpException)paramString);
        ((Channel.MyPipedInputStream)Q).a();
        f(Util.b(r(q(paramString)), aa));
        paramString = new ChannelSftp.Header(this);
        paramString = a(H, paramString);
        int i = a;
        int j = b;
        b(H, i);
        if ((j != 101) && (j != 104)) {
          throw new SftpException(4, "");
        }
        if (j == 104)
        {
          j = H.d();
          i = 0;
          paramString = (String)localObject;
          for (;;)
          {
            if (i >= j) {
              return Util.a(paramString, aa);
            }
            paramString = H.j();
            if (M <= 3) {
              H.j();
            }
            SftpATTRS.a(H);
            i += 1;
          }
        }
        i = H.d();
        a(H, i);
        return null;
      }
      if ((paramString instanceof Throwable)) {
        throw new SftpException(4, "", paramString);
      }
      throw new SftpException(4, "");
    }
  }
  
  public void f(String paramString)
  {
    int j;
    int i;
    do
    {
      try
      {
        ((Channel.MyPipedInputStream)Q).a();
        localVector = o(q(paramString));
        j = localVector.size();
        paramString = new ChannelSftp.Header(this);
        i = 0;
      }
      catch (Exception paramString)
      {
        Vector localVector;
        int m;
        if (!(paramString instanceof SftpException)) {
          continue;
        }
        throw ((SftpException)paramString);
        int k = H.d();
        if (k == 0) {
          continue;
        }
        a(H, k);
        i += 1;
        continue;
        if (!(paramString instanceof Throwable)) {
          continue;
        }
        throw new SftpException(4, "", paramString);
        throw new SftpException(4, "");
      }
      d(Util.b((String)localVector.elementAt(i), aa));
      paramString = a(H, paramString);
      k = a;
      m = b;
      b(H, k);
      if (m != 101) {
        throw new SftpException(4, "");
      }
    } while (i < j);
  }
  
  public void g(String paramString)
  {
    int j;
    int i;
    do
    {
      try
      {
        ((Channel.MyPipedInputStream)Q).a();
        localVector = o(q(paramString));
        j = localVector.size();
        paramString = new ChannelSftp.Header(this);
        i = 0;
      }
      catch (Exception paramString)
      {
        Vector localVector;
        int m;
        if (!(paramString instanceof SftpException)) {
          continue;
        }
        throw ((SftpException)paramString);
        int k = H.d();
        if (k == 0) {
          continue;
        }
        a(H, k);
        i += 1;
        continue;
        if (!(paramString instanceof Throwable)) {
          continue;
        }
        throw new SftpException(4, "", paramString);
        throw new SftpException(4, "");
      }
      e(Util.b((String)localVector.elementAt(i), aa));
      paramString = a(H, paramString);
      k = a;
      m = b;
      b(H, k);
      if (m != 101) {
        throw new SftpException(4, "");
      }
    } while (i < j);
  }
  
  public void h()
  {
    super.h();
  }
  
  public void h(String paramString)
  {
    try
    {
      ((Channel.MyPipedInputStream)Q).a();
      b(Util.b(q(paramString), aa), null);
      paramString = new ChannelSftp.Header(this);
      paramString = a(H, paramString);
      i = a;
      int j = b;
      b(H, i);
      if (j != 101) {
        throw new SftpException(4, "");
      }
    }
    catch (Exception paramString)
    {
      int i;
      if ((paramString instanceof SftpException))
      {
        throw ((SftpException)paramString);
        i = H.d();
        if (i == 0) {
          return;
        }
        a(H, i);
        return;
      }
      if ((paramString instanceof Throwable)) {
        throw new SftpException(4, "", paramString);
      }
      throw new SftpException(4, "");
    }
  }
  
  public SftpATTRS i(String paramString)
  {
    try
    {
      ((Channel.MyPipedInputStream)Q).a();
      paramString = l(r(q(paramString)));
      return paramString;
    }
    catch (Exception paramString)
    {
      if ((paramString instanceof SftpException)) {
        throw ((SftpException)paramString);
      }
      if ((paramString instanceof Throwable)) {
        throw new SftpException(4, "", paramString);
      }
      throw new SftpException(4, "");
    }
  }
  
  public void j(String paramString)
  {
    if ("AUTO".equalsIgnoreCase(paramString))
    {
      ac = true;
      return;
    }
    ac = false;
    int i = p();
    if ((4 <= i) && (i <= 5) && (!paramString.equals("UTF-8"))) {
      throw new SftpException(4, "The encoding can not be changed for this sftp server.");
    }
    String str = paramString;
    if (paramString.equals("UTF-8")) {
      str = "UTF-8";
    }
    aa = str;
    ab = aa.equals("UTF-8");
  }
  
  public String o()
  {
    if (Y == null) {}
    try
    {
      ((Channel.MyPipedInputStream)Q).a();
      Y = Util.a(m(""), aa);
      return Y;
    }
    catch (Exception localException)
    {
      if ((localException instanceof SftpException)) {
        throw ((SftpException)localException);
      }
      if ((localException instanceof Throwable)) {
        throw new SftpException(4, "", localException);
      }
      throw new SftpException(4, "");
    }
  }
  
  public int p()
  {
    if (!i()) {
      throw new SftpException(4, "The channel is not connected.");
    }
    return M;
  }
  
  public String q()
  {
    return aa;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ChannelSftp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */