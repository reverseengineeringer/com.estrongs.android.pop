.class public Lcom/estrongs/android/l/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/net/wifi/WifiConfiguration;

.field private b:Landroid/content/Context;

.field private c:Landroid/net/wifi/WifiManager;

.field private d:Lcom/estrongs/android/l/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/l/g;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/l/a;->a:Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/estrongs/android/l/a;->b:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/estrongs/android/l/a;->c:Landroid/net/wifi/WifiManager;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/l/a;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWifiApConfiguration"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/l/a;->c:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/estrongs/android/l/a;->a:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/estrongs/android/l/e;

    iget-object v1, p0, Lcom/estrongs/android/l/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/estrongs/android/l/e;-><init>(Landroid/content/Context;Lcom/estrongs/android/l/g;)V

    iput-object v0, p0, Lcom/estrongs/android/l/a;->d:Lcom/estrongs/android/l/e;

    iget-object v0, p0, Lcom/estrongs/android/l/a;->d:Lcom/estrongs/android/l/e;

    invoke-virtual {v0}, Lcom/estrongs/android/l/e;->a()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/l/a;->d:Lcom/estrongs/android/l/e;

    invoke-virtual {v0}, Lcom/estrongs/android/l/e;->a()V

    return-void
.end method

.method public a(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    iput-object p1, p0, Lcom/estrongs/android/l/a;->a:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/estrongs/android/l/a;->a:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/l/a;->d:Lcom/estrongs/android/l/e;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/l/a;->a:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/l/e;->a(ZLandroid/net/wifi/WifiConfiguration;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/l/a;->d:Lcom/estrongs/android/l/e;

    invoke-virtual {v0}, Lcom/estrongs/android/l/e;->b()V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/l/a;->d:Lcom/estrongs/android/l/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/l/e;->a(ZLandroid/net/wifi/WifiConfiguration;)Z

    return-void
.end method

.method public d()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/l/a;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getWifiApConfiguration"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/l/a;->c:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method
