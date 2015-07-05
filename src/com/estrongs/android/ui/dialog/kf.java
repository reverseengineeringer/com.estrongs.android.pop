package com.estrongs.android.ui.dialog;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;

public class kf
{
  private static String s = null;
  View a;
  private Context b;
  private cg c;
  private ProgressBar d = null;
  private ProgressBar e = null;
  private LinearLayout f;
  private LinearLayout g;
  private LinearLayout h;
  private TextView i;
  private TextView j;
  private TextView k;
  private ImageView l = null;
  private int m = 1;
  private int n = 0;
  private int o = 0;
  private boolean p = false;
  private y q = null;
  private boolean r = false;
  private String t = null;
  private List<String> u = null;
  private String v = null;
  private Handler w = new kg(this);
  private DialogInterface.OnClickListener x = new kh(this);
  private DialogInterface.OnClickListener y = new ki(this);
  
  public kf(Context paramContext, int paramInt1, km paramkm, int paramInt2)
  {
    this(paramContext, paramInt1, paramkm, paramInt2, 0);
  }
  
  public kf(Context paramContext, int paramInt1, km paramkm, int paramInt2, int paramInt3)
  {
    b = paramContext;
    m = paramInt1;
    t = b;
    u = new ArrayList();
    u.addAll(c);
    n = paramInt2;
    a(paramInt3);
  }
  
  public kf(Context paramContext, int paramInt, String paramString)
  {
    b = paramContext;
    m = paramInt;
    v = paramString;
    a(0);
  }
  
  private void a(int paramInt)
  {
    a = g.a(b).inflate(2130903129, null);
    h = ((LinearLayout)a.findViewById(2131362299));
    d = ((ProgressBar)a.findViewById(2131362300));
    e = ((ProgressBar)a.findViewById(2131362302));
    f = ((LinearLayout)a.findViewById(2131362306));
    g = ((LinearLayout)a.findViewById(2131362303));
    i = ((TextView)a.findViewById(2131362301));
    l = ((ImageView)a.findViewById(2131362307));
    k = ((TextView)a.findViewById(2131362305));
    j = ((TextView)a.findViewById(2131362304));
    e.setMax(1000);
    ct localct = new ct(b);
    int i1 = paramInt;
    if (paramInt == 0) {
      i1 = 2131427609;
    }
    c = localct.a(i1).a(a).b(2131427609, x).c(2131427340, y).b();
    l.setOnClickListener(new kj(this));
    d();
  }
  
  public static void a(Handler paramHandler, String paramString)
  {
    paramString = new y(paramString);
    paramString.getClass();
    c = 1;
    d = paramHandler;
    paramString.a(paramString);
    paramString.a(new kl());
    paramString.c();
  }
  
  private static km b(String paramString)
  {
    try
    {
      km localkm = new km();
      paramString = (Map)new JSONParser().parse(paramString);
      if (paramString == null) {
        return null;
      }
      a = ((String)paramString.get("version"));
      b = ((String)paramString.get("market"));
      paramString = (JSONArray)paramString.get("urls");
      if ((paramString instanceof JSONArray))
      {
        c = new ArrayList();
        paramString = ((JSONArray)paramString).iterator();
        while (paramString.hasNext())
        {
          String str = (String)((Map)paramString.next()).get("url");
          if (str != null) {
            c.add(str);
          }
        }
      }
      int i1 = c.size();
      if (i1 == 0) {
        return null;
      }
      return localkm;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  private String b(int paramInt)
  {
    return b.getString(paramInt);
  }
  
  private void d()
  {
    if (r) {}
    do
    {
      do
      {
        return;
        if (m == 1)
        {
          i.setText(b(2131427623));
          d.setVisibility(0);
          e.setVisibility(8);
          f.setVisibility(8);
          g.setVisibility(8);
          c.setSingleButton(b(2131427340), y);
          c.getSingleButton().requestFocus();
          a(w, v);
          return;
        }
        if (m != 2) {
          break;
        }
        d.setVisibility(8);
        g.setVisibility(8);
        e.setVisibility(8);
        if (n == 0)
        {
          i.setText(b(2131427624));
          return;
        }
        if (n == 1)
        {
          i.setText(b(2131427625));
          c.setConfirmButton(b(2131427609), x);
          c.setCancelButton(b(2131427340), y);
          c.getConfirmButton().requestFocus();
          return;
        }
      } while (n != 2);
      i.setText(b(2131427626));
      return;
      if (m == 3)
      {
        i.setText(b(2131427458));
        g.setVisibility(0);
        e.setVisibility(0);
        f.setVisibility(8);
        c.setSingleButton(b(2131427340), y);
        c.getSingleButton().requestFocus();
        return;
      }
    } while (m != 4);
    if (o == 9)
    {
      i.setText(b(2131427627));
      c.setConfirmButton(b(2131427612), x);
      c.setCancelButton(b(2131427340), y);
      c.getConfirmButton().requestFocus();
      return;
    }
    i.setText(b(2131427613));
  }
  
  private boolean e()
  {
    try
    {
      if (FexApplication.a().m())
      {
        Intent localIntent = new Intent("android.intent.action.VIEW");
        localIntent.setData(Uri.parse(t));
        if ((b instanceof FileExplorerActivity)) {
          ((FileExplorerActivity)b).a(localIntent);
        }
        for (;;)
        {
          c();
          return false;
          b.startActivity(localIntent);
        }
      }
      String str;
      return false;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      str = (String)u.get(0);
      q = new y(str);
      q.a(q);
      q.a(a.d + "/" + str.hashCode() + ".apk");
      q.a(new kk(this));
      q.c();
      return true;
      throw new ActivityNotFoundException();
    }
    catch (Exception localException) {}
  }
  
  public void a()
  {
    if (a != null) {
      a.findViewById(2131362306).setVisibility(8);
    }
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    c.setOnDismissListener(paramOnDismissListener);
  }
  
  public void b()
  {
    c.show();
  }
  
  public void c()
  {
    c.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */