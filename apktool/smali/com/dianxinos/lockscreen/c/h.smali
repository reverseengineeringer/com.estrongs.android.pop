.class public Lcom/dianxinos/lockscreen/c/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z

.field private static b:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    sput-boolean v0, Lcom/dianxinos/lockscreen/c/h;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 10

    const/4 v9, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x2

    const/4 v0, -0x1

    invoke-static {p0}, Lcom/dianxinos/lockscreen/c/h;->d(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    sget-boolean v6, Lcom/dianxinos/lockscreen/c/h;->a:Z

    if-eqz v6, :cond_2

    const-string v6, "NetworkUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "network type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eq v5, v3, :cond_3

    if-eq v5, v9, :cond_3

    const/16 v6, 0x9

    if-ne v5, v6, :cond_4

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    const/4 v3, 0x7

    if-ne v5, v3, :cond_8

    if-lez v4, :cond_8

    :cond_5
    if-eq v4, v2, :cond_6

    const/4 v0, 0x5

    if-eq v4, v0, :cond_6

    if-eq v4, v9, :cond_6

    const/16 v0, 0x8

    if-eq v4, v0, :cond_6

    const/16 v0, 0x9

    if-eq v4, v0, :cond_6

    const/16 v0, 0xa

    if-eq v4, v0, :cond_6

    const/16 v0, 0xc

    if-eq v4, v0, :cond_6

    const/16 v0, 0xd

    if-eq v4, v0, :cond_6

    const/16 v0, 0xe

    if-eq v4, v0, :cond_6

    const/16 v0, 0xf

    if-ne v4, v0, :cond_7

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-eq v5, v1, :cond_0

    const/4 v2, 0x7

    if-eq v5, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 3

    const/4 v1, 0x4

    invoke-static {p0}, Lcom/dianxinos/lockscreen/c/h;->a(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    if-nez v2, :cond_1

    const/16 v2, 0xd

    if-ne v2, v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/dianxinos/lockscreen/c/h;->d(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    sget-object v0, Lcom/dianxinos/lockscreen/c/h;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/dianxinos/lockscreen/c/h;->b:Landroid/net/ConnectivityManager;

    :cond_0
    sget-object v0, Lcom/dianxinos/lockscreen/c/h;->b:Landroid/net/ConnectivityManager;

    return-object v0
.end method
