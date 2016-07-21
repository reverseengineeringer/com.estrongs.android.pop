package com.estrongs.android.cleaner.a.a;

import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import com.estrongs.android.pop.FexApplication;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class b
{
  private static b b;
  private Map<String, String> a = new HashMap();
  
  private b()
  {
    synchronized (a)
    {
      if (a.size() == 0) {
        b();
      }
      return;
    }
  }
  
  public static b a()
  {
    try
    {
      if (b == null) {
        b = new b();
      }
      b localb = b;
      return localb;
    }
    finally {}
  }
  
  private void b()
  {
    a.put("com.android.alarmclock", "Alarm Clock");
    a.put("com.android.inputmethod.latin", "Latin IME");
    a.put("com.android.inputmethod.pinyin", "Chinese IME");
    a.put("com.google.android.inputmethod.pinyin", "Google Pinyin");
    a.put("com.google.android.providers.gmail", "Gmail Storage");
    a.put("com.google.android.apps.gtalkservice", "Gtalk Service");
    a.put("com.google.android.googleapps", "GoogleApps");
    a.put("com.google.process.gapps", "GoogleApps");
    a.put("com.google.android.talk", "Google Talk");
    a.put("com.google.android.gm", "Gmail");
    a.put("com.android.providers.media", "Media Storage");
    a.put("com.timsu.astrid", "Astrid");
    a.put("com.android.mms", "MMS");
    a.put("com.android.deskclock", "Desk Clock");
    a.put("com.weather.Weather", "Weather");
    a.put("com.android.calendar", "Calendar");
    a.put("com.android.voicedialer", "Voice Dialer");
    a.put("android.process.media", "media");
    a.put("com.android.providers.calendar", "Provider Calendar");
    a.put("com.android.clock", "clock");
    a.put("com.android.providers.telephony", "Telephony");
    a.put("com.htc.AddProgramWidget", "Rosie Utility");
    a.put("com.svox.pico", "pico");
    a.put("com.android.heroled", "heroled");
    a.put("com.tmobile.myfaves", "myfaves");
    a.put("com.android.music", "music");
    a.put("com.htc.android.worldclock", "worldclock");
    a.put("com.htc.photo.widgets", "photo widget");
    a.put("com.htc.music", "htc music");
    a.put("com.htc.android.mail", "mail");
    a.put("com.htc.elroy.Weather", "weather");
    a.put("com.htc.calendar", "calendar");
    a.put("com.htc.htctwitter", "twitter");
    a.put("com.htc.socialnetwork.accountmanager", "sns");
    a.put("com.mclaughlin.HeroLED", "heroLed");
    a.put("com.android.vending", "vending");
    a.put("com.android.wallpaper", "wallpaper");
    a.put("com.android.bluetooth", "bluetooth");
    a.put("com.android.calendar", "calendar");
    a.put("com.google.android.apps.uploader", "uploader");
    a.put("com.google.android.apps.maps:FriendService", "friendservice");
    a.put("com.motorola.widgetapp.weather", "weather");
    a.put("com.motorola.android.audioeffect", "audioeffect");
    a.put("com.motorola.widget.apncontrol", "apncontrol");
    a.put("com.motorola.thumbnailservice", "thumbnailservice");
    a.put("com.motorola.usb", "usb");
    a.put("com.motorola.atcmd", "atcmd");
    a.put("com.motorola.android.motophoneportal.androidui", "androidui");
    a.put("com.motorola.blur.home", "Blur");
    a.put("com.motorola.blur.home.other", "Blur_other");
    a.put("com.motorola.widgetapp.weather", "Weather");
    a.put("com.motorola.blur.service.blur", "Blur_Service");
    a.put("com.motorola.blur.service.main", "Blur_Service_Main");
    a.put("com.motorola.inputmethod.entry", "Moto_Input");
    a.put("com.motorola.photowidget", "Photowidget");
    a.put("com.motorola.widget.apncontrol", "Apncontrol");
    a.put("android.tts", "TTS_Service");
    a.put("com.motorola.blur.providers.contact", "Contact_Provider");
    a.put("com.motorola.blur.contacts.data", "Contact_Data");
    a.put("com.motorola.batterymanager", "batterymanager");
    a.put("com.motorola.android.syncml.service", "syncml");
    a.put("com.android.portal", "Mobile Desktop");
    a.put("com.google.android.partnersetup", "Google Partner Setup");
    a.put("com.motorola.certificateprovider", "Certificate Manager Content Provider");
    a.put("com.motorola.cmp", "Connected Music Player");
    a.put("com.motorola.fingerprint", "Fingerprint Sensor");
    a.put("com.motorola.android.dm.service", "DMService");
    a.put("com.motorola.android.provisioning", "OMA Client Provisioning");
    a.put("com.motorola.blur.alarmclock", "Alarm & Timer");
    a.put("com.motorola.blur.conversations", "conversations");
    a.put("com.motorola.blur.datamanager.app", "Data Manager");
    a.put("com.motorola.blur.providers.contacts", "Contacts Storage");
    a.put("jp.co.sharp.android.home", "home");
    a.put("jp.co.sharp.android.majorupdate", "update");
    a.put("jp.co.sharp.android.wallpaper3d", "wallpaper3d");
    a.put("jp.co.sharp.android.upnp.ipcservice", "ipcservice");
    a.put("jp.co.sharp.android.dlna.dms", "dms");
    a.put("com.android.systemui", "systemui");
    a.put("com.dianxinos.app.theme", "theme");
    a.put("com.dianxinos.powermanager", "powermanager");
    a.put("com.dianxinos.dxservices", "dxservices");
    a.put("com.estrongs.android.taskmanager", "ES Task Manager");
    a.put("com.estrongs.android.safer", "EStrongs Security Manager");
    a.put("com.estrongs.android.pop", "ES File Explorer");
    a.put("com.estrongs.locker", "ES App Locker");
    a.put("com.sec.android.widgetapp.ap.hero.sinaweather.widget", "Sina Weather");
    a.put("com.google.android.googlequicksearchbox", "Google Search Box");
    a.put("com.tencent.mm", "WeChat");
    a.put("com.sohu.inputmethod.sogou", "Sogou Input Method");
    a.put("com.google.android.apps.inputmethod.hindi", "Google Hindi Input");
    a.put("com.google.android.apps.inputmethod.zhuyin", "Google Zhuyin Input");
    a.put("com.google.android.inputmethod.korean", "Google Korean Input");
    a.put("com.google.android.inputmethod.japanese", "Google Japanese Input");
    a.put("com.google.android.apps.inputmethod.cantonese", "Google Cantonese Input");
    a.put("com.azizhuss.arabic", "Arabic Input (Google TV)");
    a.put("sogou", "Google");
    Object localObject = ((InputMethodManager)FexApplication.a().getSystemService("input_method")).getEnabledInputMethodList();
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        InputMethodInfo localInputMethodInfo = (InputMethodInfo)((Iterator)localObject).next();
        a.put(localInputMethodInfo.getPackageName(), localInputMethodInfo.getServiceName());
      }
    }
  }
  
  public boolean a(String paramString)
  {
    synchronized (a)
    {
      if (a.size() == 0) {
        b();
      }
      boolean bool = a.containsKey(paramString);
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */