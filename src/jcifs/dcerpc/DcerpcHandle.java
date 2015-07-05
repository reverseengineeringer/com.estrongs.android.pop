package jcifs.dcerpc;

import java.io.IOException;
import java.security.Principal;
import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.smb.BufferCache;
import jcifs.smb.NtlmPasswordAuthentication;
import jcifs.smb.SmbNamedPipe;

public abstract class DcerpcHandle
  implements DcerpcConstants
{
  private static int call_id = 1;
  protected DcerpcBinding binding;
  protected int max_recv = max_xmit;
  protected int max_xmit = 4280;
  protected DcerpcSecurityProvider securityProvider = null;
  protected int state = 0;
  
  public static DcerpcHandle getHandle(String paramString, NtlmPasswordAuthentication paramNtlmPasswordAuthentication)
  {
    if (paramString.startsWith("ncacn_np:")) {
      return new DcerpcPipeHandle(paramString, paramNtlmPasswordAuthentication);
    }
    throw new DcerpcException("DCERPC transport not supported: " + paramString);
  }
  
  protected static DcerpcBinding parseBinding(String paramString)
  {
    char[] arrayOfChar = paramString.toCharArray();
    int k = 0;
    Object localObject4 = null;
    Object localObject1 = null;
    Object localObject3 = null;
    int i1 = 0;
    int m = 0;
    int i2 = arrayOfChar[k];
    int j = m;
    int n;
    int i;
    Object localObject6;
    Object localObject2;
    Object localObject5;
    switch (m)
    {
    case 3: 
    case 4: 
    default: 
      n = arrayOfChar.length;
      j = m;
      i = i1;
      localObject6 = localObject3;
      localObject2 = localObject1;
      localObject5 = localObject4;
    }
    for (;;)
    {
      n += 1;
      localObject4 = localObject5;
      localObject1 = localObject2;
      localObject3 = localObject6;
      k = n;
      i1 = i;
      m = j;
      if (n < arrayOfChar.length) {
        break;
      }
      if ((localObject5 != null) && (endpoint != null)) {
        break label472;
      }
      throw new DcerpcException("Invalid binding URL: " + paramString);
      localObject5 = localObject4;
      localObject2 = localObject1;
      localObject6 = localObject3;
      n = k;
      i = i1;
      j = m;
      if (i2 == 58)
      {
        localObject6 = paramString.substring(i1, k);
        i = k + 1;
        j = 1;
        localObject5 = localObject4;
        localObject2 = localObject1;
        n = k;
        continue;
        if (i2 == 92)
        {
          i = k + 1;
          localObject5 = localObject4;
          localObject2 = localObject1;
          localObject6 = localObject3;
          n = k;
          j = m;
        }
        else
        {
          j = 2;
          localObject5 = localObject4;
          localObject2 = localObject1;
          localObject6 = localObject3;
          n = k;
          i = i1;
          if (i2 == 91)
          {
            if (paramString.substring(i1, k).trim().length() == 0) {}
            localObject5 = new DcerpcBinding((String)localObject3, paramString.substring(i1, k));
            i = k + 1;
            j = 5;
            localObject2 = localObject1;
            localObject6 = localObject3;
            n = k;
            continue;
            if (i2 == 61)
            {
              localObject2 = paramString.substring(i1, k).trim();
              i = k + 1;
              localObject5 = localObject4;
              localObject6 = localObject3;
              n = k;
              j = m;
            }
            else if (i2 != 44)
            {
              localObject5 = localObject4;
              localObject2 = localObject1;
              localObject6 = localObject3;
              n = k;
              i = i1;
              j = m;
              if (i2 != 93) {}
            }
            else
            {
              localObject5 = paramString.substring(i1, k).trim();
              localObject2 = localObject1;
              if (localObject1 == null) {
                localObject2 = "endpoint";
              }
              ((DcerpcBinding)localObject4).setOption((String)localObject2, localObject5);
              localObject2 = null;
              localObject5 = localObject4;
              localObject6 = localObject3;
              n = k;
              i = i1;
              j = m;
            }
          }
        }
      }
    }
    label472:
    return (DcerpcBinding)localObject5;
  }
  
  public void bind()
  {
    try
    {
      state = 1;
      sendrecv(new DcerpcBind(binding, this));
      return;
    }
    catch (IOException localIOException)
    {
      state = 0;
      throw localIOException;
    }
    finally {}
  }
  
  public abstract void close();
  
  protected abstract void doReceiveFragment(byte[] paramArrayOfByte, boolean paramBoolean);
  
  protected abstract void doSendFragment(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean);
  
  public Principal getPrincipal()
  {
    if ((this instanceof DcerpcPipeHandle)) {
      return pipe.getPrincipal();
    }
    return null;
  }
  
  public String getServer()
  {
    if ((this instanceof DcerpcPipeHandle)) {
      return pipe.getServer();
    }
    return null;
  }
  
  public void sendrecv(DcerpcMessage paramDcerpcMessage)
  {
    int k = 24;
    if (state == 0) {
      bind();
    }
    boolean bool = true;
    Object localObject2 = BufferCache.getBuffer();
    Object localObject1 = localObject2;
    for (;;)
    {
      Object localObject3;
      NdrBuffer localNdrBuffer;
      try
      {
        localObject3 = new NdrBuffer((byte[])localObject2, 0);
        localObject1 = localObject2;
        flags = 3;
        localObject1 = localObject2;
        i = call_id;
        localObject1 = localObject2;
        call_id = i + 1;
        localObject1 = localObject2;
        call_id = i;
        localObject1 = localObject2;
        paramDcerpcMessage.encode((NdrBuffer)localObject3);
        localObject1 = localObject2;
        if (securityProvider != null)
        {
          localObject1 = localObject2;
          ((NdrBuffer)localObject3).setIndex(0);
          localObject1 = localObject2;
          securityProvider.wrap((NdrBuffer)localObject3);
        }
        localObject1 = localObject2;
        int m = ((NdrBuffer)localObject3).getLength() - 24;
        i = 0;
        if (i < m)
        {
          j = m - i;
          localObject1 = localObject2;
          if (j + 24 > max_xmit)
          {
            localObject1 = localObject2;
            flags &= 0xFFFFFFFD;
            localObject1 = localObject2;
            j = max_xmit - 24;
            localObject1 = localObject2;
            length = (j + 24);
            if (i > 0)
            {
              localObject1 = localObject2;
              flags &= 0xFFFFFFFE;
            }
            localObject1 = localObject2;
            if ((flags & 0x3) != 3)
            {
              localObject1 = localObject2;
              start = i;
              localObject1 = localObject2;
              ((NdrBuffer)localObject3).reset();
              localObject1 = localObject2;
              paramDcerpcMessage.encode_header((NdrBuffer)localObject3);
              localObject1 = localObject2;
              ((NdrBuffer)localObject3).enc_ndr_long(alloc_hint);
              localObject1 = localObject2;
              ((NdrBuffer)localObject3).enc_ndr_short(0);
              localObject1 = localObject2;
              ((NdrBuffer)localObject3).enc_ndr_short(paramDcerpcMessage.getOpnum());
            }
            localObject1 = localObject2;
            doSendFragment((byte[])localObject2, i, length, bool);
            i = j + i;
            continue;
          }
          localObject1 = localObject2;
          flags |= 0x2;
          localObject1 = localObject2;
          alloc_hint = j;
          bool = false;
          continue;
        }
        localObject1 = localObject2;
        doReceiveFragment((byte[])localObject2, bool);
        localObject1 = localObject2;
        ((NdrBuffer)localObject3).reset();
        localObject1 = localObject2;
        ((NdrBuffer)localObject3).setIndex(8);
        localObject1 = localObject2;
        ((NdrBuffer)localObject3).setLength(((NdrBuffer)localObject3).dec_ndr_short());
        localObject1 = localObject2;
        if (securityProvider != null)
        {
          localObject1 = localObject2;
          securityProvider.unwrap((NdrBuffer)localObject3);
        }
        localObject1 = localObject2;
        ((NdrBuffer)localObject3).setIndex(0);
        localObject1 = localObject2;
        paramDcerpcMessage.decode_header((NdrBuffer)localObject3);
        localObject1 = localObject2;
        i = k;
        if (ptype != 2) {
          break label754;
        }
        localObject1 = localObject2;
        i = k;
        if (paramDcerpcMessage.isFlagSet(2)) {
          break label754;
        }
        localObject1 = localObject2;
        i = length;
      }
      finally
      {
        int i;
        int j;
        Object localObject4;
        BufferCache.releaseBuffer((byte[])localObject1);
      }
      localObject1 = localObject2;
      if (!paramDcerpcMessage.isFlagSet(2))
      {
        localObject4 = localObject3;
        if (localObject3 == null)
        {
          localObject1 = localObject2;
          localObject4 = new byte[max_recv];
          localObject1 = localObject2;
          localNdrBuffer = new NdrBuffer((byte[])localObject4, 0);
        }
        localObject1 = localObject2;
        doReceiveFragment((byte[])localObject4, bool);
        localObject1 = localObject2;
        localNdrBuffer.reset();
        localObject1 = localObject2;
        localNdrBuffer.setIndex(8);
        localObject1 = localObject2;
        localNdrBuffer.setLength(localNdrBuffer.dec_ndr_short());
        localObject1 = localObject2;
        if (securityProvider != null)
        {
          localObject1 = localObject2;
          securityProvider.unwrap(localNdrBuffer);
        }
        localObject1 = localObject2;
        localNdrBuffer.reset();
        localObject1 = localObject2;
        paramDcerpcMessage.decode_header(localNdrBuffer);
        localObject1 = localObject2;
        j = length - 24;
        localObject3 = localObject2;
        localObject1 = localObject2;
        if (i + j > localObject2.length)
        {
          localObject1 = localObject2;
          localObject3 = new byte[i + j];
          localObject1 = localObject2;
          System.arraycopy(localObject2, 0, localObject3, 0, i);
        }
        localObject1 = localObject3;
        System.arraycopy(localObject4, 24, localObject3, i, j);
        i += j;
        localObject2 = localObject3;
        localObject3 = localObject4;
      }
      else
      {
        localObject1 = localObject2;
        paramDcerpcMessage.decode(new NdrBuffer((byte[])localObject2, 0));
        BufferCache.releaseBuffer((byte[])localObject2);
        paramDcerpcMessage = paramDcerpcMessage.getResult();
        if (paramDcerpcMessage != null) {
          throw paramDcerpcMessage;
        }
        return;
        label754:
        localObject3 = null;
        localNdrBuffer = null;
      }
    }
  }
  
  public void setDcerpcSecurityProvider(DcerpcSecurityProvider paramDcerpcSecurityProvider)
  {
    securityProvider = paramDcerpcSecurityProvider;
  }
  
  public String toString()
  {
    return binding.toString();
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.DcerpcHandle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */