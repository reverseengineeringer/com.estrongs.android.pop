.class public Lcom/estrongs/android/cleaner/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/estrongs/android/cleaner/a/a/b;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/cleaner/a/a/b;->b()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized a()Lcom/estrongs/android/cleaner/a/a/b;
    .locals 2

    const-class v1, Lcom/estrongs/android/cleaner/a/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/cleaner/a/a/b;->b:Lcom/estrongs/android/cleaner/a/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/cleaner/a/a/b;

    invoke-direct {v0}, Lcom/estrongs/android/cleaner/a/a/b;-><init>()V

    sput-object v0, Lcom/estrongs/android/cleaner/a/a/b;->b:Lcom/estrongs/android/cleaner/a/a/b;

    :cond_0
    sget-object v0, Lcom/estrongs/android/cleaner/a/a/b;->b:Lcom/estrongs/android/cleaner/a/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.alarmclock"

    const-string v2, "Alarm Clock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.inputmethod.latin"

    const-string v2, "Latin IME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.inputmethod.pinyin"

    const-string v2, "Chinese IME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.inputmethod.pinyin"

    const-string v2, "Google Pinyin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.providers.gmail"

    const-string v2, "Gmail Storage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.apps.gtalkservice"

    const-string v2, "Gtalk Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.googleapps"

    const-string v2, "GoogleApps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.process.gapps"

    const-string v2, "GoogleApps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.talk"

    const-string v2, "Google Talk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.gm"

    const-string v2, "Gmail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.providers.media"

    const-string v2, "Media Storage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.timsu.astrid"

    const-string v2, "Astrid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.mms"

    const-string v2, "MMS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.deskclock"

    const-string v2, "Desk Clock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.weather.Weather"

    const-string v2, "Weather"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.calendar"

    const-string v2, "Calendar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.voicedialer"

    const-string v2, "Voice Dialer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "android.process.media"

    const-string v2, "media"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.providers.calendar"

    const-string v2, "Provider Calendar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.clock"

    const-string v2, "clock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.providers.telephony"

    const-string v2, "Telephony"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.htc.AddProgramWidget"

    const-string v2, "Rosie Utility"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.svox.pico"

    const-string v2, "pico"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.heroled"

    const-string v2, "heroled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.tmobile.myfaves"

    const-string v2, "myfaves"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.music"

    const-string v2, "music"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.htc.android.worldclock"

    const-string v2, "worldclock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.htc.photo.widgets"

    const-string v2, "photo widget"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.htc.music"

    const-string v2, "htc music"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.htc.android.mail"

    const-string v2, "mail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.htc.elroy.Weather"

    const-string v2, "weather"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.htc.calendar"

    const-string v2, "calendar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.htc.htctwitter"

    const-string v2, "twitter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.htc.socialnetwork.accountmanager"

    const-string v2, "sns"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.mclaughlin.HeroLED"

    const-string v2, "heroLed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.vending"

    const-string v2, "vending"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.wallpaper"

    const-string v2, "wallpaper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.bluetooth"

    const-string v2, "bluetooth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.apps.uploader"

    const-string v2, "uploader"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.apps.maps:FriendService"

    const-string v2, "friendservice"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.widgetapp.weather"

    const-string v2, "weather"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.android.audioeffect"

    const-string v2, "audioeffect"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.widget.apncontrol"

    const-string v2, "apncontrol"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.thumbnailservice"

    const-string v2, "thumbnailservice"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.usb"

    const-string v2, "usb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.atcmd"

    const-string v2, "atcmd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.android.motophoneportal.androidui"

    const-string v2, "androidui"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.blur.home"

    const-string v2, "Blur"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.blur.home.other"

    const-string v2, "Blur_other"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.widgetapp.weather"

    const-string v2, "Weather"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.blur.service.blur"

    const-string v2, "Blur_Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.blur.service.main"

    const-string v2, "Blur_Service_Main"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.inputmethod.entry"

    const-string v2, "Moto_Input"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.photowidget"

    const-string v2, "Photowidget"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.widget.apncontrol"

    const-string v2, "Apncontrol"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "android.tts"

    const-string v2, "TTS_Service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.blur.providers.contact"

    const-string v2, "Contact_Provider"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.blur.contacts.data"

    const-string v2, "Contact_Data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.batterymanager"

    const-string v2, "batterymanager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.android.syncml.service"

    const-string v2, "syncml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.portal"

    const-string v2, "Mobile Desktop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.partnersetup"

    const-string v2, "Google Partner Setup"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.certificateprovider"

    const-string v2, "Certificate Manager Content Provider"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.cmp"

    const-string v2, "Connected Music Player"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.fingerprint"

    const-string v2, "Fingerprint Sensor"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.android.dm.service"

    const-string v2, "DMService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.android.provisioning"

    const-string v2, "OMA Client Provisioning"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.blur.alarmclock"

    const-string v2, "Alarm & Timer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.blur.conversations"

    const-string v2, "conversations"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.blur.datamanager.app"

    const-string v2, "Data Manager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.motorola.blur.providers.contacts"

    const-string v2, "Contacts Storage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "jp.co.sharp.android.home"

    const-string v2, "home"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "jp.co.sharp.android.majorupdate"

    const-string v2, "update"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "jp.co.sharp.android.wallpaper3d"

    const-string v2, "wallpaper3d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "jp.co.sharp.android.upnp.ipcservice"

    const-string v2, "ipcservice"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "jp.co.sharp.android.dlna.dms"

    const-string v2, "dms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.android.systemui"

    const-string v2, "systemui"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.dianxinos.app.theme"

    const-string v2, "theme"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.dianxinos.powermanager"

    const-string v2, "powermanager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.dianxinos.dxservices"

    const-string v2, "dxservices"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.estrongs.android.taskmanager"

    const-string v2, "ES Task Manager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.estrongs.android.safer"

    const-string v2, "EStrongs Security Manager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.estrongs.android.pop"

    const-string v2, "ES File Explorer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.estrongs.locker"

    const-string v2, "ES App Locker"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.sec.android.widgetapp.ap.hero.sinaweather.widget"

    const-string v2, "Sina Weather"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "Google Search Box"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.tencent.mm"

    const-string v2, "WeChat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.sohu.inputmethod.sogou"

    const-string v2, "Sogou Input Method"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.apps.inputmethod.hindi"

    const-string v2, "Google Hindi Input"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.apps.inputmethod.zhuyin"

    const-string v2, "Google Zhuyin Input"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.inputmethod.korean"

    const-string v2, "Google Korean Input"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.inputmethod.japanese"

    const-string v2, "Google Japanese Input"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.apps.inputmethod.cantonese"

    const-string v2, "Google Cantonese Input"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "com.azizhuss.arabic"

    const-string v2, "Arabic Input (Google TV)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    const-string v1, "sogou"

    const-string v2, "Google"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v2, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/cleaner/a/a/b;->b()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
