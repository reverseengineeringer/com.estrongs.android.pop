package com.estrongs.android.view;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Environment;
import android.os.Handler;
import android.util.SparseBooleanArray;
import android.view.View;
import android.widget.LinearLayout;
import com.estrongs.android.pop.app.b;
import com.estrongs.android.pop.app.compress.bs;
import com.estrongs.android.pop.app.compress.cb;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.widget.bx;
import com.estrongs.io.archive.d;
import com.estrongs.io.archive.sevenzip.c;
import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class g
  extends cr
{
  public String a = null;
  private boolean al = false;
  private int am;
  private String an;
  private Map<String, File> ao = new HashMap(10);
  private String ap = "";
  private Handler aq;
  private File ar;
  private bx as = null;
  private bs at;
  private SparseBooleanArray au = new SparseBooleanArray();
  private cb av;
  private t aw = null;
  private v ax;
  public String b = com.estrongs.android.util.e.a[0];
  protected boolean c = false;
  protected String d;
  private com.estrongs.io.archive.i e = null;
  
  public g(Activity paramActivity, com.estrongs.fs.util.a.a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw, false);
    a(new h(this));
    aq = new j(this);
    as = new k(this, ag);
  }
  
  private void b(List<com.estrongs.fs.h> paramList, boolean paramBoolean)
  {
    String str1 = ap.bb(a);
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      localArrayList.add(((com.estrongs.fs.h)paramList.get(i)).getPath());
      i += 1;
    }
    Activity localActivity = ag;
    String str2 = b;
    String str3 = an;
    if (d != null) {}
    for (paramList = d;; paramList = null)
    {
      paramList = new com.estrongs.android.pop.app.compress.l(this, localActivity, str1, str2, str3, paramList, localArrayList, paramBoolean, true, am, null);
      paramList.a(new i(this));
      paramList.b();
      return;
    }
  }
  
  private boolean b(String paramString)
  {
    if ((bg.m(paramString)) || ((paramString.toLowerCase().endsWith(".rar")) && (new c(paramString, "AUTO", null).e()))) {
      try
      {
        paramString = d.a(paramString, b, true);
        if (paramString.k())
        {
          ag.runOnUiThread(new l(this, paramString));
          return true;
        }
        aw = new t(this);
        aw.start();
        return true;
      }
      catch (IOException paramString)
      {
        paramString.printStackTrace();
        return true;
      }
    }
    return false;
  }
  
  private void c(String paramString)
  {
    try
    {
      if ((ap.bl(paramString)) && (bg.b(paramString) == -1))
      {
        AppRunner.t(ag, paramString);
        return;
      }
      localIntent = b.a(ag, paramString);
      if (localIntent == null)
      {
        ak.a(ag, k(2131231030), 0);
        return;
      }
    }
    catch (Exception paramString)
    {
      Intent localIntent;
      if ((paramString instanceof ActivityNotFoundException))
      {
        ak.a(ag, k(2131231030), 0);
        return;
        if (bg.K(paramString))
        {
          a(localIntent);
          return;
        }
        localIntent.setComponent(null);
        AppRunner.a(ag, localIntent, paramString);
        return;
      }
      ak.a(ag, k(2131231775) + ":" + paramString.getMessage(), 0);
    }
  }
  
  private void t()
  {
    if (e != null) {
      com.estrongs.fs.util.j.a(com.estrongs.fs.util.j.g(com.estrongs.android.pop.a.l + "/" + ap.bS(ap.d(e.j()))));
    }
  }
  
  private void u()
  {
    Object localObject = ao.values().iterator();
    while (((Iterator)localObject).hasNext())
    {
      File localFile = (File)((Iterator)localObject).next();
      if (localFile.exists()) {
        localFile.delete();
      }
    }
    ao.clear();
    t();
    if (ag.getIntent().getBooleanExtra("isTmpFile", false))
    {
      localObject = ap.bb(a);
      if (localObject != null) {}
    }
    while (c)
    {
      return;
      localObject = new File((String)localObject);
      ((File)localObject).delete();
      ((File)localObject).getParentFile().delete();
    }
    q();
  }
  
  public void a(v paramv)
  {
    ax = paramv;
    f(k(2131232552));
    if (aw != null) {
      aw.a();
    }
    if (e != null) {
      u();
    }
    new Thread(new p(this, ap.bb(a))).start();
  }
  
  protected void a(com.estrongs.fs.h paramh, View paramView, int paramInt)
  {
    paramh = ((com.estrongs.fs.impl.g.a)paramh).a();
    paramView = paramh.getPath();
    if (paramh.isDirectory())
    {
      ar = paramh;
      g();
      if (F != null) {
        F.a(c(), true);
      }
      return;
    }
    if (bg.j(paramh.getName()))
    {
      ak.a(ag, k(2131231742), 0);
      return;
    }
    File localFile = (File)ao.get(paramView);
    if (localFile == null)
    {
      ap = paramView;
      if (at == null) {
        at = new bs(this, ag, aq, e);
      }
      paramh = (ArchiveEntryFile)paramh;
      at.b(ap);
      at.a(paramh);
      if (d != null)
      {
        at.a(d);
        at.show();
        return;
      }
      if (av == null)
      {
        av = new cb(ag, false, true);
        av.setButton(-1, j(2131231270), new q(this));
        av.setButton(-2, j(2131231265), new r(this));
      }
      if ((paramh.isEncrypted()) && ((at.a()) || (!av.b())))
      {
        av.show();
        return;
      }
      at.show();
      return;
    }
    c(localFile.getAbsolutePath());
  }
  
  public void a(String paramString, TypedMap paramTypedMap)
  {
    if ((C != null) && (ap.be(C).equals(ap.be(paramString))))
    {
      C = paramString;
      try
      {
        if (ap.bd(paramString)) {}
        for (paramString = "/"; e == null; paramString = ap.bf(paramString)) {
          return;
        }
        paramString = e.b(paramString);
        if (paramString != null) {
          ar = paramString;
        }
        g();
        if (F == null) {
          return;
        }
        F.a(c(), true);
        return;
      }
      catch (IOException paramString)
      {
        paramString.printStackTrace();
        return;
      }
    }
    if (at != null) {
      at = null;
    }
    a = paramString;
    C = paramString;
    if (F != null) {
      F.a(c(), true);
    }
    f(k(2131232552));
    if (aw != null) {
      aw.a();
    }
    if (e != null) {
      u();
    }
    new Thread(new o(this, ap.bb(a))).start();
  }
  
  public void a(List<com.estrongs.fs.h> paramList, boolean paramBoolean)
  {
    o();
    String str = ap.bb(a);
    if (al)
    {
      b(paramList, paramBoolean);
      return;
    }
    new com.estrongs.android.pop.app.compress.a(ag, true, str, b, null, new s(this, str, paramList, paramBoolean)).a();
  }
  
  public void a_(String paramString)
  {
    try
    {
      paramString = e.b(paramString);
      if (paramString != null)
      {
        ar = paramString;
        C = paramString.getAbsolutePath();
      }
      return;
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  protected void b(List<com.estrongs.fs.h> paramList)
  {
    J();
    c(paramList);
    if (H.size() == 0)
    {
      if (ap.br(c()))
      {
        if (ap.bg(c()))
        {
          f(2131231643);
          return;
        }
        f(2131231642);
        return;
      }
      if (!"mounted".equals(Environment.getExternalStorageState()))
      {
        f(2131232297);
        return;
      }
      f(2131231510);
      return;
    }
    a_(H);
  }
  
  public void b(boolean paramBoolean)
  {
    if (ar == null) {
      return;
    }
    if ((ar != null) && (!"/".equals(ar.getPath()))) {}
    ArrayList localArrayList;
    for (Object localObject = a + '*' + ar.getPath();; localObject = a)
    {
      C = ((String)localObject);
      au.clear();
      H.clear();
      localObject = ar.listFiles();
      localArrayList = new ArrayList();
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        localArrayList.add(new com.estrongs.fs.impl.g.a(localObject[i]));
        i += 1;
      }
    }
    b(localArrayList);
    J();
  }
  
  public String c()
  {
    return C;
  }
  
  public com.estrongs.fs.h f()
  {
    if ((ar == null) || ("/".equals(ar.getPath()))) {
      return null;
    }
    return j();
  }
  
  public void g()
  {
    b(false);
  }
  
  public void i_()
  {
    u();
    super.i_();
  }
  
  public com.estrongs.fs.h j()
  {
    if ((ar == null) || ("/".equals(ar.getPath()))) {
      return null;
    }
    ar = ar.getParentFile();
    g();
    if (F != null) {
      F.a(c(), true);
    }
    return new com.estrongs.fs.impl.g.a(ar);
  }
  
  public boolean p()
  {
    return u.getVisibility() == 0;
  }
  
  protected void q()
  {
    if (e != null)
    {
      e.d();
      e.g();
    }
    try
    {
      e.c();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  public File r()
  {
    return ar;
  }
  
  public com.estrongs.io.archive.i s()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */