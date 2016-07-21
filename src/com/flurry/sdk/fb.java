package com.flurry.sdk;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class fb
  extends kl
{
  private static final String a = fb.class.getSimpleName();
  
  private String a(a parama, String paramString1, String paramString2)
  {
    Object localObject1 = parama.c().b();
    Object localObject2 = parama.c().f();
    parama = parama.c().c().a();
    if (a("fids", paramString2))
    {
      parama = new StringBuilder();
      localObject1 = jf.a().h().entrySet().iterator();
      int i = 1;
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        if (i == 0) {
          parama.append(",");
        }
        parama.append(getKeyd).append(":");
        if (getKeye) {
          parama.append(new String((byte[])((Map.Entry)localObject2).getValue()));
        }
        for (;;)
        {
          i = 0;
          break;
          parama.append(lt.a((byte[])((Map.Entry)localObject2).getValue()));
        }
      }
      kg.a(3, a, "Replacing param fids with: " + parama.toString());
      parama = paramString1.replace(paramString2, lt.c(parama.toString()));
    }
    do
    {
      do
      {
        return parama;
        if (a("sid", paramString2))
        {
          parama = String.valueOf(je.a().d());
          kg.a(3, a, "Replacing param sid with: " + parama);
          return paramString1.replace(paramString2, lt.c(parama));
        }
        if (a("lid", paramString2))
        {
          parama = String.valueOf(((ay)localObject2).a());
          kg.a(3, a, "Replacing param lid with: " + parama);
          return paramString1.replace(paramString2, lt.c(parama));
        }
        if (a("guid", paramString2))
        {
          parama = ((ay)localObject2).b();
          kg.a(3, a, "Replacing param guid with: " + parama);
          return paramString1.replace(paramString2, lt.c(parama));
        }
        if (a("ats", paramString2))
        {
          parama = String.valueOf(System.currentTimeMillis());
          kg.a(3, a, "Replacing param ats with: " + parama);
          return paramString1.replace(paramString2, lt.c(parama));
        }
        if (a("apik", paramString2))
        {
          parama = js.a().d();
          kg.a(3, a, "Replacing param apik with: " + parama);
          return paramString1.replace(paramString2, lt.c(parama));
        }
        if (a("hid", paramString2))
        {
          parama = b;
          kg.a(3, a, "Replacing param hid with: " + parama);
          return paramString1.replace(paramString2, lt.c(parama));
        }
        if (a("eso", paramString2))
        {
          parama = Long.toString(System.currentTimeMillis() - je.a().d());
          kg.a(3, a, "Replacing param eso with: " + parama);
          return paramString1.replace(paramString2, lt.c(parama));
        }
        if (!a("uc", paramString2)) {
          break;
        }
        parama = ((s)localObject1).m();
        if (parama != null)
        {
          localObject2 = parama.getUserCookies().entrySet().iterator();
          for (parama = "";; parama = parama + "c_" + lt.c((String)((Map.Entry)localObject1).getKey()) + "=" + lt.c((String)((Map.Entry)localObject1).getValue()) + "&")
          {
            localObject1 = parama;
            if (!((Iterator)localObject2).hasNext()) {
              break;
            }
            localObject1 = (Map.Entry)((Iterator)localObject2).next();
          }
        }
        localObject1 = "";
        kg.a(3, a, "Replacing param uc with: " + (String)localObject1);
        paramString1 = paramString1.replace(paramString2, (CharSequence)localObject1);
        parama = paramString1;
      } while (!((String)localObject1).equals(""));
      parama = paramString1;
    } while (paramString1.length() <= 0);
    return paramString1.substring(0, paramString1.length() - 1);
    kg.a(3, a, "Unknown param: " + paramString2);
    return paramString1.replace(paramString2, "");
  }
  
  public String a(a parama, String paramString)
  {
    String str2 = a(paramString);
    String str1 = paramString;
    for (paramString = str2; paramString != null; paramString = a(str1)) {
      str1 = a(parama, str1, paramString);
    }
    return str1;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */