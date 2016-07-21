package com.estrongs.android.pop.app.analysis.viewholders;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.b.a.a;
import com.estrongs.android.b.a.c;
import com.estrongs.android.b.a.p;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.ui.view.ak;
import org.json.JSONObject;

public class ae
  extends n
{
  private ImageView a;
  private ImageView b;
  private TextView c;
  private Button d;
  
  public ae(View paramView)
  {
    super(paramView);
  }
  
  private void a(Context paramContext, String paramString)
  {
    paramString = FexApplication.a().getPackageManager().getLaunchIntentForPackage(paramString);
    if (paramString != null) {
      paramContext.startActivity(paramString);
    }
  }
  
  private void a(Context paramContext, String paramString1, String paramString2, a parama)
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
  
  private void b(Context paramContext, String paramString1, String paramString2, a parama)
  {
    try
    {
      paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString1)));
      return;
    }
    catch (ActivityNotFoundException paramContext) {}
  }
  
  public void a(a parama, Context paramContext)
  {
    ViewGroup localViewGroup = (ViewGroup)itemView;
    localViewGroup.removeAllViews();
    if (!(parama instanceof p)) {
      return;
    }
    View localView = LayoutInflater.from(paramContext).inflate(2130903083, null, false);
    c = ((TextView)localView.findViewById(2131624055));
    a = ((ImageView)localView.findViewById(2131624054));
    b = ((ImageView)localView.findViewById(2131624051));
    d = ((Button)localView.findViewById(2131624140));
    Object localObject = (p)parama;
    String str1 = ((p)localObject).e("title");
    ((p)localObject).e("description");
    ((p)localObject).e("button");
    String str3 = ((p)localObject).e("icon");
    String str4 = ((p)localObject).e("image");
    int i = ((p)localObject).s().optInt("market");
    String str2 = ((p)localObject).e("url");
    localObject = ((p)localObject).e("key");
    c.a(a, str3, 2130837752);
    if (str4 != null)
    {
      b.setImageResource(2130837751);
      c.a(b, str4, 2130837751);
      b.setVisibility(0);
      c.setText(str1);
      if (!w.a((String)localObject)) {
        break label306;
      }
    }
    label306:
    for (str1 = paramContext.getString(2131230868);; str1 = paramContext.getString(2131231096))
    {
      d.setText(str1);
      parama = new af(this, str2, (String)localObject, i, paramContext, parama);
      d.setOnClickListener(parama);
      localView.setOnClickListener(parama);
      localViewGroup.addView(localView, new LinearLayout.LayoutParams(-1, -1));
      return;
      b.setVisibility(8);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */