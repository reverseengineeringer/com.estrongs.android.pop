package com.estrongs.android.pop.app.analysis;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.aj;
import android.support.v4.app.az;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MenuItem;
import com.estrongs.android.b.a.a.b;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.analysis.b.ac;
import com.estrongs.android.pop.app.analysis.b.ad;
import com.estrongs.android.pop.app.analysis.b.ag;
import com.estrongs.android.pop.app.analysis.b.h;
import com.estrongs.android.pop.app.analysis.b.k;
import com.estrongs.android.pop.app.analysis.b.o;
import com.estrongs.android.pop.app.analysis.b.q;
import com.estrongs.android.pop.app.analysis.b.v;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import java.util.List;

public class AnalysisResultDetailActivity
  extends HomeAsBackActivity
{
  private h a;
  
  public static void a(Activity paramActivity, com.estrongs.android.b.a.a parama)
  {
    if (parama == null) {
      return;
    }
    for (;;)
    {
      String str5;
      try
      {
        c localc = ((FileExplorerActivity)paramActivity).at();
        str1 = parama.m();
        str5 = parama.l();
        str2 = parama.j();
        String str3 = parama.o();
        String str4 = parama.p();
        l.a("key =" + str1 + ", type = " + str5 + ",path = " + str2 + " , title = " + str3);
        if ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str5))) {
          break;
        }
        if ((str1.equals("duplicate")) || (str1.equals("redundancy")) || (str1.equals("similar_image")))
        {
          if (localc != null) {}
          try
          {
            if (!str1.equals("duplicate")) {
              continue;
            }
            localc.a("Analysis_duplicate");
            i = 1;
          }
          catch (Exception parama)
          {
            parama.printStackTrace();
            i = 1;
            continue;
          }
          parama = new Intent(paramActivity, AnalysisResultDetailActivity.class);
          parama.putExtra("analysis_result_page_type", i);
          parama.putExtra("analysis_result_card_key", str1);
          parama.putExtra("analysis_result_card_path", str2);
          parama.putExtra("analysis_result_card_title", str3);
          parama.putExtra("analysis_result_card_packagename", str4);
          paramActivity.startActivityForResult(parama, 4135);
          return;
        }
      }
      catch (Exception localException)
      {
        String str1;
        String str2;
        localException.printStackTrace();
        Object localObject = null;
        continue;
        if (!str1.equals("redundancy")) {
          continue;
        }
        ((c)localObject).a("Analysis_redundancy");
        continue;
        if (str1.equals("sensitive_permission"))
        {
          if (localObject != null) {}
          try
          {
            ((c)localObject).a("Analysis_sensitive");
            i = 2;
          }
          catch (Exception parama)
          {
            parama.printStackTrace();
            i = 2;
          }
          continue;
        }
        if (str1.equals("catalog"))
        {
          if (localObject != null) {}
          try
          {
            ((c)localObject).a("Analysis_all");
            i = 4;
          }
          catch (Exception parama)
          {
            parama.printStackTrace();
            i = 4;
          }
          continue;
        }
        if ((str1.equals("apprelationfile")) || ((str1.equals("allfile")) && ((ap.aY(str2)) || (ap.X(str2)))))
        {
          i = 6;
          continue;
        }
        if ((parama instanceof com.estrongs.android.b.a.a.a))
        {
          i = 3;
          if (str1.equals("appcatalog")) {
            i = 5;
          }
          if (localObject == null) {
            break label564;
          }
          try
          {
            if (str1.equals("cache")) {
              ((c)localObject).a("Analysis_cache");
            } else if (str1.equals("internal_storage")) {
              ((c)localObject).a("Analysis_memory");
            }
          }
          catch (Exception parama)
          {
            parama.printStackTrace();
          }
          continue;
        }
        if ((parama instanceof b))
        {
          if (localObject == null) {
            break label567;
          }
          try
          {
            if (str1.equals("largefile")) {
              ((c)localObject).a("Analysis_large");
            } else if (str1.equals("newcreate")) {
              ((c)localObject).a("Analysis_recently");
            }
          }
          catch (Exception parama)
          {
            parama.printStackTrace();
            i = 0;
          }
          continue;
        }
      }
      if (!str5.equals("junk")) {
        break;
      }
      parama = new Intent(paramActivity, FileExplorerActivity.class);
      parama.setData(Uri.parse("clean://"));
      parama.addFlags(268435456);
      parama.addFlags(67108864);
      paramActivity.startActivity(parama);
      paramActivity.finish();
      return;
      label564:
      continue;
      label567:
      int i = 0;
    }
  }
  
  private void a(Fragment paramFragment)
  {
    getSupportFragmentManager().a().a(2131624144, paramFragment).b();
  }
  
  protected ActionBar a()
  {
    Toolbar localToolbar = (Toolbar)findViewById(2131624102);
    setSupportActionBar(localToolbar);
    localToolbar.setTitleTextColor(J().c(2131558625));
    return getSupportActionBar();
  }
  
  protected void a(List<com.estrongs.android.view.a.a> paramList)
  {
    if (a != null) {
      a.b(paramList);
    }
  }
  
  protected boolean b()
  {
    return true;
  }
  
  protected boolean c()
  {
    return false;
  }
  
  public h d()
  {
    return (h)getSupportFragmentManager().a(2131624144);
  }
  
  public boolean e()
  {
    h localh = d();
    return (localh != null) && (localh.u());
  }
  
  public void invalidateOptionsMenu()
  {
    super.invalidateOptionsMenu();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    switch (getIntent().getIntExtra("analysis_result_page_type", 0))
    {
    default: 
      a = new v();
    }
    for (;;)
    {
      super.onCreate(paramBundle);
      setContentView(2130903076);
      if (a != null) {
        a(a);
      }
      return;
      a = new ag();
      continue;
      a = new ad();
      continue;
      a = new q();
      continue;
      a = new o();
      continue;
      a = new ac();
      continue;
      a = new k();
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (e())) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if ((paramMenuItem.getItemId() == 16908332) && (e())) {
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onStart()
  {
    super.onStart();
    getSupportActionBar().setElevation(0.0F);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.AnalysisResultDetailActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */