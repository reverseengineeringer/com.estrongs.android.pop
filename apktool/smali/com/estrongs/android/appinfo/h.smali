.class Lcom/estrongs/android/appinfo/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/ab;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/appinfo/t;

.field final synthetic d:Lcom/estrongs/android/appinfo/AppFolderInfoManager;


# direct methods
.method constructor <init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/appinfo/t;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/appinfo/h;->d:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iput-object p2, p0, Lcom/estrongs/android/appinfo/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/appinfo/h;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/appinfo/h;->c:Lcom/estrongs/android/appinfo/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;JJ)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "AppFolder"

    const-string v1, "request app_folder_map update info failed !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/appinfo/h;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/appinfo/h;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/estrongs/android/appinfo/h;->d:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    invoke-static {v0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/appinfo/h;->d:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget v2, v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->q:I

    iget-object v3, p0, Lcom/estrongs/android/appinfo/h;->c:Lcom/estrongs/android/appinfo/t;

    invoke-interface {v3, v0}, Lcom/estrongs/android/appinfo/t;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->q:I

    iget-object v0, p0, Lcom/estrongs/android/appinfo/h;->d:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v1, p0, Lcom/estrongs/android/appinfo/h;->c:Lcom/estrongs/android/appinfo/t;

    invoke-static {v0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Lcom/estrongs/android/appinfo/t;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/h;->c:Lcom/estrongs/android/appinfo/t;

    invoke-interface {v0}, Lcom/estrongs/android/appinfo/t;->c()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/h;->c:Lcom/estrongs/android/appinfo/t;

    invoke-interface {v0}, Lcom/estrongs/android/appinfo/t;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/estrongs/android/appinfo/h;->c:Lcom/estrongs/android/appinfo/t;

    invoke-interface {v0}, Lcom/estrongs/android/appinfo/t;->c()V

    goto :goto_0
.end method
