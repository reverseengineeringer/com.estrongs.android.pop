package com.estrongs.android.ui.c.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.text.DecimalFormat;
import java.util.List;

public class b
  extends a
{
  private TextView c;
  private TextView d;
  private TextView e;
  private final DecimalFormat f = new DecimalFormat(" 0%");
  private List<String> g = null;
  private String h = "/";
  
  public b(FileExplorerActivity paramFileExplorerActivity)
  {
    super(paramFileExplorerActivity);
  }
  
  public static void a(Context paramContext, String paramString)
  {
    com.estrongs.android.pop.app.analysis.a.a().a(paramString, null);
  }
  
  private String c(int paramInt)
  {
    return a.getResources().getString(paramInt);
  }
  
  public void a()
  {
    a(2131231566);
    b(2131231568);
    d.setVisibility(0);
  }
  
  public void a(int paramInt)
  {
    c.setText(c(paramInt));
  }
  
  public void a(String paramString)
  {
    h = paramString;
  }
  
  public void b(int paramInt)
  {
    d.setText(c(paramInt));
  }
  
  protected void b(View paramView)
  {
    c = ((TextView)paramView.findViewById(2131624489));
    d = ((TextView)paramView.findViewById(2131624490));
    e = ((TextView)paramView.findViewById(2131624491));
    e.setFocusable(true);
    e.setText(c(2131231563));
    e.setOnClickListener(new c(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */