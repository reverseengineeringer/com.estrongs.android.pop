.class public Lcom/estrongs/android/e/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/net/wifi/WifiManager;

.field private final c:Landroid/content/IntentFilter;

.field private d:Lcom/estrongs/android/e/g;

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/e/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/e/e;->d:Lcom/estrongs/android/e/g;

    new-instance v0, Lcom/estrongs/android/e/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/e/f;-><init>(Lcom/estrongs/android/e/e;)V

    iput-object v0, p0, Lcom/estrongs/android/e/e;->e:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/estrongs/android/e/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/e/e;->d:Lcom/estrongs/android/e/g;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/estrongs/android/e/e;->b:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/e/e;->c:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/estrongs/android/e/e;->c:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/e/e;->c:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/estrongs/android/e/e;->d:Lcom/estrongs/android/e/g;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/estrongs/android/e/g;->b(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/e/e;->d:Lcom/estrongs/android/e/g;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/estrongs/android/e/g;->b(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/e/e;->d:Lcom/estrongs/android/e/g;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/estrongs/android/e/g;->b(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/e/e;->d:Lcom/estrongs/android/e/g;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/estrongs/android/e/g;->b(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/e/e;->d:Lcom/estrongs/android/e/g;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/estrongs/android/e/g;->b(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/estrongs/android/e/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/e/e;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/e/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/e/e;->e:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/estrongs/android/e/e;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public a(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/e/e;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/e/e;->d:Lcom/estrongs/android/e/g;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/estrongs/android/e/g;->b(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/e/e;->d:Lcom/estrongs/android/e/g;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/estrongs/android/e/g;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/e/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/e/e;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
