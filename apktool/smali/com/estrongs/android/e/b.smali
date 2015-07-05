.class public Lcom/estrongs/android/e/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/net/wifi/WifiManager;

.field private c:Landroid/content/IntentFilter;

.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/net/ConnectivityManager;

.field private f:Lcom/estrongs/android/e/d;

.field private final g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/e/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/e/b;->f:Lcom/estrongs/android/e/d;

    new-instance v0, Lcom/estrongs/android/e/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/e/c;-><init>(Lcom/estrongs/android/e/b;)V

    iput-object v0, p0, Lcom/estrongs/android/e/b;->g:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/estrongs/android/e/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/e/b;->f:Lcom/estrongs/android/e/d;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/estrongs/android/e/b;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/estrongs/android/e/b;->e:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/estrongs/android/e/b;->a:Landroid/content/Context;

    const-string v1, "wifi_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/e/b;->d:Landroid/content/SharedPreferences;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "WIFI_AP_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/e/b;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "ACTION_TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/e/b;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/estrongs/android/e/b;->c:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/estrongs/android/e/b;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/e/b;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/e/b;->e:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/e/b;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/e/b;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method private a(I)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "WIFI_AP_STATE_ENABLING"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "WIFI_AP_STATE_ENABLED"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "WIFI_AP_STATE_DISABLING"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "WIFI_AP_STATE_DISABLED"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/e/b;->f:Lcom/estrongs/android/e/d;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/estrongs/android/e/d;->a(I)V

    :goto_0
    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/e/b;->f:Lcom/estrongs/android/e/d;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/estrongs/android/e/d;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/e/b;->f:Lcom/estrongs/android/e/d;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/estrongs/android/e/d;->a(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/e/b;->f:Lcom/estrongs/android/e/d;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/estrongs/android/e/d;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/e/b;->f:Lcom/estrongs/android/e/d;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/estrongs/android/e/d;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/e/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/e/b;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/e/b;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/e/b;->e:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/e/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/e/b;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/e/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/e/b;->g:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/estrongs/android/e/b;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public a(ZLandroid/net/wifi/WifiConfiguration;)Z
    .locals 7

    const/4 v1, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eqz p1, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lcom/estrongs/android/e/b;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wifi_saved_state"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setWifiApEnabled"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/net/wifi/WifiConfiguration;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/e/b;->f:Lcom/estrongs/android/e/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/estrongs/android/e/d;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/e/b;->d:Landroid/content/SharedPreferences;

    const-string v1, "wifi_saved_state"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/e/b;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lcom/estrongs/android/e/b;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wifi_saved_state"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/e/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/e/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
