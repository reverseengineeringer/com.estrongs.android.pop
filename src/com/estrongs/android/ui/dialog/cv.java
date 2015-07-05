package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.os.AsyncTask;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class cv
  extends cg
{
  public cv(Context paramContext, List<h> paramList, h paramh, boolean paramBoolean)
  {
    super(paramContext);
    super.setContentView(2130903083);
    al.a(mContext);
    TextView localTextView1 = (TextView)mContentView.findViewById(2131361822);
    TextView localTextView4 = (TextView)mContentView.findViewById(2131362057);
    TextView localTextView2 = (TextView)mContentView.findViewById(2131362061);
    TextView localTextView3 = (TextView)mContentView.findViewById(2131362062);
    Object localObject1 = (TextView)mContentView.findViewById(2131362059);
    localObject1 = (TextView)mContentView.findViewById(2131362060);
    TextView localTextView5 = (TextView)mContentView.findViewById(2131362063);
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramList.size();
    int i = 0;
    localObject1 = null;
    Object localObject3;
    Object localObject2;
    if (i < j)
    {
      localObject3 = ((h)paramList.get(i)).getName();
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = am.D(am.bk(((h)paramList.get(i)).getAbsolutePath()));
      }
      if (localObject3 != null) {
        break label496;
      }
    }
    label397:
    label496:
    for (localObject1 = am.d(((h)paramList.get(i)).getAbsolutePath());; localObject1 = localObject3)
    {
      localStringBuilder.append((String)localObject1);
      if (i + 1 != j) {
        localStringBuilder.append(" , ");
      }
      i += 1;
      localObject1 = localObject2;
      break;
      if (paramBoolean)
      {
        setTitle(2131427348);
        localTextView5.setText(2131427771);
        if (!am.bb(((h)paramList.get(0)).getPath())) {
          break label397;
        }
        localTextView4.setText(paramContext.getString(2131428121, new Object[] { Integer.valueOf(paramList.size()), "" }));
      }
      for (;;)
      {
        localTextView1.setText(paramContext.getString(2131428119, new Object[] { localStringBuilder.toString() }));
        localTextView2.setText(am.bL((String)localObject1));
        localTextView3.setText(am.bL(paramh.getPath()));
        return;
        setTitle(2131427350);
        localTextView5.setText(2131427772);
        break;
        new StringBuilder(256);
        localObject2 = new cw(this, paramContext, localTextView4);
        localObject3 = new ArrayList();
        paramList = paramList.iterator();
        while (paramList.hasNext()) {
          ((List)localObject3).add(new File(((h)paramList.next()).getAbsolutePath()));
        }
        ((AsyncTask)localObject2).execute(new List[] { localObject3 });
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */