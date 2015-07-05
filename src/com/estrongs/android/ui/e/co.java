package com.estrongs.android.ui.e;

import android.content.pm.ApplicationInfo;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.c;
import com.estrongs.fs.impl.pcs.b;
import com.estrongs.fs.m;
import java.util.Iterator;
import java.util.List;

public class co
{
  public boolean A = false;
  public boolean B = false;
  public boolean C = false;
  public boolean D = false;
  public boolean E = false;
  public int F = 0;
  public boolean G = true;
  public boolean H = true;
  public boolean I = true;
  public boolean J = true;
  public boolean K = true;
  public boolean L = true;
  public boolean M = true;
  public boolean N = true;
  public boolean O = false;
  public boolean P = false;
  public boolean Q = false;
  public boolean R = false;
  public boolean S = false;
  public boolean T = false;
  public boolean U = false;
  public boolean V = false;
  public boolean W = false;
  public boolean X = false;
  public boolean Y = false;
  public boolean Z = false;
  public String a;
  public List<h> b;
  public int c = 0;
  public boolean d = false;
  public boolean e = false;
  public boolean f = false;
  public boolean g = false;
  public boolean h = false;
  public boolean i = false;
  public boolean j = false;
  public boolean k = false;
  public boolean l = false;
  public boolean m = false;
  public boolean n = false;
  public boolean o = false;
  public boolean p = false;
  public boolean q = false;
  public boolean r = false;
  public boolean s = false;
  public boolean t = false;
  public boolean u = false;
  public boolean v = false;
  public boolean w = false;
  public boolean x = false;
  public boolean y = false;
  public boolean z = false;
  
  public co(String paramString, List<h> paramList)
  {
    a = paramString;
    b = paramList;
    a();
  }
  
  private void a()
  {
    C = am.aW(a);
    Object localObject1;
    Object localObject2;
    boolean bool;
    if (C)
    {
      localObject1 = am.bz(a);
      localObject2 = localObject1;
      if ("externalstorage://".equalsIgnoreCase((String)localObject1)) {
        localObject2 = "/sdcard";
      }
      c = am.G((String)localObject2);
      if (c != 0) {
        break label692;
      }
      bool = true;
      label60:
      e = bool;
      if (c != 3) {
        break label697;
      }
      bool = true;
      label75:
      g = bool;
      if (c != 23) {
        break label702;
      }
      bool = true;
      label91:
      h = bool;
      if (c != 12) {
        break label707;
      }
      bool = true;
      label107:
      i = bool;
      if (c != 14) {
        break label712;
      }
      bool = true;
      label123:
      j = bool;
      if (c != 16) {
        break label717;
      }
      bool = true;
      label139:
      k = bool;
      if (c != 24) {
        break label722;
      }
      bool = true;
      label155:
      l = bool;
      if (c != 17) {
        break label727;
      }
      bool = true;
      label171:
      m = bool;
      if (c != 26) {
        break label732;
      }
      bool = true;
      label187:
      n = bool;
      if (c != 28) {
        break label737;
      }
      bool = true;
      label203:
      o = bool;
      if (c != 25) {
        break label742;
      }
      bool = true;
      label219:
      p = bool;
      if (c != 18) {
        break label747;
      }
      bool = true;
      label235:
      q = bool;
      if ((!q) || (!am.as((String)localObject2))) {
        break label752;
      }
      bool = true;
      label257:
      r = bool;
      if ((!q) || (!am.aH((String)localObject2))) {
        break label757;
      }
      bool = true;
      label279:
      s = bool;
      if ((!q) || (!am.ar((String)localObject2))) {
        break label762;
      }
      bool = true;
      label301:
      t = bool;
      if ((!q) || (!am.aF((String)localObject2))) {
        break label767;
      }
      bool = true;
      label323:
      u = bool;
      if ((c != 31) && (!am.bP((String)localObject2)) && (!am.bW((String)localObject2))) {
        break label772;
      }
      bool = true;
      label355:
      v = bool;
      if (c != 27) {
        break label777;
      }
      bool = true;
      label371:
      w = bool;
      if ((!l) || (!am.af((String)localObject2))) {
        break label782;
      }
      bool = true;
      label393:
      A = bool;
      if ((!l) || (!am.ae((String)localObject2))) {
        break label787;
      }
      bool = true;
      label415:
      B = bool;
      if (c != 33) {
        break label792;
      }
      bool = true;
      label431:
      x = bool;
      y = am.bQ((String)localObject2);
      z = am.u(a);
      if ((g) || (h) || (x) || (q) || (!am.bb((String)localObject2))) {
        break label797;
      }
      bool = true;
      label494:
      f = bool;
      if (((!f) && (!g)) || (!am.bg((String)localObject2))) {
        break label802;
      }
      bool = true;
      label523:
      d = bool;
      D = am.M((String)localObject2);
      E = am.L((String)localObject2);
      if (b != null) {
        break label807;
      }
      F = 0;
      label558:
      localObject1 = b.a();
      if (b == null) {
        return;
      }
      localObject2 = b.iterator();
    }
    for (;;)
    {
      label580:
      if (!((Iterator)localObject2).hasNext()) {
        return;
      }
      h localh = (h)((Iterator)localObject2).next();
      if (localh.getFileType().a())
      {
        if (d)
        {
          Q = true;
          H = false;
        }
        for (;;)
        {
          G = false;
          I = false;
          J = false;
          K = false;
          L = false;
          M = false;
          N = false;
          if (!localh.equals(localObject1)) {
            break label580;
          }
          Z = true;
          break label580;
          localObject1 = a;
          break;
          label692:
          bool = false;
          break label60;
          label697:
          bool = false;
          break label75;
          label702:
          bool = false;
          break label91;
          label707:
          bool = false;
          break label107;
          label712:
          bool = false;
          break label123;
          label717:
          bool = false;
          break label139;
          label722:
          bool = false;
          break label155;
          label727:
          bool = false;
          break label171;
          label732:
          bool = false;
          break label187;
          label737:
          bool = false;
          break label203;
          label742:
          bool = false;
          break label219;
          label747:
          bool = false;
          break label235;
          label752:
          bool = false;
          break label257;
          label757:
          bool = false;
          break label279;
          label762:
          bool = false;
          break label301;
          label767:
          bool = false;
          break label323;
          label772:
          bool = false;
          break label355;
          label777:
          bool = false;
          break label371;
          label782:
          bool = false;
          break label393;
          label787:
          bool = false;
          break label415;
          label792:
          bool = false;
          break label431;
          label797:
          bool = false;
          break label494;
          label802:
          bool = false;
          break label523;
          label807:
          F = b.size();
          break label558;
          P = true;
        }
      }
      O = true;
      H = false;
      if ((!X) && ((localh instanceof c)))
      {
        ApplicationInfo localApplicationInfo = ((c)localh).c();
        if (((flags & 0x80) == 0) && ((flags & 0x1) != 0)) {
          X = true;
        }
      }
      int i1 = bc.a(localh);
      if (bc.C(i1))
      {
        R = true;
        J = false;
        K = false;
        L = false;
        M = false;
        N = false;
      }
      else if (bc.a(i1))
      {
        U = true;
        I = false;
        J = false;
        K = false;
        M = false;
        N = false;
      }
      else if (bc.e(i1))
      {
        T = true;
        I = false;
        J = false;
        M = false;
        L = false;
        N = false;
      }
      else if (bc.g(i1))
      {
        V = true;
        I = false;
        J = false;
        K = false;
        L = false;
        N = false;
      }
      else if (bc.k(i1))
      {
        S = true;
        I = false;
        M = false;
        K = false;
        L = false;
        N = false;
      }
      else if (bc.F(i1))
      {
        W = true;
        I = false;
        M = false;
        K = false;
        L = false;
        J = false;
      }
      else
      {
        I = false;
        J = false;
        K = false;
        L = false;
        M = false;
        N = false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */