.class public Lcom/estrongs/android/e/j;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field private b:Landroid/net/wifi/ScanResult;

.field private c:Landroid/net/wifi/WifiInfo;

.field private d:Landroid/net/NetworkInfo$DetailedState;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/e/h;Landroid/net/wifi/ScanResult;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/e/j;->a:Z

    iput-object v1, p0, Lcom/estrongs/android/e/j;->b:Landroid/net/wifi/ScanResult;

    iput-object v1, p0, Lcom/estrongs/android/e/j;->c:Landroid/net/wifi/WifiInfo;

    iput-object v1, p0, Lcom/estrongs/android/e/j;->d:Landroid/net/NetworkInfo$DetailedState;

    iput-object p3, p0, Lcom/estrongs/android/e/j;->b:Landroid/net/wifi/ScanResult;

    iput-object p1, p0, Lcom/estrongs/android/e/j;->e:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/e/j;->b:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/e/j;->b:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/e/j;->b:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/estrongs/android/e/j;->c:Landroid/net/wifi/WifiInfo;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/estrongs/android/e/j;->d:Landroid/net/NetworkInfo$DetailedState;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v0, :cond_2

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v0, :cond_2

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v0, :cond_2

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v0, :cond_2

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_0

    :cond_2
    iput-object v2, p0, Lcom/estrongs/android/e/j;->c:Landroid/net/wifi/WifiInfo;

    iput-object v2, p0, Lcom/estrongs/android/e/j;->d:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_0
.end method

.method public a(Landroid/net/wifi/ScanResult;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/e/j;->b:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/e/j;->b:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/estrongs/android/e/j;->b:Landroid/net/wifi/ScanResult;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/e/j;->b:Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/e/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/estrongs/android/e/j;->d:Landroid/net/NetworkInfo$DetailedState;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    aput-object v1, v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/e/j;->d:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/e/j;->e:Landroid/content/Context;

    const v2, 0x7f0b008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/e/j;->d:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/e/j;->e:Landroid/content/Context;

    const v2, 0x7f0b0077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/e/j;->d:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/e/j;->e:Landroid/content/Context;

    const v2, 0x7f0b007a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/e/j;->d:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/e/j;->e:Landroid/content/Context;

    const v2, 0x7f0b0076

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/e/j;->d:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/e/j;->e:Landroid/content/Context;

    const v2, 0x7f0b0079

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/e/j;->b:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/e/j;->b:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/e/j;->b:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/e/j;->d:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public e()I
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/estrongs/android/e/j;->c:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/e/j;->c:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/e/j;->b:Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public f()Landroid/net/wifi/WifiInfo;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/e/j;->c:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method
