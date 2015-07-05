package com.estrongs.android.ui.d;

import android.content.Context;
import android.graphics.Bitmap;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.impl.adb.c;
import java.util.ArrayList;

public class d
{
  public static final d b = new d("Null Window Info");
  private Bitmap a;
  private String c;
  private ArrayList<String> d;
  private boolean e = false;
  
  public d(String paramString)
  {
    a(paramString);
  }
  
  public int a()
  {
    if (am.aW(c)) {
      c = am.aY(c);
    }
    if (c.equals("New")) {
      return -1;
    }
    if (c.equals("#home_page#")) {
      return 25;
    }
    if (am.H(c)) {
      return 2;
    }
    if (am.bR(c)) {
      return 27;
    }
    if ((am.J(c)) || (am.I(c)) || (am.p(c)) || (am.m(c))) {
      return 3;
    }
    if (am.aw(c)) {
      return 5;
    }
    if (am.aV(c)) {
      return 4;
    }
    if (am.S(c)) {
      return 7;
    }
    if (am.U(c)) {
      return 8;
    }
    if ((am.T(c)) || (am.aO(c)) || (am.aG(c))) {
      return 6;
    }
    if (am.V(c)) {
      return 9;
    }
    if ((am.W(c)) || (am.Y(c))) {
      return 11;
    }
    if (am.aB(c)) {
      return 12;
    }
    if ((c != null) && (c.equals("download://"))) {
      return 10;
    }
    if (am.aQ(c)) {
      return 15;
    }
    if (am.s(c)) {
      return 13;
    }
    if (c.contains("m.baidu.com/app")) {
      return 23;
    }
    if (am.t(c)) {
      return 22;
    }
    if ("remote://".equals(c)) {
      return 14;
    }
    if (am.bP(c)) {
      return 24;
    }
    if (am.bQ(c)) {
      return 26;
    }
    if (am.u(c)) {
      return 28;
    }
    if (am.K(c)) {
      return 29;
    }
    return 0;
  }
  
  public String a(Context paramContext)
  {
    return a(paramContext, c);
  }
  
  public String a(Context paramContext, String paramString)
  {
    Object localObject2 = am.d(paramString);
    if (am.az(paramString)) {
      localObject2 = am.d(am.bL(paramString));
    }
    Object localObject1;
    if (paramString == null)
    {
      localObject2 = paramContext.getString(2131427361);
      if (!"#home_page#".equals(paramString)) {
        break label133;
      }
      localObject1 = paramContext.getString(2131428432);
      label50:
      if ("pcsres://".equals(paramString)) {
        localObject1 = paramContext.getString(2131428700);
      }
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        if (!"smb://".equals(paramString)) {
          break label632;
        }
        localObject2 = paramContext.getString(2131427410);
      }
    }
    label133:
    label632:
    label831:
    label839:
    do
    {
      do
      {
        do
        {
          do
          {
            return (String)localObject2;
            if ("/".equals(paramString))
            {
              localObject2 = paramContext.getString(2131428245);
              break;
            }
            if (!paramString.startsWith("search:")) {
              break;
            }
            localObject2 = paramContext.getString(2131428197);
            break;
            if (am.aO(paramString))
            {
              localObject1 = paramContext.getString(2131427414);
              break label50;
            }
            if (am.aG(paramString))
            {
              if (am.aF(paramString)) {
                localObject2 = paramContext.getString(2131428052);
              }
              localObject1 = localObject2;
              if (c.equals(paramString)) {
                break label50;
              }
              localObject1 = localObject2;
              if (am.aJ(paramString)) {
                break label50;
              }
              if (am.ap(paramString))
              {
                localObject1 = paramContext.getString(2131427497);
                break label50;
              }
              if (am.aq(paramString))
              {
                localObject1 = paramContext.getString(2131427498);
                break label50;
              }
              localObject1 = localObject2;
              if (!am.ar(paramString)) {
                break label50;
              }
              localObject1 = paramContext.getString(2131427499);
              break label50;
            }
            if (am.Y(paramString))
            {
              if ((am.aa(paramString)) || (am.Z(paramString)))
              {
                localObject1 = paramContext.getString(2131427684);
                break label50;
              }
              if (am.ab(paramString))
              {
                localObject1 = paramContext.getString(2131427683);
                break label50;
              }
              if (am.ac(paramString))
              {
                localObject1 = paramContext.getString(2131428206);
                break label50;
              }
              if (am.ad(paramString))
              {
                localObject1 = paramContext.getString(2131428207);
                break label50;
              }
              if (am.ae(paramString))
              {
                localObject1 = paramContext.getString(2131428660);
                break label50;
              }
              localObject1 = localObject2;
              if (!am.af(paramString)) {
                break label50;
              }
              localObject1 = paramContext.getString(2131427688);
              break label50;
            }
            if (am.W(paramString))
            {
              localObject1 = paramContext.getString(2131428208);
              break label50;
            }
            if ((c != null) && (c.startsWith("download://")))
            {
              localObject1 = paramContext.getString(2131428223);
              break label50;
            }
            if (am.aQ(paramString))
            {
              if (am.aS(c))
              {
                localObject1 = am.d(am.aR(c));
                break label50;
              }
              localObject1 = am.d(am.aU(c));
              break label50;
            }
            if ((c != null) && (c.startsWith("du://")))
            {
              localObject2 = am.d(c);
              localObject1 = localObject2;
              if (!bd.a((CharSequence)localObject2)) {
                break label50;
              }
              localObject1 = paramContext.getString(2131427638);
              break label50;
            }
            if (am.bR(c))
            {
              localObject1 = paramContext.getString(2131428505);
              break label50;
            }
            localObject1 = localObject2;
            if (!am.M(paramString)) {
              break label50;
            }
            switch (c.f(paramString))
            {
            default: 
              localObject1 = localObject2;
              break;
            case 0: 
              localObject1 = paramContext.getString(2131427684);
              break;
            case 1: 
              localObject1 = paramContext.getString(2131427683);
              break;
            case 2: 
              localObject1 = paramContext.getString(2131428206);
              break;
            case 3: 
              localObject1 = paramContext.getString(2131428207);
              break;
            case 4: 
              localObject1 = paramContext.getString(2131428208);
              break;
              if ("ftp://".equals(paramString)) {
                return paramContext.getString(2131427411);
              }
              if ("bt://".equals(paramString)) {
                return paramContext.getString(2131427413);
              }
              if ("net://".equals(paramString)) {
                return paramContext.getString(2131427412);
              }
              if ("music://".equals(paramString)) {
                return paramContext.getString(2131427422);
              }
              if ("pic://".equals(paramString)) {
                return paramContext.getString(2131427414);
              }
              if ("video://".equals(paramString)) {
                return paramContext.getString(2131427425);
              }
              if ("book://".equals(paramString)) {
                return paramContext.getString(2131427424);
              }
              localObject2 = localObject1;
            }
          } while ("New".equals(paramString));
          if ("remote://".equals(paramString)) {
            return paramContext.getString(2131428114);
          }
          if (!paramString.startsWith("pcs://")) {
            break label839;
          }
          if ("pcs://".endsWith(paramString)) {
            return paramContext.getString(2131428551);
          }
          paramString = am.a(paramString, 23);
          if (paramString == null) {
            break label831;
          }
          localObject2 = localObject1;
        } while (!paramString.equals("/"));
        return paramContext.getString(2131428551);
        if ("recycle://".equals(paramString)) {
          return paramContext.getString(2131428402);
        }
        if (paramString.startsWith("flashair://")) {
          return paramContext.getString(2131428716);
        }
        if ("adb://".equals(paramString)) {
          return paramContext.getString(2131428722);
        }
        paramContext = ad.a(paramContext).h(paramString);
        if (paramContext != null) {
          return paramContext;
        }
        if (am.aV(paramString)) {
          return am.a(false, paramString);
        }
        localObject2 = localObject1;
      } while (!am.bb(paramString));
      localObject2 = localObject1;
    } while (localObject1 != null);
    return am.a(paramString);
  }
  
  public void a(String paramString)
  {
    c = paramString;
  }
  
  public void a(ArrayList<String> paramArrayList)
  {
    d = paramArrayList;
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public String b()
  {
    return c;
  }
  
  public String b(Context paramContext)
  {
    int i = a();
    if (i == 11) {
      return paramContext.getString(2131427423);
    }
    if (i == 15) {
      return paramContext.getString(2131427712);
    }
    if (i == 4) {
      return paramContext.getString(2131427413);
    }
    if (i == 10) {
      return paramContext.getString(2131428223);
    }
    if (i == 13) {
      return paramContext.getString(2131427638);
    }
    if (i == 3) {
      return paramContext.getString(2131427411);
    }
    if (i == 2) {
      return paramContext.getString(2131427410);
    }
    if (i == 8) {
      return paramContext.getString(2131427425);
    }
    if (i == 7) {
      return paramContext.getString(2131427422);
    }
    if (i == 5) {
      return paramContext.getString(2131427412);
    }
    if (i == 12) {
      return paramContext.getString(2131428551);
    }
    if (i == 6) {
      return paramContext.getString(2131427421);
    }
    if (i == 14) {
      return paramContext.getString(2131428114);
    }
    if (i == 23) {
      return paramContext.getString(2131427606);
    }
    if (i == 22) {
      return paramContext.getString(2131428368);
    }
    if (i == 26) {
      return paramContext.getString(2131428700);
    }
    if (i == 27) {
      return paramContext.getString(2131428505);
    }
    return a(paramContext);
  }
  
  public Bitmap c()
  {
    return a;
  }
  
  public ArrayList<String> d()
  {
    return d;
  }
  
  public boolean e()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.d.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */