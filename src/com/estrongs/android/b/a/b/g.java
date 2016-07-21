package com.estrongs.android.b.a.b;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.estrongs.android.b.a.c;
import com.estrongs.android.b.a.o;
import com.estrongs.android.b.a.p;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.d;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class g
  implements o
{
  private Map<String, com.estrongs.fs.b.ad> a = new HashMap();
  
  private void a(Context paramContext, String paramString)
  {
    paramString = FexApplication.a().getPackageManager().getLaunchIntentForPackage(paramString);
    if (paramString != null) {
      paramContext.startActivity(paramString);
    }
  }
  
  private void a(Context paramContext, String paramString, com.estrongs.android.b.a.a parama)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (a.containsKey(paramString)) {
      return;
    }
    Object localObject = parama.n();
    if ((!TextUtils.isEmpty((CharSequence)localObject)) && (new File((String)localObject).exists()))
    {
      a((String)localObject, paramContext);
      return;
    }
    Toast.makeText(paramContext, paramContext.getString(2131231118), 0).show();
    localObject = com.estrongs.android.pop.ad.a(paramContext).A();
    localObject = new com.estrongs.fs.b.ad(d.a(paramContext), paramString, (String)localObject, false);
    ((com.estrongs.fs.b.ad)localObject).addProgressListener(new com.estrongs.android.ui.notification.f((Activity)paramContext, paramContext.getString(2131230847), (com.estrongs.a.a)localObject));
    ((com.estrongs.fs.b.ad)localObject).addTaskStatusChangeListener(new i(this, paramString, (com.estrongs.fs.b.ad)localObject, parama, paramContext));
    a.put(paramString, localObject);
    ((com.estrongs.fs.b.ad)localObject).execute();
  }
  
  private void a(Context paramContext, String paramString1, String paramString2, com.estrongs.android.b.a.a parama)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    if ((paramString1 != null) && (paramString1.trim().length() != 0))
    {
      if (cl.a()) {
        b(paramContext, paramString1, paramString2, parama);
      }
      do
      {
        return;
        if (!w.a("com.android.vending")) {
          break;
        }
        paramString2 = localPackageManager.getLaunchIntentForPackage("com.android.vending");
      } while (paramString2 == null);
      paramString2.setAction("android.intent.action.VIEW");
      paramString2.setData(Uri.parse(paramString1));
      paramContext.startActivity(paramString2);
      return;
      b(paramContext, paramString1, paramString2, parama);
      return;
    }
    try
    {
      paramString1 = new Intent("android.intent.action.VIEW");
      paramString1.setData(Uri.parse("market://details?id=" + paramString2));
      paramContext.startActivity(paramString1);
      return;
    }
    catch (Exception paramString1)
    {
      ak.a(paramContext, 2131231690, 1);
    }
  }
  
  private void a(String paramString, Context paramContext)
  {
    paramString = new File(paramString);
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.setFlags(268435456);
    localIntent.addCategory("android.intent.category.DEFAULT");
    localIntent.setDataAndType(Uri.fromFile(paramString), "application/vnd.android.package-archive");
    paramContext.startActivity(localIntent);
  }
  
  private boolean a(String paramString)
  {
    PackageManager localPackageManager = FexApplication.a().getPackageManager();
    try
    {
      paramString = localPackageManager.getPackageInfo(paramString, 1);
      if (paramString != null) {
        return true;
      }
    }
    catch (PackageManager.NameNotFoundException paramString) {}
    return false;
  }
  
  private void b(Context paramContext, String paramString1, String paramString2, com.estrongs.android.b.a.a parama)
  {
    try
    {
      paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString1)));
      return;
    }
    catch (ActivityNotFoundException paramString2)
    {
      a(paramContext, paramString1, parama);
    }
  }
  
  public View a(ViewGroup paramViewGroup, Context paramContext)
  {
    return LayoutInflater.from(paramContext).inflate(2130903139, paramViewGroup, false);
  }
  
  public String a()
  {
    return "recommend";
  }
  
  public void a(View paramView, com.estrongs.android.b.a.a parama, Context paramContext, int paramInt, com.estrongs.android.pop.app.cleaner.i parami)
  {
    Object localObject2 = (ImageView)paramView.findViewById(2131624054);
    ImageView localImageView = (ImageView)paramView.findViewById(2131624051);
    TextView localTextView1 = (TextView)paramView.findViewById(2131624055);
    TextView localTextView2 = (TextView)paramView.findViewById(2131624534);
    Button localButton = (Button)paramView.findViewById(2131624140);
    Object localObject3;
    Object localObject1;
    String str2;
    Object localObject4;
    if ((parama instanceof com.estrongs.android.b.a.a.f))
    {
      localObject3 = (com.estrongs.android.b.a.a.f)parama;
      localObject1 = ((com.estrongs.android.b.a.a.f)localObject3).o();
      str1 = ((com.estrongs.android.b.a.a.f)localObject3).s();
      ((com.estrongs.android.b.a.a.f)localObject3).w();
      ((ImageView)localObject2).setImageResource(((com.estrongs.android.b.a.a.f)localObject3).u());
      ((ImageView)localObject2).setTag(null);
      parami = ((com.estrongs.android.b.a.a.f)localObject3).x();
      localObject2 = ((com.estrongs.android.b.a.a.f)localObject3).v();
      str2 = ((com.estrongs.android.b.a.a.f)localObject3).p();
      paramInt = ((com.estrongs.android.b.a.a.f)localObject3).y();
      if (localImageView != null)
      {
        if (((com.estrongs.android.b.a.a.f)localObject3).t() != 0)
        {
          localObject4 = paramContext.getResources().getDrawable(((com.estrongs.android.b.a.a.f)localObject3).t());
          localImageView.getViewTreeObserver().addOnGlobalLayoutListener(new h(this, (Drawable)localObject4, localImageView));
          localImageView.setImageResource(((com.estrongs.android.b.a.a.f)localObject3).t());
          localImageView.setVisibility(0);
          localImageView.setTag(null);
        }
      }
      else
      {
        label206:
        localTextView1.setText((CharSequence)localObject1);
        localTextView2.setText(str1);
        if (!a(str2)) {
          break label479;
        }
      }
    }
    label479:
    for (String str1 = paramContext.getString(2131230868);; str1 = paramContext.getString(2131231096))
    {
      localButton.setText(str1);
      parama = new j(this, parami, (String)localObject2, str2, paramInt, paramContext, parama);
      localButton.setOnClickListener(parama);
      paramView.setOnClickListener(parama);
      return;
      localImageView.setVisibility(8);
      break;
      localObject4 = (p)parama;
      parami = ((p)localObject4).e("title");
      str1 = ((p)localObject4).e("description");
      ((p)localObject4).e("button");
      String str3 = ((p)localObject4).e("icon");
      String str4 = ((p)localObject4).e("image");
      localObject1 = ((p)localObject4).e("action");
      localObject3 = ((p)localObject4).e("url");
      str2 = ((p)localObject4).e("key");
      paramInt = ((p)localObject4).s().optInt("market");
      c.a((ImageView)localObject2, str3, 2130837752);
      if (localImageView != null)
      {
        if (str4 != null)
        {
          localImageView.setImageResource(2130837751);
          c.a(localImageView, str4, 2130837751);
          localImageView.setVisibility(0);
          localObject2 = localObject1;
          localObject1 = parami;
          parami = (com.estrongs.android.pop.app.cleaner.i)localObject2;
          localObject2 = localObject3;
          break label206;
        }
        localImageView.setVisibility(8);
        localImageView.setTag(null);
      }
      localObject2 = localObject1;
      localObject1 = parami;
      parami = (com.estrongs.android.pop.app.cleaner.i)localObject2;
      localObject2 = localObject3;
      break label206;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.b.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */