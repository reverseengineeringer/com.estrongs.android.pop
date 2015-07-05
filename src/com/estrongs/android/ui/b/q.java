package com.estrongs.android.ui.b;

import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.a.a;
import com.estrongs.android.d.f;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.netfs.utils.TypeUtils;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.util.am;
import com.estrongs.android.view.ea;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;

class q
  extends ea
{
  public cg a;
  protected h b = null;
  String c = "";
  String d = "";
  private String e = null;
  
  public q(ESActivity paramESActivity, h paramh)
  {
    super(paramESActivity);
    b = paramh;
    c = m(2131427428).toString();
    d = m(2131427429).toString();
    paramh = paramh.getExtra("task");
    JSONObject localJSONObject;
    String str;
    DateFormat localDateFormat;
    if ((paramh != null) && ((paramh instanceof a)))
    {
      localJSONObject = ((a)paramh).summary();
      a(2131362171, c);
      ((ImageView)k(2131361829)).setImageDrawable(f.a(String.valueOf(TypeUtils.getFileType(localJSONObject.optString("title")))));
      str = am.bk(localJSONObject.optString("target"));
      a(2131361830, localJSONObject.optString("title"));
      a(2131362173, str);
      long l = localJSONObject.optLong("size");
      a(2131361839, j.c(l) + " (" + j.d(l) + " " + m(2131427590) + ")");
      localDateFormat = ad.a(ad).F();
      if (!FileExplorerActivity.G) {
        break label417;
      }
    }
    label417:
    for (paramh = new SimpleDateFormat(" HH:mm:ss");; paramh = new SimpleDateFormat(" hh:mm:ss a"))
    {
      Date localDate = new Date(localJSONObject.optLong("start_time"));
      a(2131362176, localDateFormat.format(localDate) + paramh.format(localDate));
      a(2131362178, localJSONObject.optString("source"));
      paramh = (TextView)k(2131362173);
      paramh.setText(Html.fromHtml("<a href=\"ss\">" + str + "</a>"));
      paramh.setClickable(true);
      paramh.setOnClickListener(new r(this, str));
      ((Button)k(2131362174)).setOnClickListener(new s(this, str));
      ((Button)k(2131362179)).setOnClickListener(new t(this, paramESActivity));
      return;
    }
  }
  
  private void a(int paramInt, String paramString)
  {
    View localView = k(paramInt);
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
      FileExplorerActivity.J().e(paramString);
      return;
    }
    catch (Exception paramString) {}
  }
  
  protected int a()
  {
    return 2130903113;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */