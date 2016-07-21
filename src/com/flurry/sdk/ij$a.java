package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ij$a
  implements lb<ij>
{
  la<ik> a = new la(new ik.a());
  
  public ij a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    ij.a.2 local2 = new ij.a.2(this, paramInputStream);
    Object localObject2 = local2.readUTF();
    Object localObject1 = localObject2;
    if (((String)localObject2).equals("")) {
      localObject1 = null;
    }
    String str2 = local2.readUTF();
    long l1 = local2.readLong();
    int j = local2.readInt();
    long l2 = local2.readLong();
    int k = local2.readInt();
    int m = local2.readInt();
    iq localiq = iq.a(local2.readInt());
    localObject2 = null;
    int n = local2.readInt();
    if (n != 0)
    {
      localObject3 = new HashMap();
      i = 0;
      for (;;)
      {
        localObject2 = localObject3;
        if (i >= n) {
          break;
        }
        ((Map)localObject3).put(local2.readUTF(), local2.readUTF());
        i += 1;
      }
    }
    long l3 = local2.readLong();
    int i = local2.readInt();
    n = local2.readInt();
    String str1 = local2.readUTF();
    Object localObject3 = str1;
    if (str1.equals("")) {
      localObject3 = null;
    }
    boolean bool = local2.readBoolean();
    localObject1 = new ij((String)localObject1, l2, str2, l1, k, m, localiq, (Map)localObject2, i, n, (String)localObject3);
    ij.a((ij)localObject1, l3);
    ij.a((ij)localObject1, bool);
    ((ij)localObject1).b(j);
    a = ((ArrayList)a.a(paramInputStream));
    ((ij)localObject1).o();
    return (ij)localObject1;
  }
  
  public void a(OutputStream paramOutputStream, ij paramij)
  {
    if ((paramOutputStream == null) || (paramij == null)) {
      return;
    }
    ij.a.1 local1 = new ij.a.1(this, paramOutputStream);
    if (ij.a(paramij) != null)
    {
      local1.writeUTF(ij.a(paramij));
      if (paramij.t() == null) {
        break label196;
      }
      local1.writeUTF(paramij.t());
    }
    for (;;)
    {
      local1.writeLong(paramij.p());
      local1.writeInt(paramij.r());
      local1.writeLong(ij.b(paramij));
      local1.writeInt(ij.c(paramij));
      local1.writeInt(ij.d(paramij));
      local1.writeInt(ij.e(paramij).a());
      Map localMap = ij.f(paramij);
      if (localMap == null) {
        break label205;
      }
      local1.writeInt(ij.f(paramij).size());
      Iterator localIterator = ij.f(paramij).keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        local1.writeUTF(str);
        local1.writeUTF((String)localMap.get(str));
      }
      local1.writeUTF("");
      break;
      label196:
      local1.writeUTF("");
    }
    label205:
    local1.writeInt(0);
    local1.writeLong(ij.g(paramij));
    local1.writeInt(ij.h(paramij));
    local1.writeInt(ij.i(paramij));
    if (ij.j(paramij) != null) {
      local1.writeUTF(ij.j(paramij));
    }
    for (;;)
    {
      local1.writeBoolean(ij.k(paramij));
      local1.flush();
      a.a(paramOutputStream, a);
      return;
      local1.writeUTF("");
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ij.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */