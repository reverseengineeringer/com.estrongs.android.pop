package com.estrongs.android.view;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Environment;
import android.os.Handler;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.SparseBooleanArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.compress.a.e;
import com.estrongs.android.pop.app.compress.br;
import com.estrongs.android.pop.app.compress.bs;
import com.estrongs.android.pop.app.compress.cb;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.widget.f;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import com.estrongs.fs.x;
import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ak
  extends cr
{
  private static LinkedList<com.estrongs.android.pop.app.compress.ba> aw = new LinkedList();
  private static Map<String, com.estrongs.android.pop.app.compress.bb> ax = new HashMap();
  private static Map<String, com.estrongs.android.pop.app.compress.ax> ay = new HashMap();
  public String a = null;
  private int aA;
  private String aB;
  private br aC = new av(this);
  private com.estrongs.io.archive.i al = null;
  private bg am = null;
  private File an;
  private Handler ao;
  private bm ap;
  private Map<String, File> aq = new HashMap(10);
  private String ar = "";
  private SparseBooleanArray as = new SparseBooleanArray();
  private cb at;
  private boolean au = false;
  private bs av;
  private boolean az = false;
  public String b = com.estrongs.android.util.e.a[0];
  protected String c;
  protected boolean d = false;
  SimpleDateFormat e = new SimpleDateFormat("yyyy.MM.dd");
  
  public ak(Activity paramActivity, com.estrongs.fs.util.a.a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
    i = new bi(this);
    a(new bj(this));
    h.setAdapter(i);
    ao = new al(this);
    i.registerAdapterDataObserver(new aw(this));
  }
  
  private void a(com.estrongs.android.pop.app.compress.ax paramax, h paramh)
  {
    cv localcv = new cv(ag).a(ag.getString(2131231262)).b(ag.getString(2131231261));
    localcv.b(2131231270, new as(this, paramax, paramh));
    localcv.c(2131231265, null);
    localcv.b().show();
  }
  
  public static void a(com.estrongs.android.pop.app.compress.ba paramba)
  {
    aw.addFirst(paramba);
  }
  
  private void a(com.estrongs.android.pop.app.compress.bb parambb)
  {
    cv localcv = new cv(ag).a(ag.getString(2131231307)).b(ag.getString(2131231306));
    localcv.b(2131231270, new ar(this, parambb));
    localcv.c(2131231265, null);
    localcv.b().show();
  }
  
  private void a(com.estrongs.android.pop.app.compress.bb parambb, ProgressBar paramProgressBar, TextView paramTextView1, TextView paramTextView2, TextView paramTextView3, ImageView paramImageView, TextView paramTextView4)
  {
    parambb.a(paramProgressBar);
    parambb.b(paramTextView1);
    parambb.c(paramTextView2);
    parambb.d(paramTextView3);
    parambb.a(paramImageView);
    parambb.a(paramTextView4);
  }
  
  public static void a(String paramString, com.estrongs.android.pop.app.compress.bb parambb)
  {
    ax.put(paramString, parambb);
  }
  
  public static boolean a(h paramh)
  {
    return (ay.get(paramh.getAbsolutePath()) != null) || (ax.get(paramh.getAbsolutePath()) != null);
  }
  
  private void b(List<h> paramList, boolean paramBoolean)
  {
    String str1 = ap.bc(a);
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      localArrayList.add(((h)paramList.get(i)).getPath());
      i += 1;
    }
    Activity localActivity = ag;
    String str2 = b;
    String str3 = aB;
    if (c != null) {}
    for (paramList = c;; paramList = null)
    {
      paramList = new com.estrongs.android.pop.app.compress.l(null, localActivity, str1, str2, str3, paramList, localArrayList, paramBoolean, true, aA, null);
      paramList.a(new au(this));
      paramList.b();
      return;
    }
  }
  
  public static boolean b(h paramh)
  {
    paramh = com.estrongs.android.pop.app.compress.a.d.a(paramh.getAbsolutePath());
    return (paramh != null) && (d);
  }
  
  public static void c(String paramString)
  {
    com.estrongs.android.pop.app.compress.bb localbb = (com.estrongs.android.pop.app.compress.bb)ax.get(paramString);
    if (localbb != null) {
      localbb.e();
    }
    ax.remove(paramString);
  }
  
  public static void d(String paramString)
  {
    ay.remove(paramString);
  }
  
  private boolean q(String paramString)
  {
    if ((com.estrongs.android.util.bg.m(paramString)) || ((paramString.toLowerCase().endsWith(".rar")) && (new com.estrongs.io.archive.sevenzip.c(paramString, "AUTO", null).e()))) {
      try
      {
        paramString = com.estrongs.io.archive.d.a(paramString, b, true);
        if (paramString.k())
        {
          ag.runOnUiThread(new bb(this, paramString));
          return true;
        }
        am = new bg(this);
        am.start();
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
  
  private void r(String paramString)
  {
    try
    {
      if ((ap.bl(paramString)) && (com.estrongs.android.util.bg.b(paramString) == -1))
      {
        AppRunner.t(ag, paramString);
        return;
      }
      localIntent = com.estrongs.android.pop.app.b.a(ag, paramString);
      if (localIntent == null)
      {
        com.estrongs.android.ui.view.ak.a(ag, k(2131231030), 0);
        return;
      }
    }
    catch (Exception paramString)
    {
      Intent localIntent;
      if ((paramString instanceof ActivityNotFoundException))
      {
        com.estrongs.android.ui.view.ak.a(ag, k(2131231030), 0);
        return;
        if (com.estrongs.android.util.bg.K(paramString))
        {
          a(localIntent);
          return;
        }
        localIntent.setComponent(null);
        AppRunner.a(ag, localIntent, paramString);
        return;
      }
      com.estrongs.android.ui.view.ak.a(ag, k(2131231775) + ":" + paramString.getMessage(), 0);
    }
  }
  
  private void x()
  {
    if (al != null) {
      j.a(j.g(com.estrongs.android.pop.a.l + "/" + ap.bS(ap.d(al.j()))));
    }
  }
  
  private void y()
  {
    Object localObject = aq.values().iterator();
    while (((Iterator)localObject).hasNext())
    {
      File localFile = (File)((Iterator)localObject).next();
      if (localFile.exists()) {
        localFile.delete();
      }
    }
    aq.clear();
    x();
    if (ag.getIntent().getBooleanExtra("isTmpFile", false))
    {
      localObject = ap.bb(a);
      if (localObject != null) {}
    }
    while (d)
    {
      return;
      localObject = new File((String)localObject);
      ((File)localObject).delete();
      ((File)localObject).getParentFile().delete();
    }
    q();
  }
  
  private boolean z()
  {
    return !ax.isEmpty();
  }
  
  public void a(int paramInt)
  {
    g.setSpanCount(1);
    i.notifyDataSetChanged();
  }
  
  public void a(bm parambm)
  {
    ap = parambm;
    f(k(2131232552));
    if (am != null) {
      am.a();
    }
    if (al != null) {
      y();
    }
    new Thread(new ax(this, ap.bb(a))).start();
  }
  
  protected void a(com.estrongs.fs.b.al paramal, List<h> paramList)
  {
    if (!ay.isEmpty())
    {
      Iterator localIterator = ay.entrySet().iterator();
      while (localIterator.hasNext())
      {
        h localh = ((com.estrongs.android.pop.app.compress.ax)((Map.Entry)localIterator.next()).getValue()).a();
        try
        {
          if (!localh.exists()) {
            H.addFirst(localh);
          }
        }
        catch (Exception localException)
        {
          com.estrongs.android.util.l.c(localException.toString());
        }
      }
    }
    super.a(paramal, paramList);
  }
  
  protected void a(h paramh, View paramView, int paramInt)
  {
    if (!(paramh instanceof com.estrongs.fs.impl.g.a)) {}
    File localFile;
    do
    {
      do
      {
        return;
        paramh = ((com.estrongs.fs.impl.g.a)paramh).a();
        paramView = paramh.getPath();
        if (!paramh.isDirectory()) {
          break;
        }
        an = paramh;
        g();
      } while (F == null);
      F.a(c(), true);
      return;
      if (com.estrongs.android.util.bg.j(paramh.getName()))
      {
        com.estrongs.android.ui.view.ak.a(ag, k(2131231742), 0);
        return;
      }
      localFile = (File)aq.get(paramView);
      if (localFile != null) {
        break;
      }
      ar = paramView;
      if (av == null) {
        av = new bs(this, ag, ao, al);
      }
      paramh = (ArchiveEntryFile)paramh;
      av.b(ar);
      av.a(paramh);
    } while (c != null);
    if (at == null)
    {
      at = new cb(ag, false, true);
      at.setButton(-1, j(2131231270), new be(this));
      at.setButton(-2, j(2131231265), new bf(this));
    }
    if ((paramh.isEncrypted()) && ((av.a()) || (!at.b())))
    {
      at.show();
      return;
    }
    av.show();
    return;
    r(localFile.getAbsolutePath());
  }
  
  public void a(String paramString, TypedMap paramTypedMap)
  {
    com.estrongs.android.util.l.e("ddd", "====browserTo===path===" + paramString + "====listsize==" + H.size() + "==mpath==" + C);
    if ((C != null) && (ap.ac(paramString)) && (paramString.equals(C)) && (aw.size() > 0)) {
      i.notifyDataSetChanged();
    }
    for (;;)
    {
      return;
      if (ap.ac(paramString))
      {
        super.a(paramString, paramTypedMap);
        a(new ay(this));
        return;
      }
      a(new az(this));
      if ((C != null) && (ap.be(C).equals(ap.be(paramString))))
      {
        C = paramString;
        try
        {
          if (ap.bd(paramString)) {}
          for (paramString = "/"; al != null; paramString = ap.bf(paramString))
          {
            paramString = al.b(paramString);
            if (paramString != null) {
              an = paramString;
            }
            g();
            if (F == null) {
              break;
            }
            F.a(c(), true);
            return;
          }
          if (av == null) {
            break label252;
          }
        }
        catch (IOException paramString)
        {
          paramString.printStackTrace();
          return;
        }
      }
    }
    av = null;
    label252:
    a = paramString;
    C = paramString;
    if (F != null) {
      F.a(c(), true);
    }
    f(k(2131232552));
    if (am != null) {
      am.a();
    }
    if (al != null) {
      y();
    }
    new Thread(new ba(this, ap.bc(a))).start();
    D = null;
  }
  
  public void a(List<h> paramList, boolean paramBoolean)
  {
    o();
    String str = ap.bc(a);
    if (az)
    {
      b(paramList, paramBoolean);
      return;
    }
    paramList = new com.estrongs.android.pop.app.compress.a(ag, true, str, b, null, new at(this, str, paramList, paramBoolean));
    paramList.a(true);
    paramList.a();
  }
  
  public void b(String paramString)
  {
    try
    {
      paramString = al.b(paramString);
      if (paramString != null)
      {
        an = paramString;
        C = paramString.getAbsolutePath();
      }
      return;
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  protected void b(List<h> paramList)
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
    if (ap.ac(C)) {
      super.b(paramBoolean);
    }
    while (an == null) {
      return;
    }
    if ((an != null) && (!"/".equals(an.getPath()))) {}
    ArrayList localArrayList;
    for (Object localObject = a + '*' + an.getPath();; localObject = a)
    {
      C = ((String)localObject);
      as.clear();
      H.clear();
      localObject = an.listFiles();
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
  
  public h f()
  {
    Object localObject = null;
    if (ap.ac(C)) {
      localObject = super.f();
    }
    FileExplorerActivity localFileExplorerActivity;
    do
    {
      return (h)localObject;
      if ((an != null) && (!"/".equals(an.getPath()))) {
        break;
      }
      localFileExplorerActivity = FileExplorerActivity.X();
    } while ((localFileExplorerActivity != null) && (!localFileExplorerActivity.az()));
    localObject = new x("archive://");
    a("archive://", null);
    C = "archive://";
    g();
    return (h)localObject;
    return j();
  }
  
  public void g()
  {
    if (!au)
    {
      au = true;
      if (ap.ac(C)) {
        super.g();
      }
    }
    while (z())
    {
      return;
      b(false);
      return;
    }
    if (ap.ac(C))
    {
      super.g();
      return;
    }
    b(false);
  }
  
  public void i_()
  {
    super.i_();
    aa.a().b();
    com.estrongs.android.ui.feedback.c.a(ag);
  }
  
  public h j()
  {
    if (ap.ac(C)) {
      return super.j();
    }
    if ((an == null) || ("/".equals(an.getPath()))) {
      return new x("archive://");
    }
    an = an.getParentFile();
    g();
    if (F != null) {
      F.a(c(), true);
    }
    return new com.estrongs.fs.impl.g.a(an);
  }
  
  protected void q()
  {
    if (al != null)
    {
      al.d();
      al.g();
    }
    try
    {
      al.c();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  public File r()
  {
    return an;
  }
  
  public com.estrongs.io.archive.i s()
  {
    return al;
  }
  
  public void t()
  {
    Object localObject = new am(this, ad.a(ag).q());
    localObject = new an(this, ag, com.estrongs.android.pop.b.b(), (com.estrongs.fs.i)localObject);
    ((f)localObject).a(ag.getText(2131230726));
    ((f)localObject).b(ag.getString(2131231270), new ao(this, (f)localObject));
    ((f)localObject).c(ag.getString(2131231265), new aq(this));
    ((f)localObject).c(true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */