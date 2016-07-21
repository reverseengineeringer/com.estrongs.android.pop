package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class dj$c
  implements lb<dj>
{
  public dj a(InputStream paramInputStream)
  {
    kg.a(5, dj.e(), "AdsAsyncReportInfoSerializerV3 deserialize");
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new dj.c.2(this, paramInputStream);
    dj localdj = new dj(null);
    localdj.a(paramInputStream.readLong());
    localdj.b(paramInputStream.readBoolean());
    localdj.b(paramInputStream.readInt());
    localdj.b(paramInputStream.readUTF());
    localdj.c(paramInputStream.readUTF());
    dj.a(localdj, paramInputStream.readUTF());
    dj.b(localdj, paramInputStream.readUTF());
    dj.a(localdj, paramInputStream.readBoolean());
    dj.a(localdj, paramInputStream.readInt());
    return localdj;
  }
  
  public void a(OutputStream paramOutputStream, dj paramdj)
  {
    kg.a(5, dj.e(), "AdsAsyncReportInfoSerializerV3 serialize");
    if ((paramOutputStream == null) || (paramdj == null)) {
      return;
    }
    paramOutputStream = new dj.c.1(this, paramOutputStream);
    paramOutputStream.writeLong(paramdj.p());
    paramOutputStream.writeBoolean(paramdj.q());
    paramOutputStream.writeInt(paramdj.r());
    paramOutputStream.writeUTF(paramdj.s());
    paramOutputStream.writeUTF(paramdj.t());
    paramOutputStream.writeUTF(dj.a(paramdj));
    paramOutputStream.writeUTF(dj.b(paramdj));
    paramOutputStream.writeBoolean(dj.c(paramdj));
    paramOutputStream.writeInt(dj.d(paramdj));
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dj.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */