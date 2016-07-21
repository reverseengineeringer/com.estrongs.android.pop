.class public Lcom/estrongs/android/l/k;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/IntentFilter;

.field private final c:Landroid/content/BroadcastReceiver;

.field private final d:Lcom/estrongs/android/l/o;

.field private e:Landroid/net/wifi/WifiManager;

.field private f:Lcom/estrongs/android/l/h;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/l/m;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/net/wifi/WifiInfo;

.field private i:Z

.field private j:Landroid/content/Context;

.field private k:Lcom/estrongs/android/l/q;

.field private l:Lcom/estrongs/android/l/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ES_"

    sput-object v0, Lcom/estrongs/android/l/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/l/n;Lcom/estrongs/android/l/j;Lcom/estrongs/android/l/q;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/l/k;->i:Z

    iput-object p1, p0, Lcom/estrongs/android/l/k;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/l/k;->l:Lcom/estrongs/android/l/n;

    iput-object p4, p0, Lcom/estrongs/android/l/k;->k:Lcom/estrongs/android/l/q;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/l/k;->b:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/estrongs/android/l/k;->b:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/l/k;->b:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/l/k;->b:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/l/k;->b:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/l/k;->b:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/l/k;->b:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/l/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/l/l;-><init>(Lcom/estrongs/android/l/k;)V

    iput-object v0, p0, Lcom/estrongs/android/l/k;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/estrongs/android/l/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/l/o;-><init>(Lcom/estrongs/android/l/k;Lcom/estrongs/android/l/l;)V

    iput-object v0, p0, Lcom/estrongs/android/l/k;->d:Lcom/estrongs/android/l/o;

    iget-object v0, p0, Lcom/estrongs/android/l/k;->j:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/estrongs/android/l/k;->e:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/estrongs/android/l/h;

    iget-object v1, p0, Lcom/estrongs/android/l/k;->j:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/estrongs/android/l/h;-><init>(Landroid/content/Context;Lcom/estrongs/android/l/j;)V

    iput-object v0, p0, Lcom/estrongs/android/l/k;->f:Lcom/estrongs/android/l/h;

    iget-object v0, p0, Lcom/estrongs/android/l/k;->f:Lcom/estrongs/android/l/h;

    invoke-virtual {v0}, Lcom/estrongs/android/l/h;->a()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/l/k;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/l/k;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/l/k;->e:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const-string p0, ""

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/l/k;->c(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/l/k;->f()V

    goto :goto_0

    :cond_2
    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/l/k;->f()V

    goto :goto_0

    :cond_3
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "newState"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/l/k;->a(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :cond_4
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/l/k;->a(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :cond_5
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/l/k;->a(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method private a(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/l/k;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/l/k;->d:Lcom/estrongs/android/l/o;

    invoke-virtual {v0}, Lcom/estrongs/android/l/o;->b()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/l/k;->d:Lcom/estrongs/android/l/o;

    invoke-virtual {v0}, Lcom/estrongs/android/l/o;->b()V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/l/k;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/l/k;->h:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/estrongs/android/l/k;->k:Lcom/estrongs/android/l/q;

    iget-object v1, p0, Lcom/estrongs/android/l/k;->h:Landroid/net/wifi/WifiInfo;

    invoke-interface {v0, v1, p1}, Lcom/estrongs/android/l/q;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    iget-object v0, p0, Lcom/estrongs/android/l/k;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/l/k;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/l/m;

    iget-object v2, p0, Lcom/estrongs/android/l/k;->h:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v2, p1}, Lcom/estrongs/android/l/m;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/l/k;->d:Lcom/estrongs/android/l/o;

    invoke-virtual {v0}, Lcom/estrongs/android/l/o;->a()V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/android/l/k;->i:Z

    if-eqz v0, :cond_4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_3

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_3

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/l/k;->i:Z

    :cond_4
    invoke-direct {p0}, Lcom/estrongs/android/l/k;->f()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/l/k;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/l/k;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private c(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/l/k;->d:Lcom/estrongs/android/l/o;

    invoke-virtual {v0}, Lcom/estrongs/android/l/o;->a()V

    invoke-direct {p0}, Lcom/estrongs/android/l/k;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/l/k;->d:Lcom/estrongs/android/l/o;

    invoke-virtual {v0}, Lcom/estrongs/android/l/o;->b()V

    iget-object v0, p0, Lcom/estrongs/android/l/k;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/l/k;->l:Lcom/estrongs/android/l/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/l/k;->l:Lcom/estrongs/android/l/n;

    invoke-interface {v0}, Lcom/estrongs/android/l/n;->d()V

    goto :goto_0
.end method

.method private f()V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/l/k;->l:Lcom/estrongs/android/l/n;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/l/k;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/l/m;

    iput-boolean v4, v0, Lcom/estrongs/android/l/m;->a:Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/l/k;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/l/k;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/l/m;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/l/m;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v7

    if-eqz v7, :cond_8

    iput-boolean v3, v1, Lcom/estrongs/android/l/m;->a:Z

    move v1, v4

    :goto_4
    move v2, v1

    goto :goto_3

    :cond_3
    if-nez v2, :cond_2

    new-instance v1, Lcom/estrongs/android/l/m;

    iget-object v2, p0, Lcom/estrongs/android/l/k;->j:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/estrongs/android/l/m;-><init>(Landroid/content/Context;Lcom/estrongs/android/l/k;Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v1}, Lcom/estrongs/android/l/m;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/estrongs/android/l/m;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/l/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/l/k;->g:Ljava/util/List;

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_5
    iput-boolean v3, v1, Lcom/estrongs/android/l/m;->a:Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/l/k;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/l/k;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_6
    if-ltz v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/l/k;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/l/m;

    iget-boolean v0, v0, Lcom/estrongs/android/l/m;->a:Z

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/l/k;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/l/k;->l:Lcom/estrongs/android/l/n;

    invoke-interface {v0}, Lcom/estrongs/android/l/n;->d()V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/l/k;->f:Lcom/estrongs/android/l/h;

    invoke-virtual {v0}, Lcom/estrongs/android/l/h;->a()V

    iget-object v0, p0, Lcom/estrongs/android/l/k;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/l/k;->c:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/estrongs/android/l/k;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public a(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 8

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/l/k;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    move v1, v2

    move-object v0, p1

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_5

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/l/k;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/l/k;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    :cond_2
    if-eq v0, v7, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/l/k;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget-object v1, p0, Lcom/estrongs/android/l/k;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    iget-object v1, p0, Lcom/estrongs/android/l/k;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iget-object v0, p0, Lcom/estrongs/android/l/k;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    iput-boolean v3, p0, Lcom/estrongs/android/l/k;->i:Z

    move v2, v3

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move-object p1, v0

    goto :goto_1
.end method

.method public a(I)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/l/k;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/l/m;

    invoke-virtual {v0}, Lcom/estrongs/android/l/m;->b()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/estrongs/android/l/m;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/l/k;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/l/k;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/l/m;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/l/k;->f:Lcom/estrongs/android/l/h;

    invoke-virtual {v0}, Lcom/estrongs/android/l/h;->b()V

    iget-object v0, p0, Lcom/estrongs/android/l/k;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/l/k;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/estrongs/android/l/k;->d:Lcom/estrongs/android/l/o;

    invoke-virtual {v0}, Lcom/estrongs/android/l/o;->b()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/l/k;->f:Lcom/estrongs/android/l/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/l/h;->a(Z)Z

    iget-object v0, p0, Lcom/estrongs/android/l/k;->d:Lcom/estrongs/android/l/o;

    invoke-virtual {v0}, Lcom/estrongs/android/l/o;->a()V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/l/k;->d:Lcom/estrongs/android/l/o;

    invoke-virtual {v0}, Lcom/estrongs/android/l/o;->b()V

    iget-object v0, p0, Lcom/estrongs/android/l/k;->f:Lcom/estrongs/android/l/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/l/h;->a(Z)Z

    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/l/k;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
