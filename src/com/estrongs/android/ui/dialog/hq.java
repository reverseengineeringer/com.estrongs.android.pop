package com.estrongs.android.ui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TableRow;
import android.widget.TextView;
import com.estrongs.android.h.a.e;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.view.bd;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.gf;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.c;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.i;
import com.estrongs.fs.impl.local.m;
import com.estrongs.fs.impl.local.r;
import com.estrongs.fs.util.j;
import com.estrongs.fs.w;
import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

class hq
  extends gf
{
  TextView a;
  TextView b;
  protected h c = null;
  String d = "";
  String e = "";
  String f = "";
  String g;
  r h;
  boolean i = false;
  public Dialog j = null;
  ProgressBar k = null;
  com.estrongs.android.pop.app.diskusage.a l = null;
  boolean m;
  private TextView n;
  private View o;
  private TextView p;
  private TextView q;
  private TextView r;
  private String s = null;
  private ao t;
  private TextView u = null;
  private boolean v = false;
  
  public hq(Context paramContext, h paramh)
  {
    this(paramContext, paramh, false);
  }
  
  public hq(Context paramContext, h paramh, boolean paramBoolean)
  {
    super(paramContext);
    m = paramBoolean;
    c = paramh;
    s = paramh.getAbsolutePath();
    d = k(2131231132).toString();
    e = k(2131231134).toString();
    f = k(2131232204).toString();
    if (s == null) {
      return;
    }
    if (ap.bl(c.getPath()))
    {
      i = true;
      label153:
      if (paramh.getFileType() == null) {
        break label307;
      }
    }
    label307:
    for (paramBoolean = paramh.getFileType().c().toString().contains("server");; paramBoolean = false)
    {
      if (paramBoolean)
      {
        a(true);
        paramBoolean = bool;
        ((Button)b(2131624842)).setOnClickListener(new hr(this, paramContext));
        ((Button)b(2131624843)).setOnClickListener(new ic(this, paramContext));
        if (!paramBoolean) {
          break;
        }
        b(2131624841).setVisibility(8);
        return;
        i = false;
        break label153;
      }
      if (ap.bl(s)) {}
      for (;;)
      {
        try
        {
          g = ds).p;
          paramBoolean = ap.cp(s);
          a(false);
        }
        catch (Throwable paramh)
        {
          continue;
        }
        paramBoolean = false;
      }
    }
  }
  
  private int a(String[] paramArrayOfString, String paramString)
  {
    int i1 = 0;
    while (i1 < paramArrayOfString.length)
    {
      if (paramArrayOfString[i1].equals(paramString)) {
        return i1;
      }
      i1 += 1;
    }
    return 0;
  }
  
  private String a(r paramr)
  {
    String str;
    if ((a & 0x100) != 0)
    {
      str = "" + "r";
      if ((a & 0x80) == 0) {
        break label327;
      }
      str = str + "w";
      label63:
      if ((a & 0x800) == 0) {
        break label373;
      }
      if ((a & 0x40) == 0) {
        break label350;
      }
      str = str + "s";
      label104:
      if ((a & 0x20) == 0) {
        break label429;
      }
      str = str + "r";
      label134:
      if ((a & 0x10) == 0) {
        break label452;
      }
      str = str + "w";
      label164:
      if ((a & 0x400) == 0) {
        break label498;
      }
      if ((a & 0x8) == 0) {
        break label475;
      }
      str = str + "s";
      label205:
      if ((a & 0x4) == 0) {
        break label554;
      }
      str = str + "r";
      label234:
      if ((a & 0x2) == 0) {
        break label577;
      }
      str = str + "w";
    }
    for (;;)
    {
      if ((a & 0x200) != 0)
      {
        if ((a & 0x1) != 0)
        {
          return str + "t";
          str = "" + "-";
          break;
          label327:
          str = str + "-";
          break label63;
          label350:
          str = str + "S";
          break label104;
          label373:
          if ((a & 0x40) != 0)
          {
            str = str + "x";
            break label104;
          }
          str = str + "-";
          break label104;
          label429:
          str = str + "-";
          break label134;
          label452:
          str = str + "-";
          break label164;
          label475:
          str = str + "S";
          break label205;
          label498:
          if ((a & 0x8) != 0)
          {
            str = str + "x";
            break label205;
          }
          str = str + "-";
          break label205;
          label554:
          str = str + "-";
          break label234;
          label577:
          str = str + "-";
          continue;
        }
        return str + "T";
      }
    }
    if ((a & 0x1) != 0) {
      return str + "x";
    }
    return str + "-";
  }
  
  private void a(TextView paramTextView, long paramLong)
  {
    paramTextView.setText(j.c(paramLong) + " (" + j.d(paramLong) + " " + f + ")");
  }
  
  private void a(boolean paramBoolean)
  {
    TextView localTextView1 = (TextView)b(2131624329);
    Object localObject2 = (ImageView)b(2131624328);
    TextView localTextView9 = (TextView)b(2131624736);
    Object localObject3 = (TextView)b(2131624738);
    TextView localTextView8 = (TextView)b(2131624339);
    TextView localTextView2 = (TextView)b(2131624854);
    TextView localTextView3 = (TextView)b(2131624741);
    TextView localTextView4 = (TextView)b(2131624857);
    TextView localTextView5 = (TextView)b(2131624861);
    TextView localTextView6 = (TextView)b(2131624864);
    TextView localTextView7 = (TextView)b(2131624867);
    q = ((TextView)b(2131624845));
    View localView = b(2131624844);
    n = ((TextView)b(2131624338));
    o = b(2131624847);
    p = ((TextView)b(2131624849));
    r = ((TextView)b(2131624846));
    a = ((TextView)b(2131624875));
    b = ((TextView)b(2131624879));
    e.a(c.getAbsolutePath(), (ImageView)localObject2, c);
    k = ((ProgressBar)b(2131624694));
    localObject2 = (TableRow)b(2131624850);
    if ((!c.getFileType().a()) || (paramBoolean) || (!ap.bl(c.getAbsolutePath()))) {
      ((TableRow)localObject2).setVisibility(8);
    }
    localObject2 = (LinearLayout)b(2131624882);
    if (paramBoolean)
    {
      b(false);
      ((LinearLayout)localObject2).setVisibility(8);
      b(2131624881).setVisibility(8);
      if (ap.bg(s)) {
        localTextView1.setText(ap.a(true, s));
      }
      for (;;)
      {
        try
        {
          localTextView9.setText(com.estrongs.fs.impl.e.a.a(aF(), s));
          ((TextView)localObject3).setText(ap.cc(s));
          if (!ap.aG(s)) {
            break label549;
          }
          if (ap.aF(s))
          {
            localTextView8.setVisibility(0);
            localTextView8.setText(k(2131231639));
            n.setVisibility(0);
          }
          o.setVisibility(8);
          localTextView2.setText(2131232212);
          localTextView3.setText(2131232212);
          localTextView4.setText(2131232212);
          localTextView5.setText(2131232212);
          localTextView6.setText(2131232212);
          localTextView7.setText(2131232212);
          q.setText(2131232206);
          return;
        }
        catch (FileSystemException localFileSystemException)
        {
          localFileSystemException.printStackTrace();
          continue;
        }
        localFileSystemException.setText(ad.a(aF()).h(s));
        localTextView9.setText(2131231663);
        continue;
        label549:
        localTextView8.setVisibility(8);
        n.setVisibility(8);
      }
    }
    ((Button)b(2131624851)).setOnClickListener(new ih(this));
    TableRow localTableRow1 = (TableRow)b(2131624859);
    TableRow localTableRow2 = (TableRow)b(2131624862);
    TableRow localTableRow3 = (TableRow)b(2131624865);
    u = ((TextView)b(2131624871));
    int i1;
    label854:
    Object localObject1;
    if (((m.a(aF(), false)) && (ap.bl(s)) && (!ap.bC(s))) || ((ap.K(s)) && (g != null)))
    {
      g = "asdfghjklmnop";
      localTableRow1.setVisibility(8);
      localTableRow2.setVisibility(8);
      localTableRow3.setVisibility(8);
      b(2131624858).setVisibility(8);
      h = m.f(f());
      g = a(h);
      b(true);
      u.setText(g.substring(0, 3) + " " + g.substring(3, 6) + " " + g.substring(6, 9));
      localFileSystemException.setText(c.getName());
      if (!c.getFileType().a()) {
        break label1532;
      }
      i1 = 2131231133;
      localTextView9.setText(i1);
      if (!ap.v(s)) {
        break label1539;
      }
      localObject1 = s;
      label876:
      if ((ap.cp(s)) || (m)) {
        break label1554;
      }
      ((TextView)localObject3).setText(Html.fromHtml("<a href=\"ss\">" + (String)localObject1 + "</a>"));
      ((TextView)localObject3).setClickable(true);
      ((TextView)localObject3).setOnClickListener(new ii(this));
      label947:
      localTextView8.setVisibility(0);
      localTextView8.setText(k(2131232218));
      n.setVisibility(0);
      if (!ap.bl(s)) {
        break label1564;
      }
      o.setVisibility(0);
      label991:
      localObject3 = ad.a(aF()).G();
      if (!FileExplorerActivity.C) {
        break label1576;
      }
      localObject1 = new SimpleDateFormat(" HH:mm:ss");
      label1021:
      if (c.createdTime() <= 0L) {
        break label1591;
      }
      localTextView2.setText(((DateFormat)localObject3).format(new Date(c.createdTime())) + ((SimpleDateFormat)localObject1).format(new Date(c.lastModified())));
      label1098:
      if (c.lastModified() <= 0L) {
        break label1602;
      }
      localTextView3.setText(((DateFormat)localObject3).format(new Date(c.lastModified())) + ((SimpleDateFormat)localObject1).format(new Date(c.lastModified())));
      label1175:
      if (c.lastModified() <= 0L) {
        break label1613;
      }
      localTextView4.setText(((DateFormat)localObject3).format(new Date(c.lastModified())) + ((SimpleDateFormat)localObject1).format(new Date(c.lastModified())));
      label1252:
      if (!c.hasPermission(0)) {
        break label1624;
      }
      i1 = 2131231273;
      label1269:
      localTextView5.setText(i1);
      if (!c.hasPermission(0)) {
        break label1631;
      }
      i1 = 2131231273;
      label1292:
      localTextView6.setText(i1);
      localTextView7.setText(2131231269);
      if (!c.getFileType().a()) {
        break label1638;
      }
      q.setText(2131232206);
    }
    for (;;)
    {
      if ((ap.bl(c.getAbsolutePath())) && (bg.b(c)))
      {
        b(2131624855).setVisibility(0);
        l(2131624856).setText(2131231333);
        l(2131624857).setText(g.a(aF(), c));
      }
      if (!d()) {
        break label1735;
      }
      ((LinearLayout)localObject2).setVisibility(0);
      b(2131624881).setVisibility(0);
      ((Button)((LinearLayout)localObject2).findViewById(2131624884)).setOnClickListener(new ij(this));
      return;
      localTableRow1.setVisibility(0);
      localTableRow2.setVisibility(0);
      localTableRow3.setVisibility(0);
      b(2131624858).setVisibility(0);
      b(false);
      if (!ap.aY(c.getPath())) {
        break;
      }
      localTableRow1.setVisibility(8);
      localTableRow2.setVisibility(8);
      localTableRow3.setVisibility(8);
      b(2131624858).setVisibility(8);
      break;
      label1532:
      i1 = 2131231131;
      break label854;
      label1539:
      localObject1 = ap.bB(ap.cc(s));
      break label876;
      label1554:
      ((TextView)localObject3).setText((CharSequence)localObject1);
      break label947;
      label1564:
      o.setVisibility(8);
      break label991;
      label1576:
      localObject1 = new SimpleDateFormat(" hh:mm:ss a");
      break label1021;
      label1591:
      localTextView2.setText(2131232212);
      break label1098;
      label1602:
      localTextView3.setText(2131232212);
      break label1175;
      label1613:
      localTextView4.setText(2131232212);
      break label1252;
      label1624:
      i1 = 2131231269;
      break label1269;
      label1631:
      i1 = 2131231269;
      break label1292;
      label1638:
      localView.setVisibility(8);
      long l1 = c.length();
      if (l1 < 0L)
      {
        n.setText(2131232212);
        if (ap.bl(s)) {
          p.setText(2131232212);
        }
      }
      else
      {
        a(n, l1);
        if (ap.bl(s)) {
          a(p, j.b(l1, j.l(s)));
        }
      }
    }
    label1735:
    ((LinearLayout)localObject2).setVisibility(8);
    b(2131624881).setVisibility(8);
  }
  
  private void a(String[] paramArrayOfString, int paramInt)
  {
    new cv(aF()).a(2131231910).a(paramArrayOfString, paramInt, new hv(this, paramArrayOfString)).d(true).c();
  }
  
  private void b(boolean paramBoolean)
  {
    LinearLayout localLinearLayout1 = (LinearLayout)b(2131624869);
    LinearLayout localLinearLayout2 = (LinearLayout)b(2131624873);
    LinearLayout localLinearLayout3 = (LinearLayout)b(2131624877);
    if (paramBoolean)
    {
      a.setText(m.a(h.c));
      b.setText(m.b(h.b));
      localLinearLayout1.setVisibility(0);
      localLinearLayout2.setVisibility(0);
      localLinearLayout3.setVisibility(0);
      b(2131624868).setVisibility(0);
      ((Button)b(2131624872)).setOnClickListener(new ik(this));
      ((Button)b(2131624876)).setOnClickListener(new il(this));
      ((Button)b(2131624880)).setOnClickListener(new hs(this));
      return;
    }
    localLinearLayout1.setVisibility(8);
    localLinearLayout2.setVisibility(8);
    localLinearLayout3.setVisibility(8);
    b(2131624868).setVisibility(8);
  }
  
  private void b(String[] paramArrayOfString, int paramInt)
  {
    new cv(aF()).a(2131231992).a(paramArrayOfString, paramInt, new hw(this, paramArrayOfString)).d(true).c();
  }
  
  private String f()
  {
    String str2 = c.getAbsolutePath();
    String str1 = str2;
    if (str2.endsWith("/")) {
      str1 = str2.substring(0, str2.length() - 1);
    }
    return str1;
  }
  
  private void g()
  {
    if (k != null) {
      bk.a(new if(this));
    }
  }
  
  private void h()
  {
    if (k != null) {
      bk.a(new ig(this));
    }
  }
  
  private void i()
  {
    View localView = k.a(aF()).inflate(2130903192, null);
    Object localObject1 = (TableRow)localView.findViewById(2131624663);
    CheckBox localCheckBox1 = (CheckBox)((TableRow)localObject1).findViewById(2131624665);
    CheckBox localCheckBox2 = (CheckBox)((TableRow)localObject1).findViewById(2131624666);
    localObject1 = (CheckBox)((TableRow)localObject1).findViewById(2131624667);
    if ((h.a & 0x100) != 0) {
      localCheckBox1.setChecked(true);
    }
    if ((h.a & 0x80) != 0) {
      localCheckBox2.setChecked(true);
    }
    if ((h.a & 0x40) != 0) {
      ((CheckBox)localObject1).setChecked(true);
    }
    Object localObject2 = (TableRow)localView.findViewById(2131624668);
    CheckBox localCheckBox3 = (CheckBox)((TableRow)localObject2).findViewById(2131624665);
    CheckBox localCheckBox4 = (CheckBox)((TableRow)localObject2).findViewById(2131624666);
    localObject2 = (CheckBox)((TableRow)localObject2).findViewById(2131624667);
    if ((h.a & 0x20) != 0) {
      localCheckBox3.setChecked(true);
    }
    if ((h.a & 0x10) != 0) {
      localCheckBox4.setChecked(true);
    }
    if ((h.a & 0x8) != 0) {
      ((CheckBox)localObject2).setChecked(true);
    }
    Object localObject3 = (TableRow)localView.findViewById(2131624669);
    CheckBox localCheckBox5 = (CheckBox)((TableRow)localObject3).findViewById(2131624665);
    CheckBox localCheckBox6 = (CheckBox)((TableRow)localObject3).findViewById(2131624666);
    localObject3 = (CheckBox)((TableRow)localObject3).findViewById(2131624667);
    if ((h.a & 0x4) != 0) {
      localCheckBox5.setChecked(true);
    }
    if ((h.a & 0x2) != 0) {
      localCheckBox6.setChecked(true);
    }
    if ((h.a & 0x1) != 0) {
      ((CheckBox)localObject3).setChecked(true);
    }
    CheckBox localCheckBox7 = (CheckBox)localView.findViewById(2131624672);
    CheckBox localCheckBox8 = (CheckBox)localView.findViewById(2131624674);
    CheckBox localCheckBox9 = (CheckBox)localView.findViewById(2131624676);
    if ((h.a & 0x800) != 0) {
      localCheckBox7.setChecked(true);
    }
    if ((h.a & 0x400) != 0) {
      localCheckBox8.setChecked(true);
    }
    if ((h.a & 0x200) != 0) {
      localCheckBox9.setChecked(true);
    }
    new cv(aF()).a(2131232157).a(localView).c(2131231265, new hu(this)).b(2131231270, new ht(this, (CheckBox)localObject3, localCheckBox6, localCheckBox5, (CheckBox)localObject2, localCheckBox4, localCheckBox3, (CheckBox)localObject1, localCheckBox2, localCheckBox1, localCheckBox9, localCheckBox8, localCheckBox7)).c();
  }
  
  private void j()
  {
    if (t != null) {
      bk.a(new hz(this));
    }
  }
  
  protected int a()
  {
    return 2130903225;
  }
  
  public void a(ao paramao)
  {
    if ((c.getFileType().a()) && (ap.bl(c.getAbsolutePath())))
    {
      LinkedList localLinkedList = new LinkedList();
      localLinkedList.add(c);
      t = paramao;
      if (t != null) {
        break label179;
      }
      t = new ao(localLinkedList, d.a());
    }
    label179:
    for (int i1 = 1;; i1 = 0)
    {
      g();
      t.addTaskStatusChangeListener(new hx(this));
      t.addProgressListener(new hy(this));
      if (i1 != 0)
      {
        if (ap.aY(s)) {
          t.a(false);
        }
        t.a(ao.f);
        t.execute();
      }
      do
      {
        return;
        i1 = t.getTaskStatus();
      } while ((i1 != 4) && (i1 != 5));
      j();
      h();
      return;
    }
  }
  
  public void b()
  {
    if ((t != null) && (t.getTaskStatus() != 4) && (t.getTaskStatus() != 5)) {
      t.requestStop();
    }
  }
  
  protected void c()
  {
    bd localbd = new bd(aF(), null, s);
    ci localci = new cv(aF()).a(2131231634).a(localbd.aE()).b(2131230883, new id(this, localbd)).c(2131231265, new ib(this, localbd)).a(new ia(this, localbd)).c();
    localbd.b();
    localbd.a(new ie(this, localci));
  }
  
  protected boolean d()
  {
    return (ap.bl(s)) && (new File(s).isFile());
  }
  
  public boolean e()
  {
    return v;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */