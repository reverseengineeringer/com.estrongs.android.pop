package com.estrongs.android.pop.app.analysis;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.analysis.a.z;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.an;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

public class AnalysisResultActivity
  extends ESActivity
{
  private com.estrongs.android.pop.app.analysis.a.a a;
  private RecyclerView b;
  private TextView c;
  private ImageView d;
  private TextView e;
  private PopupWindow f;
  private ImageView g;
  private ImageView h;
  private String i;
  private ImageView j;
  private boolean k = false;
  private c l;
  private long m;
  private long n;
  private RelativeLayout o;
  private View.OnClickListener p = new v(this);
  
  private void a()
  {
    CopyOnWriteArrayList localCopyOnWriteArrayList = a.a().d();
    if (localCopyOnWriteArrayList == null) {
      finish();
    }
    b = ((RecyclerView)findViewById(2131623946));
    b.setLayoutManager(new LinearLayoutManager(this));
    c = ((TextView)findViewById(2131624101));
    d = ((ImageView)findViewById(2131624095));
    d.setOnClickListener(p);
    o = ((RelativeLayout)findViewById(2131624096));
    e = ((TextView)findViewById(2131624055));
    g = ((ImageView)findViewById(2131624098));
    j = ((ImageView)findViewById(2131624100));
    h = ((ImageView)findViewById(2131624097));
    if (!ad.a(this).bj()) {
      h.setVisibility(0);
    }
    o.setOnClickListener(p);
    e.setOnClickListener(p);
    d();
    a(i);
    b(i);
    a = new com.estrongs.android.pop.app.analysis.a.a(this);
    b.setAdapter(a);
    a.a(localCopyOnWriteArrayList);
    a.notifyDataSetChanged();
    b.setVisibility(0);
    b.addOnScrollListener(new u(this));
  }
  
  public static void a(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent(paramContext, AnalysisResultActivity.class);
    localIntent.putExtra("path", paramString);
    paramContext.startActivity(localIntent);
  }
  
  private void a(View paramView)
  {
    if (f == null) {
      b(paramView);
    }
    for (;;)
    {
      paramView = getWindow().getAttributes();
      alpha = 0.6F;
      getWindow().setAttributes(paramView);
      c();
      return;
      int[] arrayOfInt = new int[2];
      paramView.getLocationOnScreen(arrayOfInt);
      f.showAtLocation(paramView, 49, 0, arrayOfInt[1] + paramView.getHeight());
    }
  }
  
  private void a(String paramString)
  {
    Object localObject2 = "";
    if (ap.ai(paramString)) {
      localObject1 = getString(2131230924);
    }
    for (;;)
    {
      e.setText((CharSequence)localObject1);
      return;
      if (ap.V(paramString))
      {
        localObject1 = getString(2131230942);
      }
      else if ((ap.aY(paramString)) || (ap.X(paramString)))
      {
        localObject1 = getString(2131230950);
      }
      else if (ap.Z(paramString))
      {
        localObject1 = getString(2131230959);
      }
      else if (ap.ae(paramString))
      {
        localObject1 = getString(2131230928);
      }
      else
      {
        if (ap.bp(paramString))
        {
          paramString = getString(2131230922);
          e.setText(paramString);
          return;
        }
        if (!ap.bl(paramString)) {
          break label253;
        }
        Iterator localIterator = ap.a().iterator();
        label142:
        localObject1 = localObject2;
        if (localIterator.hasNext())
        {
          localObject1 = (String)localIterator.next();
          if (!((String)localObject1).contains(paramString)) {
            break;
          }
          localObject1 = ap.d((String)localObject1);
          paramString = (String)localObject1;
          if ("0".equals(localObject1)) {
            paramString = getString(2131230936);
          }
          localObject1 = paramString + " " + getString(2131230932);
        }
      }
    }
    if (paramString.contains((CharSequence)localObject1)) {}
    for (Object localObject1 = getString(2131230927);; localObject1 = localObject2)
    {
      localObject2 = localObject1;
      break label142;
      label253:
      localObject1 = getString(2131231349);
      break;
    }
  }
  
  private void a(String paramString, long paramLong)
  {
    if (a != null) {
      a.a(paramString, paramLong);
    }
  }
  
  private void b()
  {
    l = c.a(this);
    l.a("Analysis_show_pv");
    l.c("Analysis_show_uv");
    if ((ap.aY(i)) || (ap.X(i)))
    {
      l.a("A_Photos_show");
      l.c("analysis", "A_Photos_show");
    }
    do
    {
      return;
      if (ap.V(i))
      {
        l.a("A_Music_show");
        l.c("analysis", "A_Music_show");
        return;
      }
      if (ap.Z(i))
      {
        l.a("A_Video_show");
        l.c("analysis", "A_Video_show");
        return;
      }
    } while (!ap.ae(i));
    l.a("A_Document_show");
    l.c("analysis", "A_Document_show");
  }
  
  private void b(View paramView)
  {
    Object localObject = LayoutInflater.from(this).inflate(2130903091, null);
    z localz = new z(this);
    ListView localListView = (ListView)((View)localObject).findViewById(2131624232);
    localListView.setAdapter(localz);
    f = new PopupWindow((View)localObject, a(250.0F), -2);
    f.setBackgroundDrawable(getResources().getDrawable(2130837610));
    f.setOutsideTouchable(true);
    f.setAnimationStyle(16973826);
    f.update();
    f.setTouchable(true);
    f.setFocusable(true);
    localObject = new int[2];
    paramView.getLocationOnScreen((int[])localObject);
    f.showAtLocation(paramView, 49, 0, localObject[1] + paramView.getHeight());
    localListView.setOnItemClickListener(new w(this));
    f.setOnDismissListener(new x(this));
  }
  
  private void b(String paramString)
  {
    if (a.a().f())
    {
      paramString = getResources().getString(2131230957);
      j.setVisibility(0);
    }
    for (;;)
    {
      c.setText(paramString);
      return;
      if ((!ap.bl(paramString)) || (paramString.equals("/")))
      {
        paramString = getResources().getString(2131230943);
        j.setVisibility(0);
      }
      else
      {
        j.setVisibility(8);
      }
    }
  }
  
  private void c()
  {
    Drawable localDrawable = g.a(getResources().getDrawable(2130838044), getResources().getColor(2131558620));
    g.setImageDrawable(localDrawable);
  }
  
  private void d()
  {
    Drawable localDrawable = g.a(getResources().getDrawable(2130838008), getResources().getColor(2131558620));
    g.setImageDrawable(localDrawable);
  }
  
  private void e()
  {
    n = System.currentTimeMillis();
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("AnalysisResultStayTime", n - m);
      l.b("Analysis_rp_stay", localJSONObject);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public int a(float paramFloat)
  {
    return (int)(getResourcesgetDisplayMetricsdensity * paramFloat + 0.5F);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 4135) && (paramIntent != null))
    {
      String str1 = paramIntent.getStringExtra("analysis_result_card_key");
      String str2 = paramIntent.getStringExtra("analysis_result_card_path");
      long l1 = paramIntent.getLongExtra("analysis_result_cleaned_size", 0L);
      long l2 = paramIntent.getLongExtra("analysis_result_cleaned_memory_size", 0L);
      l.c("cardKey = " + str1 + " , cardPath" + str2 + " , size = " + l1 + " , memory = " + l2);
      a(str1, l1);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903065);
    an.a(this);
    i = getIntent().getStringExtra("path");
    a();
    b();
    m = System.currentTimeMillis();
  }
  
  protected void onDestroy()
  {
    e();
    super.onDestroy();
    if (a != null) {
      a.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.AnalysisResultActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */