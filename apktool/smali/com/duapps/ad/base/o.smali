.class Lcom/duapps/ad/base/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/duapps/ad/base/o;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/base/m;

.field private b:Lcom/duapps/ad/entity/AdData;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/duapps/ad/base/m;Lcom/duapps/ad/entity/AdData;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/base/o;->a:Lcom/duapps/ad/base/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/duapps/ad/base/o;->b:Lcom/duapps/ad/entity/AdData;

    return-void
.end method

.method private a(Lcom/duapps/ad/entity/AdData;ILjava/lang/String;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/duapps/ad/base/o;->a:Lcom/duapps/ad/base/m;

    move-object v1, p1

    move v2, p2

    move v3, p4

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/duapps/ad/base/m;->a(Lcom/duapps/ad/entity/AdData;IIJ)V

    new-instance v0, Lcom/duapps/ad/base/p;

    invoke-direct {v0}, Lcom/duapps/ad/base/p;-><init>()V

    iget-object v1, p1, Lcom/duapps/ad/entity/AdData;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/duapps/ad/base/p;->a:Ljava/lang/String;

    iput-object p3, v0, Lcom/duapps/ad/base/p;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/duapps/ad/base/p;->b:Ljava/lang/String;

    iput p2, v0, Lcom/duapps/ad/base/p;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duapps/ad/base/p;->e:J

    iget-object v1, p0, Lcom/duapps/ad/base/o;->a:Lcom/duapps/ad/base/m;

    invoke-static {v1}, Lcom/duapps/ad/base/m;->b(Lcom/duapps/ad/base/m;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/duapps/ad/stats/y;->a(Landroid/content/Context;)Lcom/duapps/ad/stats/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duapps/ad/stats/y;->a(Lcom/duapps/ad/base/p;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/duapps/ad/base/o;)I
    .locals 2

    iget-object v0, p1, Lcom/duapps/ad/base/o;->b:Lcom/duapps/ad/entity/AdData;

    iget v0, v0, Lcom/duapps/ad/entity/AdData;->z:I

    iget-object v1, p0, Lcom/duapps/ad/base/o;->b:Lcom/duapps/ad/entity/AdData;

    iget v1, v1, Lcom/duapps/ad/entity/AdData;->z:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/duapps/ad/entity/AdData;)V
    .locals 12

    const/4 v5, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v4, p1, Lcom/duapps/ad/entity/AdData;->h:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/base/o;->c:J

    :goto_0
    if-eqz v4, :cond_2

    const/16 v0, 0xa

    if-ge v5, v0, :cond_2

    add-int/lit8 v5, v5, 0x1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v1, "User-Agent"

    sget-object v2, Lcom/duapps/ad/base/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Pragma"

    const-string v2, "no-cache"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip,deflate"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x133

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12f

    if-ne v1, v2, :cond_7

    :cond_0
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/duapps/ad/stats/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/duapps/ad/base/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DONE [TCTP] url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/duapps/ad/base/o;->c:J

    sub-long/2addr v6, v10

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/duapps/ad/base/o;->a(Lcom/duapps/ad/entity/AdData;ILjava/lang/String;IJ)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    :try_start_2
    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/duapps/ad/base/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Middle LOC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    :goto_3
    :try_start_3
    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/duapps/ad/base/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DONE [TCTB] = EXCEPTION; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/duapps/ad/base/o;->c:J

    sub-long v6, v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/duapps/ad/base/o;->a(Lcom/duapps/ad/entity/AdData;ILjava/lang/String;IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :cond_7
    :try_start_4
    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/duapps/ad/base/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DONE [TCTB] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/duapps/ad/base/o;->c:J

    sub-long/2addr v6, v10

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/duapps/ad/base/o;->a(Lcom/duapps/ad/entity/AdData;ILjava/lang/String;IJ)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    :goto_4
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/duapps/ad/base/o;

    invoke-virtual {p0, p1}, Lcom/duapps/ad/base/o;->a(Lcom/duapps/ad/base/o;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/base/o;->b:Lcom/duapps/ad/entity/AdData;

    check-cast p1, Lcom/duapps/ad/base/o;

    iget-object v1, p1, Lcom/duapps/ad/base/o;->b:Lcom/duapps/ad/entity/AdData;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/entity/AdData;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/duapps/ad/base/o;->b:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/duapps/ad/base/o;->a:Lcom/duapps/ad/base/m;

    invoke-static {v1}, Lcom/duapps/ad/base/m;->a(Lcom/duapps/ad/base/m;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/duapps/ad/base/o;->a:Lcom/duapps/ad/base/m;

    invoke-static {v1}, Lcom/duapps/ad/base/m;->b(Lcom/duapps/ad/base/m;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/duapps/ad/stats/y;->a(Landroid/content/Context;)Lcom/duapps/ad/stats/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duapps/ad/stats/y;->a(Ljava/lang/String;)Lcom/duapps/ad/base/p;

    move-result-object v1

    iget v2, v1, Lcom/duapps/ad/base/p;->c:I

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/duapps/ad/base/p;->c:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/duapps/ad/base/o;->b:Lcom/duapps/ad/entity/AdData;

    invoke-virtual {p0, v1}, Lcom/duapps/ad/base/o;->a(Lcom/duapps/ad/entity/AdData;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/duapps/ad/base/o;->a:Lcom/duapps/ad/base/m;

    invoke-static {v1}, Lcom/duapps/ad/base/m;->a(Lcom/duapps/ad/base/m;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/duapps/ad/base/m;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DONE [CACHED] type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Lcom/duapps/ad/base/p;->c:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
