package com.estrongs.android.ui.b;

import android.app.Activity;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.a.a;
import com.estrongs.android.h.f;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.netfs.utils.TypeUtils;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.gf;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;

class q
  extends gf
{
  public ci a;
  protected h b = null;
  String c = "";
  String d = "";
  private String e = null;
  
  public q(Activity paramActivity, h paramh)
  {
    super(paramActivity);
    b = paramh;
    c = k(2131231132).toString();
    d = k(2131231134).toString();
    paramh = paramh.getExtra("task");
    JSONObject localJSONObject;
    String str;
    DateFormat localDateFormat;
    if ((paramh != null) && ((paramh instanceof a)))
    {
      localJSONObject = ((a)paramh).summary();
      a(2131624736, c);
      ((ImageView)b(2131624328)).setImageDrawable(f.a(String.valueOf(TypeUtils.getFileType(localJSONObject.optString("title")))));
      str = ap.bB(localJSONObject.optString("target"));
      a(2131624329, localJSONObject.optString("title"));
      a(2131624738, str);
      long l = localJSONObject.optLong("size");
      a(2131624338, j.c(l) + " (" + j.d(l) + " " + k(2131232204) + ")");
      localDateFormat = ad.a(ag).G();
      if (!FileExplorerActivity.C) {
        break label417;
      }
    }
    label417:
    for (paramh = new SimpleDateFormat(" HH:mm:ss");; paramh = new SimpleDateFormat(" hh:mm:ss a"))
    {
      Date localDate = new Date(localJSONObject.optLong("start_time"));
      a(2131624741, localDateFormat.format(localDate) + paramh.format(localDate));
      a(2131624743, localJSONObject.optString("source"));
      paramh = (TextView)b(2131624738);
      paramh.setText(Html.fromHtml("<a href=\"ss\">" + str + "</a>"));
      paramh.setClickable(true);
      paramh.setOnClickListener(new r(this, str));
      ((Button)b(2131624739)).setOnClickListener(new s(this, str));
      ((Button)b(2131624744)).setOnClickListener(new t(this, paramActivity));
      return;
    }
  }
  
  private void a(int paramInt, String paramString)
  {
    View localView = b(paramInt);
    if ((localView != null) && ((localView instanceof TextView))) {
      ((TextView)localView).setText(paramString);
    }
  }
  
  private void a(String paramString)
  {
    try
    {
      if (a != null) {
        a.dismiss();
      }
      FileExplorerActivity.X().g(paramString);
      return;
    }
    catch (Exception paramString) {}
  }
  
  protected int a()
  {
    return 2130903202;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */