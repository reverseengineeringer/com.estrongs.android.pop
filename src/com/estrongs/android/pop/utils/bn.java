package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.dialog.ix;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.view.aw;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import java.text.MessageFormat;
import java.util.Iterator;
import java.util.List;

class bn
{
  com.estrongs.fs.b.am a = null;
  String b = null;
  
  private String a(ESActivity paramESActivity, List<h> paramList, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, h paramh, boolean paramBoolean5, boolean paramBoolean6)
  {
    if (!paramBoolean1)
    {
      if (paramBoolean5)
      {
        if (!paramBoolean3)
        {
          if (!paramBoolean6) {
            return MessageFormat.format(paramESActivity.getString(2131427770), new Object[] { paramh.getName() }) + "\n\n" + paramESActivity.getString(2131427580) + j.c(paramh.length());
          }
          return MessageFormat.format(paramESActivity.getString(2131427926), new Object[] { paramh.getName() });
        }
        if (!paramBoolean6) {
          return MessageFormat.format(paramESActivity.getString(2131428419), new Object[] { paramh.getName() }) + "\n\n" + paramESActivity.getString(2131427580) + j.c(paramh.length());
        }
        return MessageFormat.format(paramESActivity.getString(2131428420), new Object[] { paramh.getName() });
      }
      if (!paramBoolean3) {
        return MessageFormat.format(paramESActivity.getString(2131427927), new Object[] { paramh.getName(), Integer.valueOf(paramList.size()) });
      }
      return MessageFormat.format(paramESActivity.getString(2131428421), new Object[] { paramh.getName(), Integer.valueOf(paramList.size()) });
    }
    if (com.estrongs.android.util.am.aL(paramh.getPath())) {
      return paramESActivity.getString(2131428205);
    }
    if (paramBoolean4)
    {
      if (paramBoolean5) {
        return MessageFormat.format(paramESActivity.getString(2131427770), new Object[] { paramh.getName() });
      }
      return MessageFormat.format(paramESActivity.getString(2131427927), new Object[] { paramh.getName(), Integer.valueOf(paramList.size()) });
    }
    if (paramBoolean5)
    {
      if (!paramBoolean6) {
        return MessageFormat.format(paramESActivity.getString(2131427770), new Object[] { paramh.getName() });
      }
      return MessageFormat.format(paramESActivity.getString(2131427926), new Object[] { paramh.getName() });
    }
    return MessageFormat.format(paramESActivity.getString(2131427927), new Object[] { paramh.getName(), Integer.valueOf(paramList.size()) });
  }
  
  private void a(Activity paramActivity, List<h> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (h)paramList.next();
      if (com.estrongs.android.util.am.au(((h)localObject).getPath()))
      {
        if (r.a().b())
        {
          r localr = r.a();
          if (localr != null)
          {
            localr.a(0);
            localr.a(null);
          }
          ad.a(paramActivity).h(null, null);
          localObject = (com.estrongs.fs.impl.m.b)localObject;
          ((com.estrongs.fs.impl.m.b)localObject).setPath("SP://:@pcs");
          ((com.estrongs.fs.impl.m.b)localObject).setAbsolutePath("SP://:@pcs");
          ((com.estrongs.fs.impl.m.b)localObject).setDisplayName(FexApplication.a().getString(2131428551));
        }
      }
      else {
        ad.a(paramActivity).c(((h)localObject).getAbsolutePath());
      }
    }
  }
  
  private void a(ESActivity paramESActivity, List<h> paramList, boolean paramBoolean1, boolean paramBoolean2, p paramp)
  {
    a(paramESActivity, paramList, paramBoolean1, paramBoolean2, paramp, false, false, true);
  }
  
  private void a(ESActivity paramESActivity, List<h> paramList, boolean paramBoolean1, boolean paramBoolean2, p paramp, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5)
  {
    ab localab = new ab(d.a(paramESActivity), paramList, paramBoolean1, paramBoolean2);
    localab.setTaskDecisionListener(new com.estrongs.android.pop.m(paramESActivity));
    if (!paramBoolean2) {}
    for (int i = 2131428033;; i = 2131428415)
    {
      localab.setDescription(paramESActivity.getString(i));
      localab.addTaskStatusChangeListener(paramp);
      localab.a(paramBoolean4);
      paramp = ad.a(paramESActivity).z();
      paramList = ((h)paramList.get(0)).getAbsolutePath();
      if (paramList != null) {
        break;
      }
      return;
    }
    if (paramList.startsWith(paramp)) {}
    for (paramBoolean1 = true;; paramBoolean1 = false)
    {
      localab.addPostListener(new by(this, paramBoolean1));
      new ix(paramESActivity, paramESActivity.getString(2131428033), localab, paramBoolean5, false, paramBoolean3).show();
      localab.execute();
      return;
    }
  }
  
  public boolean a(ESActivity paramESActivity, List<h> paramList, aw paramaw, p paramp)
  {
    return a(paramESActivity, paramList, paramaw, paramp, null);
  }
  
  public boolean a(ESActivity paramESActivity, List<h> paramList, aw paramaw, p paramp, cb paramcb)
  {
    return a(paramESActivity, paramList, paramaw, paramp, paramcb, 0, null, false);
  }
  
  public boolean a(ESActivity paramESActivity, List<h> paramList, aw paramaw, p paramp, cb paramcb, int paramInt, String paramString, boolean paramBoolean)
  {
    if (paramList.size() == 0) {
      return false;
    }
    boolean bool6 = paramList.contains(com.estrongs.fs.impl.pcs.b.a());
    if ((bool6) && (paramList.size() == 1))
    {
      new ct(paramESActivity).a(2131427347).b(2131428630).a(2131427339, new bo(this)).c();
      return true;
    }
    Object localObject1;
    if (paramaw != null)
    {
      localObject1 = paramaw.c();
      if (paramp != null) {
        break label1004;
      }
      paramp = new bp(this, paramaw, paramESActivity, paramList, (String)localObject1);
    }
    label143:
    label162:
    label290:
    label307:
    label559:
    label677:
    label698:
    label706:
    label731:
    label833:
    label849:
    label913:
    label963:
    label993:
    label1004:
    for (;;)
    {
      boolean bool7 = com.estrongs.android.util.am.bb((String)localObject1);
      boolean bool5 = ad.a(paramESActivity).aD();
      boolean bool2 = false;
      int i = 0;
      int j = 0;
      if (bool7)
      {
        j = 0;
        paramBoolean = false;
      }
      for (;;)
      {
        boolean bool3;
        if ((bool7) && (com.estrongs.android.util.am.bg((String)localObject1)))
        {
          bool2 = true;
          bool3 = true;
          i = paramInt;
          if (paramInt == 0)
          {
            if (!bool5) {
              break label698;
            }
            if (!paramBoolean) {
              break label677;
            }
            i = 2131428403;
          }
        }
        boolean bool1;
        Object localObject2;
        for (;;)
        {
          if (paramString == null) {
            break label706;
          }
          b = paramString;
          bool1 = false;
          localObject1 = (DeleteMessageContainer)g.a(paramESActivity).inflate(2130903094, null);
          paramString = (TextView)((DeleteMessageContainer)localObject1).findViewById(16908299);
          if (bool5)
          {
            if (bool7) {
              break label913;
            }
            localObject2 = ((DeleteMessageContainer)localObject1).findViewById(2131362067);
            if (localObject2 != null)
            {
              TextView localTextView = (TextView)((View)localObject2).findViewById(2131362068);
              if (!paramBoolean)
              {
                paramInt = 2131428410;
                if (j != ci.d) {
                  break label849;
                }
                paramInt = 2131428411;
                localTextView.setText(paramESActivity.getString(paramInt));
                ((View)localObject2).setVisibility(0);
              }
            }
          }
          paramp = new ct(paramESActivity).a(i).b(2131427339, new bs(this, bool6, paramList, paramcb, paramaw, paramESActivity, bool3, bool1, paramBoolean, paramp)).c(2131427340, new br(this)).b();
          paramp.setOnDismissListener(new bt(this, paramESActivity));
          if (!bool1) {
            break label963;
          }
          paramaw = new StringBuilder(256);
          paramaw.append(b).append("\n\n").append(paramESActivity.getString(2131427581)).append(0).append(" ").append(paramESActivity.getString(2131427428)).append(", ").append(paramESActivity.getString(2131427580)).append(0).append("\n");
          paramString.setText(paramaw.toString());
          paramp.setContentView((View)localObject1);
          paramp.show();
          paramp = b;
          a = new com.estrongs.fs.b.am(paramList, d.a(paramESActivity));
          a.addTaskStatusChangeListener(new bu(this, paramaw, paramp, paramESActivity, paramString));
          a.addProgressListener(new bw(this, paramaw, paramp, paramESActivity, paramString));
          a.execute();
          return true;
          localObject1 = com.estrongs.android.util.am.bk(((h)paramList.get(0)).getPath());
          break;
          if ((com.estrongs.android.util.am.bP((String)localObject1)) || (paramBoolean))
          {
            j = 0;
            paramBoolean = false;
            break label143;
          }
          if (!bool5) {
            break label993;
          }
          localObject2 = paramList.iterator();
          i = j;
          do
          {
            if (!((Iterator)localObject2).hasNext()) {
              break;
            }
            j = ci.a(((h)((Iterator)localObject2).next()).getAbsolutePath());
            i = j;
          } while (j == ci.c);
          paramBoolean = false;
          break label143;
          bool3 = false;
          break label162;
          if (!bool7)
          {
            i = 2131427347;
          }
          else
          {
            i = 2131427347;
            continue;
            i = 2131427347;
          }
        }
        paramString = (h)paramList.get(0);
        boolean bool4;
        boolean bool8;
        if (paramList.size() == 1)
        {
          bool4 = true;
          bool8 = paramString.getFileType().a();
          if (!bool7) {
            break label833;
          }
          bool1 = false;
        }
        for (;;)
        {
          b = a(paramESActivity, paramList, bool7, bool5, paramBoolean, bool2, paramString, bool4, bool8);
          if ((!com.estrongs.android.util.am.aL(paramString.getPath())) || (bool6)) {
            b += paramESActivity.getString(2131428631);
          }
          break;
          bool4 = false;
          break label731;
          if ((bool4) && (!bool8))
          {
            bool1 = false;
            continue;
            if (j == ci.e)
            {
              paramInt = 2131428412;
              break label290;
            }
            if (j == ci.f)
            {
              paramInt = 2131428413;
              break label290;
            }
            if (j == ci.g)
            {
              paramInt = 2131428414;
              break label290;
            }
            if (j != ci.h) {
              break label290;
            }
            paramInt = 2131428414;
            break label290;
            if (bool2) {
              break label307;
            }
            localObject2 = ((DeleteMessageContainer)localObject1).findViewById(2131362067);
            if (localObject2 == null) {
              break label307;
            }
            ((View)localObject2).setVisibility(0);
            ((TextView)((View)localObject2).findViewById(2131362068)).setText(paramESActivity.getString(2131428416));
            break label307;
            paramString.setText(b);
            paramp.setContentView((View)localObject1);
            paramp.show();
            break label559;
          }
          bool1 = true;
        }
        paramBoolean = bool5;
        j = i;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */