.class Lcom/estrongs/android/appinfo/i;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/fs/h;

.field final synthetic d:Lcom/estrongs/android/appinfo/v;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Z

.field final synthetic g:Lcom/estrongs/android/appinfo/AppFolderInfoManager;


# direct methods
.method constructor <init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/android/appinfo/v;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/appinfo/i;->g:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iput-object p2, p0, Lcom/estrongs/android/appinfo/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/appinfo/i;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/appinfo/i;->c:Lcom/estrongs/fs/h;

    iput-object p5, p0, Lcom/estrongs/android/appinfo/i;->d:Lcom/estrongs/android/appinfo/v;

    iput-object p6, p0, Lcom/estrongs/android/appinfo/i;->e:Landroid/content/Context;

    iput-boolean p7, p0, Lcom/estrongs/android/appinfo/i;->f:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/i;->g:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v0, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/i;->g:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    invoke-virtual {v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/i;->g:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v0, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/i;->g:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v1, p0, Lcom/estrongs/android/appinfo/i;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/appinfo/i;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/i;->g:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v0, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/appinfo/i;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/appinfo/i;->g:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    invoke-static {v2, v0, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/appinfo/i;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    :goto_2
    if-lez v0, :cond_2

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/appinfo/i;->g:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v3, v3, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v3, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->b(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    const-string v2, "/"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/i;->g:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v0, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/appinfo/i;->g:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v1, v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/appinfo/i;->g:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v0, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/appinfo/i;->d:Lcom/estrongs/android/appinfo/v;

    invoke-interface {v0}, Lcom/estrongs/android/appinfo/v;->a()V

    const-string v0, "http://www.estrongs.com/console/service/app_folder/share.php?f=%s&a=%s&i=%s"

    iget-object v1, p0, Lcom/estrongs/android/appinfo/i;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/appinfo/i;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->base64Encode([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/estrongs/android/appinfo/i;->b:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x2

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/appinfo/i;->f:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/appinfo/i;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/estrongs/android/util/aa;

    invoke-direct {v1, v0}, Lcom/estrongs/android/util/aa;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/appinfo/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/appinfo/j;-><init>(Lcom/estrongs/android/appinfo/i;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/aa;->a(Lcom/estrongs/android/util/af;)V

    invoke-virtual {v1}, Lcom/estrongs/android/util/aa;->c()V

    :cond_3
    return-void

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method
