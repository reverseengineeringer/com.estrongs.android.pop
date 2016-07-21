.class Lcom/estrongs/android/b/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/af;


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/b/a/m;->a:Z

    iput-object p1, p0, Lcom/estrongs/android/b/a/m;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/b/a/m;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/b/a/m;->d:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public downloadCompleted(Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/b/a/m;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/android/b/a/m;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/b/a/m;->a:Z

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/b/a/m;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/estrongs/android/b/a/m;->a:Z

    goto :goto_1
.end method

.method public downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/b/a/m;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

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
