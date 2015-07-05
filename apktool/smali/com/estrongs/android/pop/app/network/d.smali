.class Lcom/estrongs/android/pop/app/network/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/network/d;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/d;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->c(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/d;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aj()Z

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/d;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ah()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/d;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ai()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Random;-><init>(J)V

    const/16 v0, 0x2710

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v5, 0x3e7

    if-gt v0, v5, :cond_0

    add-int/lit16 v0, v0, 0x3e8

    :cond_0
    iget-object v5, p0, Lcom/estrongs/android/pop/app/network/d;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v6, v5, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/d;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a:Landroid/net/wifi/WifiConfiguration;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/d;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/d;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    const/16 v0, 0x3e8

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v4, 0x63

    if-gt v0, v4, :cond_1

    add-int/lit8 v0, v0, 0x64

    :cond_1
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/d;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a:Landroid/net/wifi/WifiConfiguration;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/d;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)Lcom/estrongs/android/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/d;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/e/a;->a(Landroid/net/wifi/WifiConfiguration;)V

    :cond_2
    return-void

    :cond_3
    iget-object v5, p0, Lcom/estrongs/android/pop/app/network/d;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    iget-object v5, v5, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a:Landroid/net/wifi/WifiConfiguration;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/estrongs/android/e/h;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/d;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a:Landroid/net/wifi/WifiConfiguration;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "00000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1
.end method
