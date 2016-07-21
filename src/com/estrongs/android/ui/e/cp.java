package com.estrongs.android.ui.e;

import android.content.pm.ApplicationInfo;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.d;
import com.estrongs.fs.impl.pcs.b;
import com.estrongs.fs.w;
import java.util.Iterator;
import java.util.List;

public class cp
{
  public boolean A = false;
  public boolean B = false;
  public boolean C = false;
  public boolean D = false;
  public boolean E = false;
  public boolean F = false;
  public boolean G = false;
  public boolean H = false;
  public boolean I = false;
  public boolean J = false;
  public boolean K = false;
  public boolean L = false;
  public boolean M = false;
  public int N = 0;
  public boolean O = true;
  public boolean P = true;
  public boolean Q = true;
  public boolean R = true;
  public boolean S = true;
  public boolean T = true;
  public boolean U = true;
  public boolean V = true;
  public boolean W = true;
  public boolean X = false;
  public boolean Y = false;
  public boolean Z = false;
  public String a;
  public boolean aa = false;
  public boolean ab = false;
  public boolean ac = false;
  public boolean ad = false;
  public boolean ae = false;
  public boolean af = false;
  public boolean ag = false;
  public boolean ah = false;
  public boolean ai = false;
  public boolean aj = false;
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
  
  public cp(String paramString, List<h> paramList)
  {
    a = paramString;
    b = paramList;
    a();
  }
  
  private void a()
  {
    D = ap.bh(a);
    Object localObject1;
    Object localObject2;
    boolean bool;
    if (D)
    {
      localObject1 = ap.bQ(a);
      localObject2 = localObject1;
      if ("externalstorage://".equalsIgnoreCase((String)localObject1)) {
        localObject2 = "/sdcard";
      }
      c = ap.I((String)localObject2);
      if (c != 0) {
        break label800;
      }
      bool = true;
      label60:
      e = bool;
      if (c != 3) {
        break label805;
      }
      bool = true;
      label75:
      g = bool;
      if (c != 23) {
        break label810;
      }
      bool = true;
      label91:
      h = bool;
      if (c != 12) {
        break label815;
      }
      bool = true;
      label107:
      i = bool;
      if (c != 14) {
        break label820;
      }
      bool = true;
      label123:
      j = bool;
      if (c != 16) {
        break label825;
      }
      bool = true;
      label139:
      k = bool;
      if (c != 24) {
        break label830;
      }
      bool = true;
      label155:
      m = bool;
      if (c != 17) {
        break label835;
      }
      bool = true;
      label171:
      n = bool;
      if (c != 26) {
        break label840;
      }
      bool = true;
      label187:
      o = bool;
      if (c != 28) {
        break label845;
      }
      bool = true;
      label203:
      p = bool;
      if ((c != 25) && (c != 13)) {
        break label850;
      }
      bool = true;
      label228:
      q = bool;
      if (c != 18) {
        break label855;
      }
      bool = true;
      label244:
      r = bool;
      if ((!r) || (!ap.aC((String)localObject2))) {
        break label860;
      }
      bool = true;
      label266:
      s = bool;
      if ((!r) || (!ap.aR((String)localObject2))) {
        break label865;
      }
      bool = true;
      label288:
      t = bool;
      if ((!r) || (!ap.aB((String)localObject2))) {
        break label870;
      }
      bool = true;
      label310:
      u = bool;
      if ((!r) || (!ap.aP((String)localObject2))) {
        break label875;
      }
      bool = true;
      label332:
      v = bool;
      if ((c != 31) && (!ap.cg((String)localObject2)) && (!ap.cp((String)localObject2))) {
        break label880;
      }
      bool = true;
      label364:
      w = bool;
      if (c != 27) {
        break label885;
      }
      bool = true;
      label380:
      x = bool;
      if ((!m) || (!ap.ap((String)localObject2))) {
        break label890;
      }
      bool = true;
      label402:
      B = bool;
      if ((!m) || (!ap.ao((String)localObject2))) {
        break label895;
      }
      bool = true;
      label424:
      C = bool;
      if (c != 33) {
        break label900;
      }
      bool = true;
      label440:
      y = bool;
      z = ap.ci((String)localObject2);
      A = ap.w(a);
      if ((g) || (h) || (y) || (r) || (!ap.bm((String)localObject2))) {
        break label905;
      }
      bool = true;
      label503:
      f = bool;
      if (((!f) && (!g)) || (!ap.br((String)localObject2))) {
        break label910;
      }
      bool = true;
      label532:
      d = bool;
      E = ap.O((String)localObject2);
      F = ap.N((String)localObject2);
      G = ap.bt((String)localObject2);
      if ((!ap.bu((String)localObject2)) || (ap.bt((String)localObject2))) {
        break label915;
      }
      bool = true;
      label582:
      H = bool;
      I = ap.bw((String)localObject2);
      J = ap.by((String)localObject2);
      K = ap.bx((String)localObject2);
      l = ap.ad((String)localObject2);
      L = ap.ac((String)localObject2);
      if ((L) || (!ap.ab((String)localObject2))) {
        break label920;
      }
      bool = true;
      label649:
      M = bool;
      if (b != null) {
        break label925;
      }
      N = 0;
      label666:
      localObject1 = b.a();
      if (b == null) {
        return;
      }
      localObject2 = b.iterator();
    }
    for (;;)
    {
      label688:
      if (!((Iterator)localObject2).hasNext()) {
        return;
      }
      h localh = (h)((Iterator)localObject2).next();
      if (localh.getFileType().a())
      {
        if (d)
        {
          Z = true;
          P = false;
        }
        for (;;)
        {
          O = false;
          Q = false;
          R = false;
          S = false;
          T = false;
          U = false;
          V = false;
          if (!localh.equals(localObject1)) {
            break label688;
          }
          aj = true;
          break label688;
          localObject1 = a;
          break;
          label800:
          bool = false;
          break label60;
          label805:
          bool = false;
          break label75;
          label810:
          bool = false;
          break label91;
          label815:
          bool = false;
          break label107;
          label820:
          bool = false;
          break label123;
          label825:
          bool = false;
          break label139;
          label830:
          bool = false;
          break label155;
          label835:
          bool = false;
          break label171;
          label840:
          bool = false;
          break label187;
          label845:
          bool = false;
          break label203;
          label850:
          bool = false;
          break label228;
          label855:
          bool = false;
          break label244;
          label860:
          bool = false;
          break label266;
          label865:
          bool = false;
          break label288;
          label870:
          bool = false;
          break label310;
          label875:
          bool = false;
          break label332;
          label880:
          bool = false;
          break label364;
          label885:
          bool = false;
          break label380;
          label890:
          bool = false;
          break label402;
          label895:
          bool = false;
          break label424;
          label900:
          bool = false;
          break label440;
          label905:
          bool = false;
          break label503;
          label910:
          bool = false;
          break label532;
          label915:
          bool = false;
          break label582;
          label920:
          bool = false;
          break label649;
          label925:
          N = b.size();
          break label666;
          Y = true;
        }
      }
      X = true;
      P = false;
      if ((!ag) && ((localh instanceof d)))
      {
        ApplicationInfo localApplicationInfo = ((d)localh).h();
        if (((flags & 0x80) == 0) && ((flags & 0x1) != 0)) {
          ag = true;
        }
      }
      int i1 = bg.a(localh);
      if (bg.F(i1))
      {
        aa = true;
        R = false;
        S = false;
        T = false;
        U = false;
        V = false;
        if ((localh instanceof d)) {
          if (((d)localh).f()) {
            ah = true;
          } else {
            W = false;
          }
        }
      }
      else if (bg.a(i1))
      {
        ad = true;
        Q = false;
        R = false;
        S = false;
        U = false;
        V = false;
      }
      else if (bg.e(i1))
      {
        ac = true;
        Q = false;
        R = false;
        U = false;
        T = false;
        V = false;
      }
      else if (bg.g(i1))
      {
        ae = true;
        Q = false;
        R = false;
        S = false;
        T = false;
        V = false;
      }
      else if (bg.k(i1))
      {
        ab = true;
        Q = false;
        U = false;
        S = false;
        T = false;
        V = false;
      }
      else if (bg.I(i1))
      {
        af = true;
        Q = false;
        U = false;
        S = false;
        T = false;
        R = false;
      }
      else
      {
        Q = false;
        R = false;
        S = false;
        T = false;
        U = false;
        V = false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */