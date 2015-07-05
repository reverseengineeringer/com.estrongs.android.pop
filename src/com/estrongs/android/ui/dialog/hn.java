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
import com.estrongs.android.d.f;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.au;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.ea;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.c;
import com.estrongs.fs.d;
import com.estrongs.fs.impl.local.l;
import com.estrongs.fs.impl.local.q;
import com.estrongs.fs.m;
import com.estrongs.fs.util.j;
import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

class hn
  extends ea
{
  TextView a;
  TextView b;
  protected com.estrongs.fs.h c = null;
  String d = "";
  String e = "";
  String f = "";
  String g;
  q h;
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
  private com.estrongs.fs.b.am t;
  private TextView u = null;
  private boolean v = false;
  
  public hn(Context paramContext, com.estrongs.fs.h paramh)
  {
    this(paramContext, paramh, false);
  }
  
  public hn(Context paramContext, com.estrongs.fs.h paramh, boolean paramBoolean)
  {
    super(paramContext);
    m = paramBoolean;
    c = paramh;
    s = paramh.getAbsolutePath();
    d = m(2131427428).toString();
    e = m(2131427429).toString();
    f = m(2131427590).toString();
    if (s == null) {
      return;
    }
    if (com.estrongs.android.util.am.ba(c.getPath()))
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
        ((Button)k(2131362250)).setOnClickListener(new ho(this, paramContext));
        ((Button)k(2131362251)).setOnClickListener(new hz(this, paramContext));
        if (!paramBoolean) {
          break;
        }
        k(2131362249).setVisibility(8);
        return;
        i = false;
        break label153;
      }
      if (com.estrongs.android.util.am.ba(s)) {}
      for (;;)
      {
        try
        {
          g = ds).p;
          paramBoolean = com.estrongs.android.util.am.bW(s);
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
  
  private String a(q paramq)
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
    TextView localTextView1 = (TextView)k(2131361830);
    Object localObject3 = (ImageView)k(2131361829);
    TextView localTextView9 = (TextView)k(2131362171);
    Object localObject2 = (TextView)k(2131362173);
    TextView localTextView8 = (TextView)k(2131361840);
    TextView localTextView2 = (TextView)k(2131362262);
    TextView localTextView3 = (TextView)k(2131362176);
    TextView localTextView4 = (TextView)k(2131362265);
    TextView localTextView5 = (TextView)k(2131362269);
    TextView localTextView6 = (TextView)k(2131362272);
    TextView localTextView7 = (TextView)k(2131362275);
    q = ((TextView)k(2131362253));
    View localView = k(2131362252);
    n = ((TextView)k(2131361839));
    o = k(2131362255);
    p = ((TextView)k(2131362257));
    r = ((TextView)k(2131362254));
    a = ((TextView)k(2131362283));
    b = ((TextView)k(2131362287));
    if (f.a(c))
    {
      ((ImageView)localObject3).setImageDrawable(f.e(c));
      k = ((ProgressBar)k(2131362126));
      localObject3 = (TableRow)k(2131362258);
      if ((!c.getFileType().a()) || (paramBoolean) || (!com.estrongs.android.util.am.ba(c.getAbsolutePath()))) {
        ((TableRow)localObject3).setVisibility(8);
      }
      if (!paramBoolean) {
        break label556;
      }
      b(false);
      if (!com.estrongs.android.util.am.aV(s)) {
        break label507;
      }
      localTextView1.setText(com.estrongs.android.util.am.a(true, s));
    }
    for (;;)
    {
      try
      {
        localTextView9.setText(com.estrongs.fs.impl.c.a.a(ar(), s));
        ((TextView)localObject2).setText(com.estrongs.android.util.am.bL(s));
        if (!com.estrongs.android.util.am.aw(s)) {
          break label537;
        }
        if (com.estrongs.android.util.am.av(s))
        {
          localTextView8.setVisibility(0);
          localTextView8.setText(m(2131427920));
          n.setVisibility(0);
        }
        o.setVisibility(8);
        localTextView2.setText(2131428708);
        localTextView3.setText(2131428708);
        localTextView4.setText(2131428708);
        localTextView5.setText(2131428708);
        localTextView6.setText(2131428708);
        localTextView7.setText(2131428708);
        q.setText(2131427581);
        return;
        ((ImageView)localObject3).setImageDrawable(f.d(c));
      }
      catch (FileSystemException localFileSystemException)
      {
        localFileSystemException.printStackTrace();
        continue;
      }
      label507:
      localFileSystemException.setText(ad.a(ar()).h(s));
      localTextView9.setText(2131427419);
      continue;
      label537:
      localTextView8.setVisibility(8);
      n.setVisibility(8);
    }
    label556:
    ((Button)k(2131362259)).setOnClickListener(new ie(this));
    localObject3 = (TableRow)k(2131362267);
    TableRow localTableRow1 = (TableRow)k(2131362270);
    TableRow localTableRow2 = (TableRow)k(2131362273);
    u = ((TextView)k(2131362279));
    int i1;
    label842:
    Object localObject1;
    if (((l.a(ar(), false)) && (com.estrongs.android.util.am.ba(s)) && (!com.estrongs.android.util.am.bl(s))) || ((com.estrongs.android.util.am.I(s)) && (g != null)))
    {
      g = "asdfghjklmnop";
      ((TableRow)localObject3).setVisibility(8);
      localTableRow1.setVisibility(8);
      localTableRow2.setVisibility(8);
      k(2131362266).setVisibility(8);
      h = l.f(f());
      g = a(h);
      b(true);
      u.setText(g.substring(0, 3) + " " + g.substring(3, 6) + " " + g.substring(6, 9));
      localFileSystemException.setText(c.getName());
      if (!c.getFileType().a()) {
        break label1532;
      }
      i1 = 2131427427;
      localTextView9.setText(i1);
      if (!com.estrongs.android.util.am.t(s)) {
        break label1539;
      }
      localObject1 = s;
      label864:
      if ((com.estrongs.android.util.am.bW(s)) || (m)) {
        break label1554;
      }
      ((TextView)localObject2).setText(Html.fromHtml("<a href=\"ss\">" + (String)localObject1 + "</a>"));
      ((TextView)localObject2).setClickable(true);
      ((TextView)localObject2).setOnClickListener(new if(this));
      label935:
      localTextView8.setVisibility(0);
      localTextView8.setText(m(2131427580));
      n.setVisibility(0);
      if (!com.estrongs.android.util.am.ba(s)) {
        break label1564;
      }
      o.setVisibility(0);
      label979:
      localObject2 = ad.a(ar()).F();
      if (!FileExplorerActivity.G) {
        break label1576;
      }
      localObject1 = new SimpleDateFormat(" HH:mm:ss");
      label1009:
      if (c.createdTime() <= 0L) {
        break label1591;
      }
      localTextView2.setText(((DateFormat)localObject2).format(new Date(c.createdTime())) + ((SimpleDateFormat)localObject1).format(new Date(c.lastModified())));
      label1086:
      if (c.lastModified() <= 0L) {
        break label1602;
      }
      localTextView3.setText(((DateFormat)localObject2).format(new Date(c.lastModified())) + ((SimpleDateFormat)localObject1).format(new Date(c.lastModified())));
      label1163:
      if (c.lastModified() <= 0L) {
        break label1613;
      }
      localTextView4.setText(((DateFormat)localObject2).format(new Date(c.lastModified())) + ((SimpleDateFormat)localObject1).format(new Date(c.lastModified())));
      label1240:
      if (!c.hasPermission(0)) {
        break label1624;
      }
      i1 = 2131427341;
      label1257:
      localTextView5.setText(i1);
      if (!c.hasPermission(0)) {
        break label1631;
      }
      i1 = 2131427341;
      label1280:
      localTextView6.setText(i1);
      localTextView7.setText(2131427342);
      if (!c.getFileType().a()) {
        break label1638;
      }
      q.setText(2131427581);
    }
    for (;;)
    {
      if ((com.estrongs.android.util.am.ba(c.getAbsolutePath())) && (bc.b(c)))
      {
        k(2131362263).setVisibility(0);
        n(2131362264).setText(2131427911);
        n(2131362265).setText(com.estrongs.android.ui.d.a.a(ar(), c));
      }
      localObject1 = (LinearLayout)k(2131362290);
      if (!d()) {
        break label1735;
      }
      ((LinearLayout)localObject1).setVisibility(0);
      k(2131362289).setVisibility(0);
      ((Button)((LinearLayout)localObject1).findViewById(2131362292)).setOnClickListener(new ig(this));
      return;
      ((TableRow)localObject3).setVisibility(0);
      localTableRow1.setVisibility(0);
      localTableRow2.setVisibility(0);
      k(2131362266).setVisibility(0);
      b(false);
      if (!com.estrongs.android.util.am.aO(c.getPath())) {
        break;
      }
      ((TableRow)localObject3).setVisibility(8);
      localTableRow1.setVisibility(8);
      localTableRow2.setVisibility(8);
      k(2131362266).setVisibility(8);
      break;
      label1532:
      i1 = 2131427426;
      break label842;
      label1539:
      localObject1 = com.estrongs.android.util.am.bk(com.estrongs.android.util.am.bL(s));
      break label864;
      label1554:
      ((TextView)localObject2).setText((CharSequence)localObject1);
      break label935;
      label1564:
      o.setVisibility(8);
      break label979;
      label1576:
      localObject1 = new SimpleDateFormat(" hh:mm:ss a");
      break label1009;
      label1591:
      localTextView2.setText(2131428708);
      break label1086;
      label1602:
      localTextView3.setText(2131428708);
      break label1163;
      label1613:
      localTextView4.setText(2131428708);
      break label1240;
      label1624:
      i1 = 2131427342;
      break label1257;
      label1631:
      i1 = 2131427342;
      break label1280;
      label1638:
      localView.setVisibility(8);
      long l1 = c.length();
      if (l1 < 0L)
      {
        n.setText(2131428708);
        if (com.estrongs.android.util.am.ba(s)) {
          p.setText(2131428708);
        }
      }
      else
      {
        a(n, l1);
        if (com.estrongs.android.util.am.ba(s)) {
          a(p, j.b(l1, j.l(s)));
        }
      }
    }
    label1735:
    ((LinearLayout)localObject1).setVisibility(8);
    k(2131362289).setVisibility(8);
  }
  
  private void a(String[] paramArrayOfString, int paramInt)
  {
    new ct(ar()).a(2131428331).a(paramArrayOfString, paramInt, new hs(this, paramArrayOfString)).d(true).c();
  }
  
  private void b(boolean paramBoolean)
  {
    LinearLayout localLinearLayout1 = (LinearLayout)k(2131362277);
    LinearLayout localLinearLayout2 = (LinearLayout)k(2131362281);
    LinearLayout localLinearLayout3 = (LinearLayout)k(2131362285);
    if (paramBoolean)
    {
      a.setText(l.a(h.c));
      b.setText(l.b(h.b));
      localLinearLayout1.setVisibility(0);
      localLinearLayout2.setVisibility(0);
      localLinearLayout3.setVisibility(0);
      k(2131362276).setVisibility(0);
      ((Button)k(2131362280)).setOnClickListener(new ih(this));
      ((Button)k(2131362284)).setOnClickListener(new ii(this));
      ((Button)k(2131362288)).setOnClickListener(new hp(this));
      return;
    }
    localLinearLayout1.setVisibility(8);
    localLinearLayout2.setVisibility(8);
    localLinearLayout3.setVisibility(8);
    k(2131362276).setVisibility(8);
  }
  
  private void b(String[] paramArrayOfString, int paramInt)
  {
    new ct(ar()).a(2131427572).a(paramArrayOfString, paramInt, new ht(this, paramArrayOfString)).d(true).c();
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
      bd.a(new ic(this));
    }
  }
  
  private void h()
  {
    if (k != null) {
      bd.a(new id(this));
    }
  }
  
  private void i()
  {
    View localView = g.a(ar()).inflate(2130903104, null);
    Object localObject1 = (TableRow)localView.findViewById(2131362099);
    CheckBox localCheckBox1 = (CheckBox)((TableRow)localObject1).findViewById(2131362101);
    CheckBox localCheckBox2 = (CheckBox)((TableRow)localObject1).findViewById(2131362102);
    localObject1 = (CheckBox)((TableRow)localObject1).findViewById(2131362103);
    if ((h.a & 0x100) != 0) {
      localCheckBox1.setChecked(true);
    }
    if ((h.a & 0x80) != 0) {
      localCheckBox2.setChecked(true);
    }
    if ((h.a & 0x40) != 0) {
      ((CheckBox)localObject1).setChecked(true);
    }
    Object localObject2 = (TableRow)localView.findViewById(2131362104);
    CheckBox localCheckBox3 = (CheckBox)((TableRow)localObject2).findViewById(2131362101);
    CheckBox localCheckBox4 = (CheckBox)((TableRow)localObject2).findViewById(2131362102);
    localObject2 = (CheckBox)((TableRow)localObject2).findViewById(2131362103);
    if ((h.a & 0x20) != 0) {
      localCheckBox3.setChecked(true);
    }
    if ((h.a & 0x10) != 0) {
      localCheckBox4.setChecked(true);
    }
    if ((h.a & 0x8) != 0) {
      ((CheckBox)localObject2).setChecked(true);
    }
    Object localObject3 = (TableRow)localView.findViewById(2131362105);
    CheckBox localCheckBox5 = (CheckBox)((TableRow)localObject3).findViewById(2131362101);
    CheckBox localCheckBox6 = (CheckBox)((TableRow)localObject3).findViewById(2131362102);
    localObject3 = (CheckBox)((TableRow)localObject3).findViewById(2131362103);
    if ((h.a & 0x4) != 0) {
      localCheckBox5.setChecked(true);
    }
    if ((h.a & 0x2) != 0) {
      localCheckBox6.setChecked(true);
    }
    if ((h.a & 0x1) != 0) {
      ((CheckBox)localObject3).setChecked(true);
    }
    CheckBox localCheckBox7 = (CheckBox)localView.findViewById(2131362108);
    CheckBox localCheckBox8 = (CheckBox)localView.findViewById(2131362110);
    CheckBox localCheckBox9 = (CheckBox)localView.findViewById(2131362112);
    if ((h.a & 0x800) != 0) {
      localCheckBox7.setChecked(true);
    }
    if ((h.a & 0x400) != 0) {
      localCheckBox8.setChecked(true);
    }
    if ((h.a & 0x200) != 0) {
      localCheckBox9.setChecked(true);
    }
    new ct(ar()).a(2131428068).a(localView).c(2131427340, new hr(this)).b(2131427339, new hq(this, (CheckBox)localObject3, localCheckBox6, localCheckBox5, (CheckBox)localObject2, localCheckBox4, localCheckBox3, (CheckBox)localObject1, localCheckBox2, localCheckBox1, localCheckBox9, localCheckBox8, localCheckBox7)).c();
  }
  
  private void j()
  {
    if (t != null) {
      bd.a(new hw(this));
    }
  }
  
  protected int a()
  {
    return 2130903126;
  }
  
  public void a(com.estrongs.fs.b.am paramam)
  {
    if ((c.getFileType().a()) && (com.estrongs.android.util.am.ba(c.getAbsolutePath())))
    {
      LinkedList localLinkedList = new LinkedList();
      localLinkedList.add(c);
      t = paramam;
      if (t != null) {
        break label179;
      }
      t = new com.estrongs.fs.b.am(localLinkedList, d.a());
    }
    label179:
    for (int i1 = 1;; i1 = 0)
    {
      g();
      t.addTaskStatusChangeListener(new hu(this));
      t.addProgressListener(new hv(this));
      if (i1 != 0)
      {
        if (com.estrongs.android.util.am.aO(s)) {
          t.a(false);
        }
        t.a(com.estrongs.fs.b.am.f);
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
    au localau = new au(ar(), null, s);
    cg localcg = new ct(ar()).a(2131427957).a(localau.aq()).b(2131427345, new ia(this, localau)).c(2131427340, new hy(this, localau)).a(new hx(this, localau)).c();
    localau.b();
    localau.a(new ib(this, localcg));
  }
  
  protected boolean d()
  {
    return (com.estrongs.android.util.am.ba(s)) && (new File(s).isFile());
  }
  
  public boolean e()
  {
    return v;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */