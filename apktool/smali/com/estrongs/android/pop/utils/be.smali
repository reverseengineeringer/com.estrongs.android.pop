.class final Lcom/estrongs/android/pop/utils/be;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/fs/h;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[Z

.field final synthetic f:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/h;Ljava/lang/String;Ljava/lang/String;[ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/be;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/be;->b:Lcom/estrongs/fs/h;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/be;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/utils/be;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/android/pop/utils/be;->e:[Z

    iput-boolean p6, p0, Lcom/estrongs/android/pop/utils/be;->f:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/be;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/pop/utils/be;->b:Lcom/estrongs/fs/h;

    iget-object v3, p0, Lcom/estrongs/android/pop/utils/be;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/d;->b(Lcom/estrongs/fs/h;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/fs/FileExistException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/utils/be;->e:[Z

    aput-boolean v0, v2, v1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/utils/be;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/be;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/be;->a:Landroid/app/Activity;

    const v2, 0x7f080614

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/be;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/be;->a:Landroid/app/Activity;

    const v3, 0x7f08049c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileOperateUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to renameFile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/utils/be;->d:Ljava/lang/String;

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/utils/be;->a:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/pop/utils/be;->a:Landroid/app/Activity;

    const v5, 0x7f08049d

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
