package com.estrongs.android.ui.d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.impl.adb.c;
import java.util.ArrayList;

public class h
{
  public static final h a = new h("Null Window Info");
  private Bitmap b;
  private String c;
  private ArrayList<String> d;
  private boolean e = false;
  
  public h(String paramString)
  {
    a(paramString);
  }
  
  public String a()
  {
    return c;
  }
  
  public String a(Context paramContext)
  {
    return a(paramContext, c);
  }
  
  public String a(Context paramContext, String paramString)
  {
    Object localObject1 = ap.d(paramString);
    if (ap.aJ(paramString)) {
      localObject1 = ap.d(ap.cc(paramString));
    }
    label47:
    Object localObject2;
    if (paramString == null)
    {
      localObject1 = paramContext.getString(2131230867);
      if (!"#home_page#".equals(paramString)) {
        break label128;
      }
      localObject1 = paramContext.getString(2131231657);
      if ("pcsres://".equals(paramString)) {
        localObject1 = paramContext.getString(2131231597);
      }
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        if (!"smb://".equals(paramString)) {
          break label693;
        }
        localObject2 = paramContext.getString(2131231658);
      }
    }
    label128:
    label693:
    label897:
    label904:
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
              localObject1 = paramContext.getString(2131231650);
              break;
            }
            if (!paramString.startsWith("search:")) {
              break;
            }
            localObject1 = paramContext.getString(2131232593);
            break;
            if (ap.aY(paramString))
            {
              localObject1 = paramContext.getString(2131231659);
              break label47;
            }
            if (ap.aQ(paramString))
            {
              localObject2 = localObject1;
              if (ap.aP(paramString)) {
                localObject2 = paramContext.getString(2131231601);
              }
              localObject1 = localObject2;
              if (c.equals(paramString)) {
                break label47;
              }
              localObject1 = localObject2;
              if (ap.aT(paramString)) {
                break label47;
              }
              if (ap.az(paramString))
              {
                localObject1 = paramContext.getString(2131231506);
                break label47;
              }
              if (ap.aA(paramString))
              {
                localObject1 = paramContext.getString(2131231619);
                break label47;
              }
              localObject1 = localObject2;
              if (!ap.aB(paramString)) {
                break label47;
              }
              localObject1 = paramContext.getString(2131231462);
              break label47;
            }
            if (ap.ai(paramString))
            {
              if ((ap.ak(paramString)) || (ap.aj(paramString)))
              {
                localObject1 = paramContext.getString(2131231015);
                break label47;
              }
              if (ap.al(paramString))
              {
                localObject1 = paramContext.getString(2131231013);
                break label47;
              }
              if (ap.am(paramString))
              {
                localObject1 = paramContext.getString(2131231011);
                break label47;
              }
              if (ap.an(paramString))
              {
                localObject1 = paramContext.getString(2131231012);
                break label47;
              }
              if (ap.ao(paramString))
              {
                localObject1 = paramContext.getString(2131231014);
                break label47;
              }
              if (!ap.ap(paramString)) {
                break label47;
              }
              localObject1 = paramContext.getString(2131231005);
              break label47;
            }
            if (ap.bv(paramString))
            {
              localObject1 = paramContext.getString(2131231188);
              break label47;
            }
            if (ap.bw(paramString))
            {
              localObject1 = paramContext.getString(2131231676);
              break label47;
            }
            if (ap.ag(paramString))
            {
              localObject1 = paramContext.getString(2131231010);
              break label47;
            }
            if ((c != null) && (c.startsWith("download://")))
            {
              localObject1 = paramContext.getString(2131230994);
              break label47;
            }
            if (ap.ba(paramString))
            {
              if (ap.bd(c))
              {
                localObject1 = ap.d(ap.bb(c));
                break label47;
              }
              localObject1 = ap.d(ap.bf(c));
              break label47;
            }
            if ((c != null) && (c.startsWith("du://")))
            {
              localObject2 = ap.d(c);
              localObject1 = localObject2;
              if (!bk.a((CharSequence)localObject2)) {
                break label47;
              }
              localObject1 = paramContext.getString(2131231365);
              break label47;
            }
            if (ap.cj(c))
            {
              localObject1 = paramContext.getString(2131231789);
              break label47;
            }
            if (ap.O(paramString)) {
              switch (c.f(paramString))
              {
              default: 
                break;
              case 0: 
                localObject1 = paramContext.getString(2131231015);
                break;
              case 1: 
                localObject1 = paramContext.getString(2131231013);
                break;
              case 2: 
                localObject1 = paramContext.getString(2131231011);
                break;
              case 3: 
                localObject1 = paramContext.getString(2131231012);
                break;
              case 4: 
                localObject1 = paramContext.getString(2131231010);
                break;
              }
            }
            if (ap.bt(paramString))
            {
              localObject1 = paramContext.getString(2131230996);
              break label47;
            }
            if (!"finder://".equals(paramString)) {
              break label47;
            }
            localObject1 = paramContext.getString(2131231495);
            break label47;
            if ("ftp://".equals(paramString)) {
              return paramContext.getString(2131231652);
            }
            if ("bt://".equals(paramString)) {
              return paramContext.getString(2131231649);
            }
            if ("net://".equals(paramString)) {
              return paramContext.getString(2131231648);
            }
            if ("music://".equals(paramString)) {
              return paramContext.getString(2131231136);
            }
            if ("pic://".equals(paramString)) {
              return paramContext.getString(2131231659);
            }
            if ("video://".equals(paramString)) {
              return paramContext.getString(2131231135);
            }
            if ("book://".equals(paramString)) {
              return paramContext.getString(2131231130);
            }
            if ("encrypt://".equals(paramString)) {
              return paramContext.getString(2131231130);
            }
            localObject2 = localObject1;
          } while ("New".equals(paramString));
          if ("remote://".equals(paramString)) {
            return paramContext.getString(2131231470);
          }
          if (!paramString.startsWith("pcs://")) {
            break label904;
          }
          if ("pcs://".endsWith(paramString)) {
            return paramContext.getString(2131231137);
          }
          paramString = ap.a(paramString, 23);
          if (paramString == null) {
            break label897;
          }
          localObject2 = localObject1;
        } while (!paramString.equals("/"));
        return paramContext.getString(2131231137);
        if ("recycle://".equals(paramString)) {
          return paramContext.getString(2131232258);
        }
        if (paramString.startsWith("flashair://")) {
          return paramContext.getString(2131231505);
        }
        if ("adb://".equals(paramString)) {
          return paramContext.getString(2131231646);
        }
        paramContext = ad.a(paramContext).h(paramString);
        if (paramContext != null) {
          return paramContext;
        }
        if (ap.bg(paramString)) {
          return ap.a(false, paramString);
        }
        localObject2 = localObject1;
      } while (!ap.bm(paramString));
      localObject2 = localObject1;
    } while (localObject1 != null);
    return ap.a(paramString);
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
  
  public Bitmap b()
  {
    return b;
  }
  
  public String b(Context paramContext)
  {
    int i = c();
    if (i == 11) {
      return paramContext.getString(2131231129);
    }
    if (i == 15) {
      return paramContext.getString(2131231264);
    }
    if (i == 4) {
      return paramContext.getString(2131231649);
    }
    if (i == 10) {
      return paramContext.getString(2131230994);
    }
    if (i == 13) {
      return paramContext.getString(2131231365);
    }
    if (i == 3) {
      return paramContext.getString(2131231652);
    }
    if (i == 2) {
      return paramContext.getString(2131231658);
    }
    if (i == 8) {
      return paramContext.getString(2131231135);
    }
    if (i == 7) {
      return paramContext.getString(2131231136);
    }
    if (i == 5) {
      return paramContext.getString(2131231648);
    }
    if (i == 12) {
      return paramContext.getString(2131231137);
    }
    if (i == 6) {
      return paramContext.getString(2131231138);
    }
    if (i == 14) {
      return paramContext.getString(2131231470);
    }
    if (i == 23) {
      return paramContext.getString(2131232250);
    }
    if (i == 22) {
      return paramContext.getString(2131231608);
    }
    if (i == 26) {
      return paramContext.getString(2131231597);
    }
    if (i == 27) {
      return paramContext.getString(2131231789);
    }
    if (i == 30) {
      return paramContext.getString(2131230995);
    }
    if (i == 31) {
      return paramContext.getString(2131231188);
    }
    if (i == 34) {
      return paramContext.getString(2131231676);
    }
    if (i == 35) {
      return paramContext.getString(2131231495);
    }
    if (i == 32) {
      return paramContext.getString(2131231264);
    }
    if (i == 33) {
      return paramContext.getString(2131231420);
    }
    return a(paramContext);
  }
  
  public int c()
  {
    String str2 = c;
    String str1 = str2;
    if (ap.bh(str2)) {
      str1 = ap.bj(str2);
    }
    if (str1.equals("New")) {
      return -1;
    }
    if (str1.equals("#home_page#")) {
      return 25;
    }
    if (ap.J(str1)) {
      return 2;
    }
    if (ap.cj(str1)) {
      return 27;
    }
    if ((ap.L(str1)) || (ap.K(str1)) || (ap.r(str1)) || (ap.o(str1))) {
      return 3;
    }
    if (ap.aG(str1)) {
      return 5;
    }
    if (ap.bg(str1)) {
      return 4;
    }
    if (ap.V(str1)) {
      return 7;
    }
    if (ap.Z(str1)) {
      return 8;
    }
    if ((ap.X(str1)) || (ap.aY(str1)) || (ap.aQ(str1))) {
      return 6;
    }
    if (ap.ae(str1)) {
      return 9;
    }
    if (ap.ab(str1)) {
      return 32;
    }
    if (ap.ad(str1)) {
      return 33;
    }
    if ((ap.ag(str1)) || (ap.ai(str1))) {
      return 11;
    }
    if (ap.aL(str1)) {
      return 12;
    }
    if ((str1 != null) && (str1.equals("download://"))) {
      return 10;
    }
    if (ap.ba(str1)) {
      return 15;
    }
    if (ap.u(str1)) {
      return 13;
    }
    if (str1.contains("m.baidu.com/app")) {
      return 23;
    }
    if (ap.v(str1)) {
      return 22;
    }
    if ("remote://".equals(str1)) {
      return 14;
    }
    if (ap.cg(str1)) {
      return 24;
    }
    if (ap.ci(str1)) {
      return 26;
    }
    if (ap.w(str1)) {
      return 28;
    }
    if (ap.M(str1)) {
      return 29;
    }
    if (ap.bl(str1)) {
      return 0;
    }
    if (ap.bu(str1)) {
      return 30;
    }
    if (ap.bv(str1)) {
      return 31;
    }
    if (ap.bw(str1)) {
      return 34;
    }
    if (ap.bx(str1)) {
      return 35;
    }
    return -11;
  }
  
  public Drawable c(Context paramContext)
  {
    int j = 2130838029;
    int i = 2130838017;
    switch (c())
    {
    case 16: 
    case 17: 
    case 18: 
    case 19: 
    default: 
      i = 2130838029;
    case 2: 
    case 3: 
    case 4: 
    case 12: 
    case 14: 
    case 26: 
    case 27: 
    case 28: 
    case 29: 
      if (i == 0) {
        i = j;
      }
      break;
    }
    for (;;)
    {
      return at.a(paramContext).b(i, 2131558745);
      i = 2130838016;
      break;
      i = 2130838014;
      break;
      i = 2130838018;
      break;
      i = 2130838019;
      break;
      i = 2130838030;
      break;
      i = 2130838025;
      break;
      i = 2130838023;
      break;
      i = 2130838026;
      break;
      i = 2130838029;
      break;
      i = 2130838025;
      break;
      i = 2130838025;
      break;
      i = 2130838021;
      break;
      i = 2130838027;
      break;
      i = 2130838022;
      break;
      i = 2130838031;
      break;
      i = 2130838021;
      break;
      i = 2130838015;
      break;
      i = 2130838024;
      break;
      i = 2130838020;
      break;
      i = 2130838028;
      break;
      i = 2130838026;
      break;
    }
  }
  
  public String d(Context paramContext)
  {
    int i = 2131231264;
    switch (c())
    {
    case 0: 
    case 1: 
    case 16: 
    case 17: 
    case 18: 
    case 19: 
    default: 
      i = 2131231659;
    }
    while (i != -1)
    {
      return paramContext.getResources().getString(i);
      i = 2131230867;
      continue;
      i = 2131231649;
      continue;
      i = 2131231652;
      continue;
      i = 2131231658;
      continue;
      i = 2131231648;
      continue;
      i = 2131231129;
      continue;
      i = 2131231130;
      continue;
      i = 2131230994;
      continue;
      i = 2131231135;
      continue;
      i = 2131231136;
      continue;
      i = 2131231138;
      continue;
      i = 2131231137;
      continue;
      i = 2131231365;
      continue;
      i = 2131231470;
      continue;
      i = 2131231606;
      continue;
      i = 2131231607;
      continue;
      i = 2131231608;
      continue;
      i = 2131232250;
      continue;
      i = 2131232258;
      continue;
      i = 2131231657;
      continue;
      i = 2131231597;
      continue;
      i = 2131231789;
      continue;
      i = 2131231505;
      continue;
      i = 2131231646;
      continue;
      i = 2131230995;
      continue;
      i = 2131231188;
      continue;
      i = 2131231676;
      continue;
      i = 2131231420;
      continue;
      i = 2131231495;
    }
    return "";
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
 * Qualified Name:     com.estrongs.android.ui.d.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */