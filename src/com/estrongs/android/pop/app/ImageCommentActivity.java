package com.estrongs.android.pop.app;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.util.m;
import com.gmail.yuyang226.flickr.a.a.a;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedList;

public class ImageCommentActivity
  extends ESActivity
{
  SPFileInfo a;
  private LinkedList<Object> b = new LinkedList();
  private LayoutInflater c = null;
  private Object d = new Object();
  private m e = null;
  private m f = null;
  private m g = null;
  private String h;
  private View i;
  private ListView j;
  private BaseAdapter k = null;
  private TypedMap l = new TypedMap();
  private View m;
  private View n;
  private al o;
  private Comparator<a> p = new cy(this);
  
  private SPFileInfo a(String paramString)
  {
    SPFileInfo localSPFileInfo = new SPFileInfo();
    paramString = getIntent();
    ownerId = paramString.getStringExtra("ownerId");
    ownerUsername = paramString.getStringExtra("ownerName");
    name = paramString.getStringExtra("name");
    description = paramString.getStringExtra("desc");
    long l1 = new Date().getTime();
    lastModifiedTime = paramString.getLongExtra("createdTime", l1);
    if ((ownerId != null) && (ownerUsername != null) && ((name != null) || (description != null)))
    {
      paramString = localSPFileInfo;
      if (lastModifiedTime != l1) {
        break label134;
      }
    }
    try
    {
      paramString = PhotoInfoManager.getPhotoInfo(h);
      label134:
      return paramString;
    }
    catch (PhotoInfoException paramString)
    {
      paramString.printStackTrace();
    }
    return localSPFileInfo;
  }
  
  private void a()
  {
    i = c.inflate(2130903191, null);
    i.setOnClickListener(new cz(this));
    findViewById(2131362604).setBackgroundDrawable(o.h());
    j = ((ListView)findViewById(2131362618));
    j.setCacheColorHint(0);
    j.setFastScrollEnabled(true);
    TextView localTextView = (TextView)findViewById(2131362021);
    ((TextView)findViewById(2131361825)).setText(2131428085);
    localTextView.setText(getString(2131427421) + ">" + Uri.parse(h).getHost());
    findViewById(2131362609).setOnClickListener(new da(this));
    m = findViewById(2131362616);
    m.setOnClickListener(new db(this));
    n = findViewById(2131362617);
    ((View)((ImageView)findViewById(2131362623)).getParent()).setOnClickListener(new dc(this));
  }
  
  private void a(boolean paramBoolean)
  {
    if ((e != null) && (e.isAlive())) {
      return;
    }
    i.findViewById(2131361935).setVisibility(0);
    e = new dg(this, "Comment Loader", paramBoolean);
    e.start();
  }
  
  private void b()
  {
    if ((g != null) && (g.isAlive())) {
      return;
    }
    m.setVisibility(8);
    n.setVisibility(0);
    g = new dd(this, "Comment Refresher");
    g.start();
  }
  
  private boolean c()
  {
    return "Facebook".equals(am.ao(h));
  }
  
  private String[] d()
  {
    String str = getString(2131427738);
    return new String[] { getString(2131427732) + " " + str, getString(2131427733) + " " + str, getString(2131427734) + " " + str, getString(2131427735) + " " + str, getString(2131427736) + " " + str, getString(2131427737) + " " + str };
  }
  
  private BaseAdapter e()
  {
    return new dj(this);
  }
  
  public void finish()
  {
    super.finish();
    if (e != null)
    {
      e.a();
      e = null;
    }
    if (f != null)
    {
      f.a();
      f = null;
    }
    if (g != null)
    {
      g.a();
      g = null;
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == -1)) {
      a(true);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    o = al.a(this);
    paramBundle = g.a(this).inflate(2130903216, null);
    paramBundle.setBackgroundDrawable(o.h());
    setContentView(paramBundle);
    h = getIntent().getStringExtra("pic_path");
    c = g.a(this);
    a();
    b.add(d);
    k = e();
    j.setAdapter(k);
    j.setSelector(new ColorDrawable(0));
    l.put("limit", Integer.valueOf(10));
    l.put("offset", Integer.valueOf(0));
    a(false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ImageCommentActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */