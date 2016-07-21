.class final Lcom/estrongs/android/pop/utils/df;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/af;


# instance fields
.field final synthetic a:Lcom/estrongs/android/util/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/util/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/df;->a:Lcom/estrongs/android/util/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCompleted(Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/df;->a:Lcom/estrongs/android/util/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/util/aa;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/de;->a(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/estrongs/android/pop/ad;->i(J)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sput-boolean v6, Lcom/estrongs/android/pop/utils/de;->b:Z

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/utils/de;->d()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1}, Lcom/estrongs/android/pop/utils/de;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/estrongs/android/pop/a;->u:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sput-boolean v6, Lcom/estrongs/android/pop/utils/de;->b:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    sput-boolean v6, Lcom/estrongs/android/pop/utils/de;->b:Z

    throw v0
.end method

.method public downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/utils/de;->b:Z

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
