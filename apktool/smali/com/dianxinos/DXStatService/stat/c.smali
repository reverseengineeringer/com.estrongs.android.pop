.class Lcom/dianxinos/DXStatService/stat/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/dianxinos/DXStatService/stat/b;


# direct methods
.method constructor <init>(Lcom/dianxinos/DXStatService/stat/b;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/DXStatService/stat/c;->a:Lcom/dianxinos/DXStatService/stat/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-wide/16 v0, 0x1

    const-wide/16 v8, -0x1

    iget-object v2, p0, Lcom/dianxinos/DXStatService/stat/c;->a:Lcom/dianxinos/DXStatService/stat/b;

    invoke-static {v2}, Lcom/dianxinos/DXStatService/stat/b;->a(Lcom/dianxinos/DXStatService/stat/b;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v6, 0xea60

    div-long v6, v2, v6

    iget-object v2, p0, Lcom/dianxinos/DXStatService/stat/c;->a:Lcom/dianxinos/DXStatService/stat/b;

    invoke-static {v2}, Lcom/dianxinos/DXStatService/stat/b;->b(Lcom/dianxinos/DXStatService/stat/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    sub-long v2, v6, v2

    cmp-long v5, v2, v0

    if-gez v5, :cond_2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/dianxinos/DXStatService/stat/c;->a:Lcom/dianxinos/DXStatService/stat/b;

    invoke-static {v2}, Lcom/dianxinos/DXStatService/stat/b;->b(Lcom/dianxinos/DXStatService/stat/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v2, p0, Lcom/dianxinos/DXStatService/stat/c;->a:Lcom/dianxinos/DXStatService/stat/b;

    invoke-static {v2}, Lcom/dianxinos/DXStatService/stat/b;->c(Lcom/dianxinos/DXStatService/stat/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/dianxinos/DXStatService/stat/c;->a:Lcom/dianxinos/DXStatService/stat/b;

    invoke-static {v5}, Lcom/dianxinos/DXStatService/stat/b;->c(Lcom/dianxinos/DXStatService/stat/b;)Ljava/lang/String;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_1
    return-void

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method
