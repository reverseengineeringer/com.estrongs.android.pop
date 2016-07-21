.class Lcom/estrongs/android/recommand/provider/GlispaAppProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/af;


# instance fields
.field final synthetic this$0:Lcom/estrongs/android/recommand/provider/GlispaAppProvider;


# direct methods
.method constructor <init>(Lcom/estrongs/android/recommand/provider/GlispaAppProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider$1;->this$0:Lcom/estrongs/android/recommand/provider/GlispaAppProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCompleted(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider$1;->this$0:Lcom/estrongs/android/recommand/provider/GlispaAppProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    # setter for: Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mFilledTimestamp:J
    invoke-static {v0, v2, v3}, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->access$202(Lcom/estrongs/android/recommand/provider/GlispaAppProvider;J)J

    check-cast p1, Lcom/estrongs/android/util/aa;

    iget-object v0, p1, Lcom/estrongs/android/util/aa;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider$1;->this$0:Lcom/estrongs/android/recommand/provider/GlispaAppProvider;

    # invokes: Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->parseResponse()Ljava/util/List;
    invoke-static {v1}, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->access$300(Lcom/estrongs/android/recommand/provider/GlispaAppProvider;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider$1;->this$0:Lcom/estrongs/android/recommand/provider/GlispaAppProvider;

    const/4 v2, 0x0

    # setter for: Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mStatusCode:I
    invoke-static {v1, v2}, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->access$102(Lcom/estrongs/android/recommand/provider/GlispaAppProvider;I)I

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider$1;->this$0:Lcom/estrongs/android/recommand/provider/GlispaAppProvider;

    const/4 v3, 0x0

    # setter for: Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mStatusCode:I
    invoke-static {v2, v3}, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->access$102(Lcom/estrongs/android/recommand/provider/GlispaAppProvider;I)I

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method public downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    # getter for: Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->Tag:Ljava/lang/String;
    invoke-static {}, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadError!"

    invoke-static {v0, v1, p2}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/estrongs/android/recommand/provider/GlispaAppProvider$1;->this$0:Lcom/estrongs/android/recommand/provider/GlispaAppProvider;

    const/16 v1, 0xbb9

    # setter for: Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->mStatusCode:I
    invoke-static {v0, v1}, Lcom/estrongs/android/recommand/provider/GlispaAppProvider;->access$102(Lcom/estrongs/android/recommand/provider/GlispaAppProvider;I)I

    check-cast p1, Lcom/estrongs/android/util/aa;

    iget-object v0, p1, Lcom/estrongs/android/util/aa;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p1}, Lcom/estrongs/android/util/aa;->h()V

    return-void
.end method

.method public downloadProgress(Ljava/lang/Object;JJ)V
    .locals 0

    return-void
.end method

.method public downloadStarted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
