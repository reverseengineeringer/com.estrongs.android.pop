package com.flurry.sdk;

import android.content.Context;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class kt
{
  protected final String a;
  Set<String> b = new HashSet();
  kv c;
  protected String d = "defaultDataKey_";
  private kb<jk> e = new kt.1(this);
  
  public kt(String paramString1, String paramString2)
  {
    a = paramString2;
    kc.a().a("com.flurry.android.sdk.NetworkStateEvent", e);
    a(paramString1);
  }
  
  public String a(String paramString1, String paramString2)
  {
    return d + paramString1 + "_" + paramString2;
  }
  
  protected void a(kt.a parama)
  {
    a(new kt.4(this, parama));
  }
  
  protected void a(ly paramly)
  {
    js.a().b(paramly);
  }
  
  protected void a(String paramString)
  {
    a(new kt.2(this, paramString));
  }
  
  protected void a(String paramString1, String paramString2, int paramInt)
  {
    a(new kt.7(this, paramString1, paramString2));
  }
  
  protected abstract void a(byte[] paramArrayOfByte, String paramString1, String paramString2);
  
  public void a(byte[] paramArrayOfByte, String paramString1, String paramString2, kt.a parama)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
    {
      kg.a(6, a, "Report that has to be sent is EMPTY or NULL");
      return;
    }
    c(paramArrayOfByte, paramString1, paramString2);
    a(parama);
  }
  
  protected void b(String paramString1, String paramString2)
  {
    a(new kt.8(this, paramString1));
  }
  
  public void b(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    a(paramArrayOfByte, paramString1, paramString2, null);
  }
  
  protected void c(String paramString1, String paramString2)
  {
    if (!c.a(paramString1, paramString2)) {
      kg.a(6, a, "Internal error. Block wasn't deleted with id = " + paramString1);
    }
    if (!b.remove(paramString1)) {
      kg.a(6, a, "Internal error. Block with id = " + paramString1 + " was not in progress state");
    }
  }
  
  protected void c(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    a(new kt.3(this, paramArrayOfByte, paramString1, paramString2));
  }
  
  public int d()
  {
    return b.size();
  }
  
  protected void d(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    paramString1 = a(paramString1, paramString2);
    paramArrayOfByte = new ku(paramArrayOfByte);
    paramString2 = paramArrayOfByte.a();
    new jz(js.a().c().getFileStreamPath(ku.a(paramString2)), ".yflurrydatasenderblock.", 1, new kt.5(this)).a(paramArrayOfByte);
    kg.a(5, a, "Saving Block File " + paramString2 + " at " + js.a().c().getFileStreamPath(ku.a(paramString2)));
    c.a(paramArrayOfByte, paramString1);
  }
  
  protected void e()
  {
    a(null);
  }
  
  protected boolean f()
  {
    return d() <= 5;
  }
  
  protected void g()
  {
    if (!jl.a().c())
    {
      kg.a(5, a, "Reports were not sent! No Internet connection!");
      return;
    }
    label59:
    String str1;
    do
    {
      Object localObject1;
      do
      {
        localObject1 = c.a();
        if ((localObject1 == null) || (((List)localObject1).isEmpty()))
        {
          kg.a(4, a, "No more reports to send.");
          return;
        }
        localObject1 = ((List)localObject1).iterator();
      } while (!((Iterator)localObject1).hasNext());
      str1 = (String)((Iterator)localObject1).next();
    } while (!f());
    List localList = c.c(str1);
    kg.a(4, a, "Number of not sent blocks = " + localList.size());
    int i = 0;
    label130:
    String str2;
    if (i < localList.size())
    {
      str2 = (String)localList.get(i);
      if (!b.contains(str2)) {
        break label175;
      }
    }
    for (;;)
    {
      i += 1;
      break label130;
      break label59;
      label175:
      if (!f()) {
        break;
      }
      Object localObject2 = (ku)new jz(js.a().c().getFileStreamPath(ku.a(str2)), ".yflurrydatasenderblock.", 1, new kt.6(this)).a();
      if (localObject2 == null)
      {
        kg.a(6, a, "Internal ERROR! Cannot read!");
        c.a(str2, str1);
      }
      else
      {
        localObject2 = ((ku)localObject2).b();
        if ((localObject2 == null) || (localObject2.length == 0))
        {
          kg.a(6, a, "Internal ERROR! Report is empty!");
          c.a(str2, str1);
        }
        else
        {
          kg.a(5, a, "Reading block info " + str2);
          b.add(str2);
          a((byte[])localObject2, str2, str1);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.kt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */