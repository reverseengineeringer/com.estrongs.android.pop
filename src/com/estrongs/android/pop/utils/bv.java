package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.AppCompatCheckBox;
import android.view.View;
import android.widget.TextView;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.d.a;
import com.estrongs.android.pop.m;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.dialog.jh;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import com.estrongs.fs.w;
import java.text.MessageFormat;
import java.util.Iterator;
import java.util.List;

class bv
{
  ao a = null;
  String b = null;
  
  private int a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, int paramInt, boolean paramBoolean5)
  {
    int i = 2131232002;
    if (paramInt == 0)
    {
      if (paramBoolean1) {
        if ((paramBoolean2) && (paramBoolean5)) {
          paramInt = 2131230878;
        }
      }
      do
      {
        do
        {
          return paramInt;
          if (paramBoolean3) {
            break;
          }
          paramInt = i;
        } while (paramBoolean4);
        return 2131230845;
        return 2131230845;
        paramInt = i;
      } while (paramBoolean4);
      return 2131230845;
    }
    return paramInt;
  }
  
  private String a(a parama, List<h> paramList, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, h paramh, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7, boolean paramBoolean8)
  {
    if (!paramBoolean1) {
      if (paramBoolean5) {
        if ((!paramBoolean3) || (!paramBoolean8)) {
          if (!paramBoolean6) {
            paramList = MessageFormat.format(parama.getString(2131231312), new Object[] { paramh.getName() }) + "\n\n" + parama.getString(2131232218) + j.c(paramh.length());
          }
        }
      }
    }
    for (;;)
    {
      paramh = paramList;
      if (paramBoolean7) {
        paramh = paramList + parama.getString(2131231752);
      }
      return paramh;
      paramList = MessageFormat.format(parama.getString(2131231749), new Object[] { paramh.getName() });
      continue;
      if (!paramBoolean6)
      {
        paramList = MessageFormat.format(parama.getString(2131232254), new Object[] { paramh.getName() }) + "\n\n" + parama.getString(2131232218) + j.c(paramh.length());
      }
      else
      {
        paramList = MessageFormat.format(parama.getString(2131232257), new Object[] { paramh.getName() });
        continue;
        if ((!paramBoolean3) || (!paramBoolean8))
        {
          paramList = MessageFormat.format(parama.getString(2131231750), new Object[] { paramh.getName(), Integer.valueOf(paramList.size()) });
        }
        else
        {
          paramList = MessageFormat.format(parama.getString(2131231779), new Object[] { paramh.getName(), Integer.valueOf(paramList.size()) });
          continue;
          if (ap.aV(paramh.getPath())) {
            paramList = ((Context)parama).getString(2131232001);
          } else if (paramBoolean4)
          {
            if (paramBoolean5) {
              paramList = MessageFormat.format(parama.getString(2131231312), new Object[] { paramh.getName() });
            } else {
              paramList = MessageFormat.format(parama.getString(2131231750), new Object[] { paramh.getName(), Integer.valueOf(paramList.size()) });
            }
          }
          else if (paramBoolean5)
          {
            if (!paramBoolean6) {
              paramList = MessageFormat.format(parama.getString(2131231312), new Object[] { paramh.getName() });
            } else {
              paramList = MessageFormat.format(parama.getString(2131231749), new Object[] { paramh.getName() });
            }
          }
          else {
            paramList = MessageFormat.format(parama.getString(2131231750), new Object[] { paramh.getName(), Integer.valueOf(paramList.size()) });
          }
        }
      }
    }
  }
  
  private void a(Activity paramActivity, List<h> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (h)paramList.next();
      if (ap.aE(((h)localObject).getPath()))
      {
        if (u.a().b())
        {
          u localu = u.a();
          if (localu != null)
          {
            localu.a(0);
            localu.a(null);
          }
          ad.a(paramActivity).h(null, null);
          localObject = (com.estrongs.fs.impl.r.b)localObject;
          ((com.estrongs.fs.impl.r.b)localObject).setPath("SP://:@pcs");
          ((com.estrongs.fs.impl.r.b)localObject).setAbsolutePath("SP://:@pcs");
          ((com.estrongs.fs.impl.r.b)localObject).setDisplayName(FexApplication.a().getString(2131231137));
        }
      }
      else {
        ad.a(paramActivity).c(((h)localObject).getAbsolutePath());
      }
    }
  }
  
  private void a(a parama, List<h> paramList, boolean paramBoolean1, boolean paramBoolean2, p paramp)
  {
    a(parama, paramList, paramBoolean1, paramBoolean2, paramp, false, false, true);
  }
  
  private void a(a parama, List<h> paramList, boolean paramBoolean1, boolean paramBoolean2, p paramp, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5)
  {
    ab localab = new ab(d.a(parama.n()), paramList, paramBoolean1, paramBoolean2);
    localab.setTaskDecisionListener(new m(parama.G()));
    if (!paramBoolean2) {}
    for (int i = 2131231317;; i = 2131231318)
    {
      localab.setDescription(parama.getString(i));
      localab.addTaskStatusChangeListener(paramp);
      localab.a(paramBoolean4);
      paramp = ad.a(parama.n()).A();
      paramList = ((h)paramList.get(0)).getAbsolutePath();
      if (paramList != null) {
        break;
      }
      return;
    }
    if (paramList.startsWith(paramp)) {}
    for (paramBoolean1 = true;; paramBoolean1 = false)
    {
      localab.addPostListener(new ch(this, paramBoolean1));
      new jh(parama.G(), parama.getString(2131231317), localab, paramBoolean5, false, paramBoolean3).show();
      localab.execute();
      return;
    }
  }
  
  public boolean a(a parama, List<h> paramList, com.estrongs.android.view.cr paramcr, p paramp)
  {
    return a(parama, paramList, paramcr, paramp, null);
  }
  
  public boolean a(a parama, List<h> paramList, com.estrongs.android.view.cr paramcr, p paramp, ck paramck)
  {
    return a(parama, paramList, paramcr, paramp, paramck, 0, null, false);
  }
  
  public boolean a(a parama, List<h> paramList, com.estrongs.android.view.cr paramcr, p paramp, ck paramck, int paramInt, String paramString, boolean paramBoolean)
  {
    if (paramList.size() == 0) {
      return false;
    }
    Activity localActivity = parama.G();
    boolean bool8 = paramList.contains(com.estrongs.fs.impl.pcs.b.a());
    if ((bool8) && (paramList.size() == 1))
    {
      new cv(localActivity).a(2131230845).b(2131231751).a(2131231270, new bw(this)).c();
      return true;
    }
    Object localObject1;
    Object localObject2;
    boolean bool9;
    boolean bool6;
    boolean bool2;
    int i;
    int j;
    if (paramcr != null)
    {
      localObject1 = paramcr.c();
      localObject2 = paramp;
      if (paramp == null) {
        localObject2 = new bx(this, paramcr, parama, paramList, (String)localObject1, localActivity);
      }
      bool9 = ap.bm((String)localObject1);
      bool6 = ad.a(localActivity).aE();
      bool2 = false;
      i = 0;
      j = 0;
      if (!bool9) {
        break label645;
      }
      paramBoolean = false;
      i = 0;
    }
    for (;;)
    {
      label158:
      paramcr = new ci(localActivity);
      paramcr.setContentView(2130903169);
      TextView localTextView1 = (TextView)paramcr.findViewById(2131624200);
      paramp = (TextView)paramcr.findViewById(2131624612);
      View localView = paramcr.findViewById(2131624613);
      TextView localTextView2 = (TextView)paramcr.findViewById(2131624614);
      AppCompatCheckBox localAppCompatCheckBox = (AppCompatCheckBox)paramcr.findViewById(2131624615);
      boolean bool3;
      label251:
      boolean bool7;
      boolean bool5;
      boolean bool4;
      if ((bool9) && (ap.br((String)localObject1)))
      {
        bool2 = true;
        bool3 = true;
        bool7 = true;
        bool5 = false;
        if (paramString == null) {
          break label739;
        }
        b = paramString;
        bool4 = false;
        localAppCompatCheckBox.setOnCheckedChangeListener(new bz(this, bool6, paramBoolean, bool2, bool5, paramInt, paramcr, paramString, paramList, parama, bool9, bool8, localTextView1));
        paramcr.setTitle(a(bool6, paramBoolean, bool2, bool5, paramInt, localAppCompatCheckBox.isChecked()));
        localTextView1.setText(b);
        if (bool6)
        {
          if (bool9) {
            break label945;
          }
          if (paramBoolean) {
            break label936;
          }
          if (i != cr.d) {
            break label872;
          }
          paramInt = 2131231314;
        }
      }
      for (;;)
      {
        label365:
        localTextView2.setText(localActivity.getString(paramInt));
        localView.setVisibility(0);
        localAppCompatCheckBox.setVisibility(8);
        label390:
        paramcr.setConfirmButton(localActivity.getString(2131231270), new ca(this, bool8, paramList, paramck, parama, bool3, localActivity, paramBoolean, localAppCompatCheckBox, bool4, (p)localObject2));
        paramcr.setCancelButton(localActivity.getString(2131231265), new cb(this));
        paramcr.setOnDismissListener(new cc(this, localActivity));
        if (bool4)
        {
          parama = new StringBuilder();
          parama.append(localActivity.getString(2131232206)).append(0).append(" ").append(localActivity.getString(2131231132)).append(", ").append(localActivity.getString(2131232218)).append(0).append("\n");
          paramp.setText(parama.toString());
          paramp.setVisibility(0);
          paramcr.show();
          a = new ao(paramList, d.a(localActivity));
          a.addTaskStatusChangeListener(new cd(this, parama, localActivity, paramp));
          a.addProgressListener(new cf(this, parama, localActivity, paramp));
          a.execute();
        }
        for (;;)
        {
          return true;
          localObject1 = ap.bB(((h)paramList.get(0)).getPath());
          break;
          label645:
          if ((ap.cg((String)localObject1)) || (paramBoolean))
          {
            paramBoolean = false;
            i = 0;
            break label158;
          }
          if (!bool6) {
            break label999;
          }
          paramcr = paramList.iterator();
          i = j;
          do
          {
            if (!paramcr.hasNext()) {
              break;
            }
            j = cr.a(((h)paramcr.next()).getAbsolutePath());
            i = j;
          } while (j == cr.c);
          paramBoolean = false;
          i = j;
          break label158;
          bool3 = false;
          break label251;
          label739:
          localObject1 = (h)paramList.get(0);
          label764:
          boolean bool10;
          boolean bool1;
          if (paramList.size() == 1)
          {
            bool4 = true;
            bool10 = ((h)localObject1).getFileType().a();
            if (!bool9) {
              break label848;
            }
            bool1 = false;
          }
          for (;;)
          {
            b = a(parama, paramList, bool9, bool6, paramBoolean, bool2, (h)localObject1, bool4, bool10, bool8, localAppCompatCheckBox.isChecked());
            bool4 = bool1;
            if (!ap.aV(((h)localObject1).getPath())) {
              break;
            }
            bool5 = true;
            bool4 = bool1;
            break;
            bool4 = false;
            break label764;
            label848:
            bool1 = bool7;
            if (bool4)
            {
              bool1 = bool7;
              if (!bool10) {
                bool1 = false;
              }
            }
          }
          label872:
          if (i == cr.e)
          {
            paramInt = 2131231458;
            break label365;
          }
          if (i == cr.f)
          {
            paramInt = 2131232499;
            break label365;
          }
          if (i == cr.g)
          {
            paramInt = 2131231451;
            break label365;
          }
          if (i != cr.h) {
            break label991;
          }
          paramInt = 2131231451;
          break label365;
          label936:
          localAppCompatCheckBox.setVisibility(0);
          break label390;
          label945:
          if ((bool2) || (localView == null)) {
            break label390;
          }
          localTextView2.setText(localActivity.getString(2131231315));
          localView.setVisibility(0);
          break label390;
          paramp.setVisibility(8);
          paramcr.show();
        }
        label991:
        paramInt = 2131231313;
      }
      label999:
      paramBoolean = bool6;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */