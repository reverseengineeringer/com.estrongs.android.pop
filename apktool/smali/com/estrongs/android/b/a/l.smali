.class Lcom/estrongs/android/b/a/l;
.super Ljava/lang/Object;


# direct methods
.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/fs/util/j;->n(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v2, Lcom/estrongs/android/b/a/m;

    invoke-direct {v2, v1, p1, v0}, Lcom/estrongs/android/b/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    new-instance v3, Lcom/estrongs/android/util/aa;

    invoke-direct {v3, p0}, Lcom/estrongs/android/util/aa;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/estrongs/android/util/aa;->a(Lcom/estrongs/android/util/af;)V

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    invoke-virtual {v3}, Lcom/estrongs/android/util/aa;->c()V

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    invoke-virtual {v3}, Lcom/estrongs/android/util/aa;->h()V

    iget-boolean v0, v2, Lcom/estrongs/android/b/a/m;->a:Z

    goto :goto_0
.end method
