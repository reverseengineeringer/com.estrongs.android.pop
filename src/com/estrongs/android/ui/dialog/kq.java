package com.estrongs.android.ui.dialog;

import android.app.Activity;
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
import com.estrongs.a.a;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.DownloaderActivity;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.aa;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;

public class kq
{
  private static String s = null;
  private static long w = -1L;
  View a;
  private Context b;
  private ci c;
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
  private aa q = null;
  private boolean r = false;
  private String t = null;
  private List<String> u = null;
  private String v = null;
  private Handler x = new kr(this);
  private DialogInterface.OnClickListener y = new ks(this);
  private DialogInterface.OnClickListener z = new kt(this);
  
  public kq(Context paramContext, int paramInt1, kx paramkx, int paramInt2)
  {
    this(paramContext, paramInt1, paramkx, paramInt2, 0);
  }
  
  public kq(Context paramContext, int paramInt1, kx paramkx, int paramInt2, int paramInt3)
  {
    b = paramContext;
    m = paramInt1;
    t = b;
    u = new ArrayList();
    u.addAll(c);
    n = paramInt2;
    a(paramInt3);
  }
  
  public kq(Context paramContext, int paramInt, String paramString)
  {
    b = paramContext;
    m = paramInt;
    v = paramString;
    a(0);
  }
  
  private void a(int paramInt)
  {
    a = k.a(b).inflate(2130903228, null);
    h = ((LinearLayout)a.findViewById(2131624891));
    d = ((ProgressBar)a.findViewById(2131624892));
    e = ((ProgressBar)a.findViewById(2131624894));
    f = ((LinearLayout)a.findViewById(2131624898));
    g = ((LinearLayout)a.findViewById(2131624895));
    i = ((TextView)a.findViewById(2131624893));
    l = ((ImageView)a.findViewById(2131624899));
    k = ((TextView)a.findViewById(2131624897));
    j = ((TextView)a.findViewById(2131624896));
    e.setMax(1000);
    cv localcv = new cv(b);
    int i1 = paramInt;
    if (paramInt == 0) {
      i1 = 2131232248;
    }
    c = localcv.a(i1).a(a).b(2131232248, y).c(2131231265, z).b();
    l.setOnClickListener(new ku(this));
    d();
  }
  
  public static void a(Handler paramHandler, String paramString)
  {
    paramString = new aa(paramString);
    paramString.getClass();
    c = 1;
    d = paramHandler;
    paramString.a(paramString);
    paramString.a(new kw());
    paramString.c();
  }
  
  private static kx b(String paramString)
  {
    try
    {
      kx localkx = new kx();
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
      return localkx;
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
          i.setText(b(2131232517));
          d.setVisibility(0);
          e.setVisibility(8);
          f.setVisibility(8);
          g.setVisibility(8);
          c.setSingleButton(b(2131231265), z);
          c.getSingleButton().requestFocus();
          a(x, v);
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
          i.setText(b(2131232521));
          return;
        }
        if (n == 1)
        {
          i.setText(b(2131232519));
          c.setConfirmButton(b(2131232248), y);
          c.setCancelButton(b(2131231265), z);
          c.getConfirmButton().requestFocus();
          return;
        }
      } while (n != 2);
      i.setText(b(2131232522));
      return;
      if (m == 3)
      {
        i.setText(b(2131232179));
        g.setVisibility(0);
        e.setVisibility(0);
        f.setVisibility(8);
        c.setSingleButton(b(2131231265), z);
        c.getSingleButton().requestFocus();
        return;
      }
    } while (m != 4);
    if (o == 9)
    {
      i.setText(b(2131232518));
      c.setConfirmButton(b(2131231096), y);
      c.setCancelButton(b(2131231265), z);
      c.getConfirmButton().requestFocus();
      return;
    }
    i.setText(b(2131232245));
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
      Object localObject;
      str = ad.a(b).A();
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      localObject = (String)u.get(0);
      if ((w != -1L) && (a.getTask(w) != null))
      {
        localObject = new Intent();
        ((Intent)localObject).setClassName(b.getPackageName(), ShowDialogActivity.class.getName());
        ((Intent)localObject).putExtra("task_id", w);
        ((Intent)localObject).putExtra("task_title", b.getString(2131230847));
        b.startActivity((Intent)localObject);
        return true;
        throw new ActivityNotFoundException();
      }
    }
    catch (Exception localException)
    {
      return false;
    }
    String str;
    DownloaderActivity.a((Activity)b, str, localException, new kv(this), false, null, false, null, true);
    return true;
  }
  
  public void a()
  {
    if (a != null) {
      a.findViewById(2131624898).setVisibility(8);
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
 * Qualified Name:     com.estrongs.android.ui.dialog.kq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */