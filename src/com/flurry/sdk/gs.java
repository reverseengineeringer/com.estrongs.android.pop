package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnKeyListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebSettings;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@SuppressLint({"SetJavaScriptEnabled"})
public class gs
  extends gt
  implements DialogInterface.OnKeyListener
{
  private ci A;
  private boolean B;
  private gt.a C = new gs.4(this);
  String a = null;
  kb<gu> b = new gs.1(this);
  private boolean c = false;
  private final String d = gs.class.getSimpleName();
  private gh e;
  private boolean f;
  private he g;
  private int h;
  private boolean i;
  private WebViewClient j;
  private WebChromeClient k;
  private hj l;
  private View m;
  private int n;
  private WebChromeClient.CustomViewCallback o;
  private Dialog p;
  private FrameLayout q;
  private int r;
  private Dialog s;
  private FrameLayout t;
  private boolean u;
  private boolean v;
  private boolean w;
  private boolean x;
  private boolean y = false;
  private AlertDialog z;
  
  public gs(Context paramContext, s params, gt.a parama, boolean paramBoolean)
  {
    super(paramContext, params, parama);
    setClickable(true);
    c = paramBoolean;
    if ((getContext() instanceof Activity)) {
      h = ((Activity)getContext()).getRequestedOrientation();
    }
    if (getAdUnit() != null)
    {
      w = getAdUnitr;
      return;
    }
    kg.a(3, d, "adunit is Null");
  }
  
  private Uri a(String paramString)
  {
    localObject3 = null;
    try
    {
      kg.a(3, d, "Precaching: Getting video from cache: " + paramString);
      File localFile = i.a().l().b(getAdObject(), paramString);
      localObject1 = localObject3;
      if (localFile != null) {
        localObject1 = Uri.parse("file://" + localFile.getAbsolutePath());
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject1;
        kg.a(3, d, "Precaching: Error accessing cached file.", localException);
        Object localObject2 = localObject3;
      }
    }
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      kg.a(3, d, "Precaching: Error using cached file. Loading with url: " + paramString);
      localObject3 = Uri.parse(paramString);
    }
    return (Uri)localObject3;
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    if (!(getContext() instanceof Activity)) {
      kg.a(3, d, "no activity present");
    }
    Activity localActivity;
    do
    {
      do
      {
        return;
        localActivity = (Activity)getContext();
      } while (s != null);
      kg.a(3, d, "expand(" + paramInt1 + "," + paramInt2 + ")");
      i.a().d().b(getContext());
      i.a().e().a(getContext());
      if ((g != null) && (-1 != indexOfChild(g))) {
        removeView(g);
      }
      r = localActivity.getRequestedOrientation();
      if (t == null)
      {
        t = new FrameLayout(localActivity);
        t.setBackgroundColor(-16777216);
        if ((g != null) && (g.getParent() == null)) {
          t.addView(g, new FrameLayout.LayoutParams(-1, -1, 17));
        }
      }
      if (s == null)
      {
        s = new Dialog(localActivity, 16973834);
        fl.a(s.getWindow());
        s.setContentView(t, new ViewGroup.LayoutParams(-1, -1));
        s.setOnDismissListener(new gs.6(this));
        s.setCancelable(true);
        s.show();
      }
      if (!x) {
        break;
      }
      if (h())
      {
        ez.a(localActivity, 1);
        return;
      }
    } while (!(getAdObject() instanceof t));
    ez.a(localActivity);
    return;
    ez.a(localActivity, ez.a(), true);
  }
  
  private void a(a parama)
  {
    int i1 = lr.f();
    int i2 = lr.g();
    kg.a(3, d, "expand to width = " + i1 + " height = " + i2);
    s locals = parama.c().b();
    au localau = parama.c().c();
    if (((locals instanceof t)) && (((t)locals).y() != null))
    {
      a(bb.h, Collections.emptyMap(), localau, 0);
      a(i1, i2);
    }
    if (cb.containsKey("url"))
    {
      a = ((String)cb.get("url"));
      localau.a(true);
      fi.a(getContext(), a, false, locals, true, false);
    }
  }
  
  private void a(gu paramgu)
  {
    kg.a(6, d, "show Video dialog.");
    a locala = b;
    int i1 = c;
    if (z != null) {
      kg.a(6, d, "Already showing a dialog.");
    }
    AlertDialog.Builder localBuilder;
    do
    {
      return;
      if (!isViewAttachedToActivity())
      {
        kg.a(6, d, "View not attached to any window.");
        return;
      }
      localBuilder = new AlertDialog.Builder(getContext());
      String str2 = locala.a("message");
      String str1 = locala.a("confirmDisplay");
      String str3 = locala.a("cancelDisplay");
      if ((!TextUtils.isEmpty(str2)) && (!TextUtils.isEmpty(str1)))
      {
        paramgu = str3;
        if (!TextUtils.isEmpty(str3)) {}
      }
      else
      {
        str2 = "Are you sure?";
        str1 = "Cancel";
        paramgu = "OK";
      }
      localBuilder.setMessage(str2);
      localBuilder.setCancelable(false);
      localBuilder.setPositiveButton(paramgu, new gs.2(this, locala, i1));
      localBuilder.setNegativeButton(str1, new gs.3(this, locala, i1));
    } while ((e == null) || (!isViewAttachedToActivity()));
    z = localBuilder.create();
    z.show();
    e.u();
  }
  
  private void a(String paramString, gj paramgj)
  {
    if (paramString == null) {
      return;
    }
    Context localContext = getContext();
    if (e == null)
    {
      e = gi.a(localContext, paramgj, getAdObject(), C);
      e.setVideoUri(a(paramString));
      e.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
      e.initLayout();
    }
    addView(e);
  }
  
  private boolean a()
  {
    try
    {
      boolean bool = i;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void b()
  {
    try
    {
      if (!a())
      {
        d();
        setFlurryJsEnvInitialized(true);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    if (!(getContext() instanceof Activity)) {
      kg.a(3, d, "no activity present");
    }
    do
    {
      Activity localActivity;
      do
      {
        return;
        localActivity = (Activity)getContext();
        i.a().d().c(getContext());
        i.a().e().b(getContext());
      } while (s == null);
      kg.a(3, d, "collapse(" + paramInt1 + "," + paramInt2 + ")");
      if ((s != null) && (s.isShowing()))
      {
        s.hide();
        s.setOnDismissListener(null);
        s.dismiss();
      }
      s = null;
      ez.a(localActivity, r);
      if (t != null)
      {
        if ((g != null) && (-1 != t.indexOfChild(g))) {
          t.removeView(g);
        }
        t = null;
      }
    } while ((g == null) || (g.getParent() != null));
    addView(g);
  }
  
  private void b(a parama)
  {
    int i2 = getCurrentAdFramed.a;
    int i1 = getCurrentAdFramed.b;
    i2 = lr.b(i2);
    i1 = lr.b(i1);
    if (a != null)
    {
      a = null;
      initLayout();
    }
    parama = parama.c().b();
    if (((parama instanceof t)) && (((t)parama).y() != null)) {
      b(i2, i1);
    }
  }
  
  private void b(String paramString)
  {
    kn localkn = new kn();
    localkn.a(paramString);
    localkn.d(10000);
    localkn.b(new lc());
    localkn.a(new gs.5(this, paramString));
    jq.a().a(this, localkn);
  }
  
  private void c()
  {
    try
    {
      setFlurryJsEnvInitialized(false);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void c(String paramString)
  {
    if (g != null)
    {
      kg.a(3, d, "Callcomplete " + paramString);
      g.loadUrl("javascript:flurryadapter.callComplete('" + paramString + "');");
    }
  }
  
  private void d()
  {
    kg.a(3, d, "initializeFlurryJsEnv");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("javascript:(function() {");
    localStringBuilder.append("var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial){return\"\"}if(this.c&&typeof partial==\"string\"){partial=this.c.compile(partial,this.options)}return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0){return false}if(typeof val==\"function\"){val=this.ls(val,ctx,partials,inverted,start,end,tags)}pass=(val===\"\")||!!val;if(!inverted&&pass&&ctx){ctx.push((typeof val==\"object\")?val:ctx[ctx.length-1])}return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2])){return ctx[ctx.length-1]}for(var i=1;i<names.length;i++){if(val&&typeof val==\"object\"&&names[i] in val){cx=val;val=val[names[i]]}else{val=\"\"}}if(returnFound&&!val){return false}if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found){return(returnFound)?false:\"\"}if(!returnFound&&typeof val==\"function\"){val=this.lv(val,ctx,partials)}return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var text=val.call(cx,text);text=(text==null)?String(text):text.toString();this.b(compiler.compile(text,options).render(cx,partials));return false},b:(useArrayBuffer)?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:(useArrayBuffer)?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0){return this.ho(val,cx,partials,this.text.substring(start,end),tags)}t=val.call(cx);if(typeof t==\"function\"){if(inverted){return true}else{if(this.c){return this.ho(t,cx,partials,this.text.substring(start,end),tags)}}}return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\"){result=coerceToString(result.call(cx));if(this.c&&~result.indexOf(\"{\\u007B\")){return this.c.compile(result,this.options).render(cx,partials)}}return coerceToString(result)}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\']/;function coerceToString(val){return String((val===null||val===undefined)?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,_v:8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=(tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes._v)||(!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null);if(!isAllWhitespace){return false}}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace()){for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\"){next.indent=tokens[j].toString()}tokens.splice(j,1)}}}else{if(!noNewLine){tokens.push({tag:\"\\n\"})}}seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++){if(state==IN_TEXT){if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else{if(text.charAt(i)==\"\\n\"){filterLine(seenTag)}else{buf+=text.charAt(i)}}}else{if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag){i++}state=IN_TAG}seenTag=i}else{if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:(tagType==\"/\")?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\"){if(ctag==\"}}\"){i++}else{cleanTripleStache(tokens[tokens.length-1])}}}else{buf+=text.charAt(i)}}}}filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\"){token.n=token.n.substring(0,token.n.length-1)}}function trim(s){if(s.trim){return s.trim()}return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0)){return false}for(var i=1,l=tag.length;i<l;i++){if(text.charAt(index+i)!=tag.charAt(i)){return false}}return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else{if(token.tag==\"/\"){if(stack.length===0){throw new Error(\"Closing tag without opener: /\"+token.n)}opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags)){throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n)}opener.end=token.i;return instructions}else{instructions.push(token)}}}if(stack.length>0){throw new Error(\"missing closing tag: \"+stack.pop().n)}return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].o==token.n){token.tag=\"#\";return true}}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].c==close&&tags[i].o==open){return true}}}Hogan.generate=function(tree,text,options){var code='var _=this;_.b(i=i||\"\");'+walk(tree)+\"return _.fl();\";if(options.asString){return\"function(c,p,i){\"+code+\";}\"}return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,'\\\\\"').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return(~s.indexOf(\".\"))?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\"){code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag)}else{if(tag==\"^\"){code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"<\"||tag==\">\"){code+=partial(tree[i])}else{if(tag==\"{\"||tag==\"&\"){code+=tripleStache(tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"\\n\"){code+=text('\"\\\\n\"'+(tree.length-1==i?\"\":\" + i\"))}else{if(tag==\"_v\"){code+=variable(tree[i].n,chooseMethod(tree[i].n))}else{if(tag===undefined){code+=text('\"'+esc(tree[i])+'\"')}}}}}}}}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),c,p,0,'+start+\",\"+end+',\"'+tags+'\")){_.rs(c,p,function(c,p,_){'+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),c,p,1,0,0,\"\")){'+walk(nodes)+\"};\"}function partial(tok){return'_.b(_.rp(\"'+esc(tok.n)+'\",c,p,\"'+(tok.indent||\"\")+'\"));'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function variable(id,method){return\"_.b(_.v(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t){return t}t=this.generate(this.parse(this.scan(text,options.delimiters),text,options),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);");
    localStringBuilder.append("var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(cmd.length > 0){try{if(window.mraid){ mraid.flurryBridgeListenerEvent(cmd);}}catch(error){ }} if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};");
    localStringBuilder.append("window.Hogan=Hogan;window.flurryadapter=flurryBridgeCtor(window);");
    localStringBuilder.append("window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === 'function'){window.FlurryAdapterReady();}");
    localStringBuilder.append("})();");
    if (g != null) {
      g.loadUrl(localStringBuilder.toString());
    }
  }
  
  private void e()
  {
    kg.a(3, d, "activateFlurryJsEnv");
    Object localObject2 = getCurrentContent();
    if ((localObject2 != null) && (((String)localObject2).length() > 0) && (!((String)localObject2).equals("{}")))
    {
      Object localObject1 = g.getUrl();
      String str1 = ma.b((String)localObject1);
      String str2 = ma.a(str1, (String)localObject1);
      localObject1 = localObject2;
      if (!TextUtils.isEmpty(str2))
      {
        localObject1 = localObject2;
        if (!str2.equals(str1))
        {
          kg.a(3, d, "content before {{mustached}} tags replacement = '" + (String)localObject2 + "'");
          localObject1 = ((String)localObject2).replace(str1, str2);
          kg.a(3, d, "content after {{mustached}} tags replacement = '" + (String)localObject1 + "'");
        }
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("javascript:");
      ((StringBuilder)localObject2).append("(function(){");
      ((StringBuilder)localObject2).append("if(!window.Hogan){var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial){return\"\"}if(this.c&&typeof partial==\"string\"){partial=this.c.compile(partial,this.options)}return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0){return false}if(typeof val==\"function\"){val=this.ls(val,ctx,partials,inverted,start,end,tags)}pass=(val===\"\")||!!val;if(!inverted&&pass&&ctx){ctx.push((typeof val==\"object\")?val:ctx[ctx.length-1])}return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2])){return ctx[ctx.length-1]}for(var i=1;i<names.length;i++){if(val&&typeof val==\"object\"&&names[i] in val){cx=val;val=val[names[i]]}else{val=\"\"}}if(returnFound&&!val){return false}if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found){return(returnFound)?false:\"\"}if(!returnFound&&typeof val==\"function\"){val=this.lv(val,ctx,partials)}return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var text=val.call(cx,text);text=(text==null)?String(text):text.toString();this.b(compiler.compile(text,options).render(cx,partials));return false},b:(useArrayBuffer)?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:(useArrayBuffer)?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0){return this.ho(val,cx,partials,this.text.substring(start,end),tags)}t=val.call(cx);if(typeof t==\"function\"){if(inverted){return true}else{if(this.c){return this.ho(t,cx,partials,this.text.substring(start,end),tags)}}}return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\"){result=coerceToString(result.call(cx));if(this.c&&~result.indexOf(\"{\\u007B\")){return this.c.compile(result,this.options).render(cx,partials)}}return coerceToString(result)}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\']/;function coerceToString(val){return String((val===null||val===undefined)?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,_v:8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=(tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes._v)||(!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null);if(!isAllWhitespace){return false}}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace()){for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\"){next.indent=tokens[j].toString()}tokens.splice(j,1)}}}else{if(!noNewLine){tokens.push({tag:\"\\n\"})}}seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++){if(state==IN_TEXT){if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else{if(text.charAt(i)==\"\\n\"){filterLine(seenTag)}else{buf+=text.charAt(i)}}}else{if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag){i++}state=IN_TAG}seenTag=i}else{if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:(tagType==\"/\")?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\"){if(ctag==\"}}\"){i++}else{cleanTripleStache(tokens[tokens.length-1])}}}else{buf+=text.charAt(i)}}}}filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\"){token.n=token.n.substring(0,token.n.length-1)}}function trim(s){if(s.trim){return s.trim()}return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0)){return false}for(var i=1,l=tag.length;i<l;i++){if(text.charAt(index+i)!=tag.charAt(i)){return false}}return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else{if(token.tag==\"/\"){if(stack.length===0){throw new Error(\"Closing tag without opener: /\"+token.n)}opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags)){throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n)}opener.end=token.i;return instructions}else{instructions.push(token)}}}if(stack.length>0){throw new Error(\"missing closing tag: \"+stack.pop().n)}return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].o==token.n){token.tag=\"#\";return true}}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].c==close&&tags[i].o==open){return true}}}Hogan.generate=function(tree,text,options){var code='var _=this;_.b(i=i||\"\");'+walk(tree)+\"return _.fl();\";if(options.asString){return\"function(c,p,i){\"+code+\";}\"}return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,'\\\\\"').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return(~s.indexOf(\".\"))?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\"){code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag)}else{if(tag==\"^\"){code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"<\"||tag==\">\"){code+=partial(tree[i])}else{if(tag==\"{\"||tag==\"&\"){code+=tripleStache(tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"\\n\"){code+=text('\"\\\\n\"'+(tree.length-1==i?\"\":\" + i\"))}else{if(tag==\"_v\"){code+=variable(tree[i].n,chooseMethod(tree[i].n))}else{if(tag===undefined){code+=text('\"'+esc(tree[i])+'\"')}}}}}}}}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),c,p,0,'+start+\",\"+end+',\"'+tags+'\")){_.rs(c,p,function(c,p,_){'+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+'(\"'+esc(id)+'\",c,p,1),c,p,1,0,0,\"\")){'+walk(nodes)+\"};\"}function partial(tok){return'_.b(_.rp(\"'+esc(tok.n)+'\",c,p,\"'+(tok.indent||\"\")+'\"));'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function variable(id,method){return\"_.b(_.v(_.\"+method+'(\"'+esc(id)+'\",c,p,0)));'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t){return t}t=this.generate(this.parse(this.scan(text,options.delimiters),text,options),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);window.Hogan=Hogan;}");
      ((StringBuilder)localObject2).append("if(!window.flurryadapter){var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(cmd.length > 0){try{if(window.mraid){ mraid.flurryBridgeListenerEvent(cmd);}}catch(error){ }} if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};window.flurryadapter=flurryBridgeCtor(window);}");
      ((StringBuilder)localObject2).append("if(!window.flurryAdapterAvailable){window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === 'function'){window.FlurryAdapterReady();} }");
      localObject1 = lt.g((String)localObject1);
      ((StringBuilder)localObject2).append("var content='");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("';var compiled=window.Hogan.compile(document.body.innerHTML);var rendered=compiled.render(JSON.parse(content));document.body.innerHTML=rendered;");
      ((StringBuilder)localObject2).append("})();");
      if (g != null) {
        g.loadUrl(((StringBuilder)localObject2).toString());
      }
    }
  }
  
  private void f()
  {
    kg.a(3, d, "closing ad unity view");
    if (e != null) {
      e.A();
    }
    onViewClose();
  }
  
  private void g()
  {
    g.loadUrl("javascript:(function() { document.getElementById('flurry_interstitial_close').style.display = 'none'; })()");
  }
  
  private cj getCurrentAdFrame()
  {
    return getAdController().j();
  }
  
  private int getCurrentBinding()
  {
    return getCurrentAdFramea;
  }
  
  private String getCurrentContent()
  {
    return getCurrentAdFramec;
  }
  
  private String getCurrentDisplay()
  {
    return getCurrentAdFrameb;
  }
  
  private String getCurrentFormat()
  {
    return getCurrentAdFramed.d;
  }
  
  private hj getWebViewFactory()
  {
    if (l == null)
    {
      l = new hj();
      kg.e("WebViewFactory:", "Created new WebViewFactory: " + l);
      return l;
    }
    return l;
  }
  
  private boolean h()
  {
    return getCurrentFormat().equals("takeover");
  }
  
  private void i()
  {
    if (!(getContext() instanceof Activity)) {}
    Activity localActivity;
    int i1;
    do
    {
      do
      {
        return;
        localActivity = (Activity)getContext();
      } while (!h());
      i1 = ez.a(localActivity, getAdUnitv);
    } while (-1 == i1);
    ez.a(localActivity, i1, true);
  }
  
  private void j()
  {
    if ((h()) && (!B))
    {
      B = true;
      A = new ci(getContext());
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(10);
      localLayoutParams.addRule(11);
      A.setDefaultLayoutParams(localLayoutParams);
      A.setOnClickListener(new gs.7(this));
      setMraidButtonVisibility(true);
      addView(A);
    }
  }
  
  private void setFlurryJsEnvInitialized(boolean paramBoolean)
  {
    try
    {
      i = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(bb parambb, Uri paramUri)
  {
    if (parambb.equals(bb.W))
    {
      parambb = paramUri.getQueryParameter("useCustomClose");
      if ((!TextUtils.isEmpty(parambb)) && (parambb.equals("true"))) {
        setMraidButtonVisibility(false);
      }
    }
    else
    {
      return;
    }
    setMraidButtonVisibility(true);
  }
  
  public void a(bb parambb, Map<String, String> paramMap, au paramau, int paramInt)
  {
    kg.a(3, d, "fireEvent(event=" + parambb + ",params=" + paramMap + ")");
    fa.a(parambb, paramMap, getContext(), getAdObject(), paramau, paramInt);
  }
  
  boolean a(View paramView)
  {
    paramView = paramView.getParent();
    return (paramView != null) && (paramView == this);
  }
  
  public void cleanupLayout()
  {
    if (e != null)
    {
      e.cleanupLayout();
      e = null;
    }
    kc.a().a(b);
  }
  
  public void initLayout()
  {
    kg.a(3, d, "initLayout: ad creative layout: {width = " + getCurrentAdFramed.a + ", height = " + getCurrentAdFramed.b + ", adFrameIndex = " + getAdController().c() + ", context = " + getContext() + "}");
    cleanupLayout();
    kc.a().a("com.flurry.android.impl.ads.views.AdViewEvent", b);
    Object localObject1 = getContext();
    removeAllViews();
    setFocusable(true);
    setFocusableInTouchMode(true);
    requestLayout();
    Object localObject2;
    switch (getCurrentBinding())
    {
    default: 
      localObject1 = new HashMap();
      ((Map)localObject1).put("errorCode", Integer.toString(ba.e.a()));
      a(bb.g, (Map)localObject1, getAdController(), 0);
      return;
    case 3: 
      a(getCurrentDisplay(), gj.c);
      return;
    case 2: 
      localObject2 = getAdController().d(getAdFrameIndex());
      if (localObject2 != null)
      {
        a(((fm)localObject2).f(), gj.a);
        return;
      }
      if (g == null)
      {
        getWebViewFactory().a();
        getWebViewFactory().a((Context)localObject1, getAdObject(), getCurrentAdFrame());
        g = getWebViewFactory().c();
        g.getSettings().setJavaScriptEnabled(true);
        g.setVerticalScrollBarEnabled(false);
        g.setHorizontalScrollBarEnabled(false);
        g.setBackgroundColor(0);
        g.clearCache(false);
        k = new gs.a(this, null);
        g.setWebChromeClient(k);
        j = new gs.b(this, null);
        g.setWebViewClient(j);
      }
      g.loadDataWithBaseURL("base://url/", getCurrentDisplay(), "text/html", "utf-8", "base://url/");
      if (getAdController().e(bb.f.a()))
      {
        a(bb.f, Collections.emptyMap(), getAdController(), 0);
        getAdController().f(bb.f.a());
      }
      if (v) {
        c("adLoadComplete");
      }
      g.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
      dismissProgressDialog();
      if (h()) {
        showProgressDialog();
      }
      i();
      return;
    }
    if (g == null)
    {
      getWebViewFactory().a();
      getWebViewFactory().a((Context)localObject1, getAdObject(), getCurrentAdFrame());
      g = getWebViewFactory().c();
      g.getSettings().setJavaScriptEnabled(true);
      g.setVerticalScrollBarEnabled(false);
      g.setHorizontalScrollBarEnabled(false);
      g.setBackgroundColor(0);
      g.clearCache(false);
      k = new gs.a(this, null);
      g.setWebChromeClient(k);
      j = new gs.b(this, null);
      g.setWebViewClient(j);
    }
    if (a != null) {
      b(a);
    }
    for (;;)
    {
      g.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
      dismissProgressDialog();
      if (h()) {
        showProgressDialog();
      }
      i();
      return;
      if (getAdFrameIndex() == 0)
      {
        localObject1 = getAdController().v();
        if (localObject1 == null)
        {
          b(getCurrentDisplay());
        }
        else
        {
          localObject2 = ma.c(getCurrentDisplay());
          g.loadDataWithBaseURL((String)localObject2, (String)localObject1, "text/html", "utf-8", (String)localObject2);
          if (getAdController().e(bb.f.a()))
          {
            a(bb.f, Collections.emptyMap(), getAdController(), 0);
            getAdController().f(bb.f.a());
          }
          if (v) {
            c("adLoadComplete");
          }
        }
      }
      else
      {
        b(getCurrentDisplay());
      }
    }
  }
  
  @TargetApi(11)
  public void onActivityDestroy()
  {
    kg.a(3, d, "onDestroy");
    if ((z != null) && (z.isShowing()))
    {
      z.dismiss();
      z = null;
    }
    dismissProgressDialog();
    if (e != null) {
      e.onActivityDestroy();
    }
    if (g != null)
    {
      if (k != null) {
        k.onHideCustomView();
      }
      if (s != null) {
        b(0, 0);
      }
      y = false;
      cleanupLayout();
      removeView(g);
      g.stopLoading();
      if (Build.VERSION.SDK_INT >= 11) {
        g.onPause();
      }
      g.destroy();
      g = null;
      getWebViewFactory().a();
      l = null;
    }
  }
  
  @TargetApi(11)
  public void onActivityPause()
  {
    if ((g != null) && (Build.VERSION.SDK_INT >= 11)) {
      g.onPause();
    }
    if (e != null) {
      e.onActivityPause();
    }
    f = false;
  }
  
  @TargetApi(11)
  public void onActivityResume()
  {
    kc.a().a("com.flurry.android.impl.ads.views.AdViewEvent", b);
    if ((g != null) && (Build.VERSION.SDK_INT >= 11))
    {
      f = true;
      g.onResume();
    }
    if (e != null) {
      e.onActivityResume();
    }
    if (e != null) {
      f = true;
    }
  }
  
  @TargetApi(11)
  public void onActivityStop()
  {
    if ((z != null) && (z.isShowing()))
    {
      z.dismiss();
      z = null;
    }
    if (e != null) {
      e.onActivityStop();
    }
    dismissProgressDialog();
  }
  
  public boolean onBackKey()
  {
    a(bb.u, Collections.emptyMap(), getAdController(), 0);
    return true;
  }
  
  protected void onViewLoadTimeout()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("errorCode", Integer.toString(ba.b.a()));
    fa.a(bb.u, localHashMap, getContext(), getAdObject(), getAdController(), 0);
  }
  
  public void setMraidButtonVisibility(boolean paramBoolean)
  {
    if (A != null)
    {
      if (paramBoolean) {
        A.setVisibility(0);
      }
    }
    else {
      return;
    }
    A.setVisibility(4);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */