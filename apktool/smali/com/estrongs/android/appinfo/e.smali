.class Lcom/estrongs/android/appinfo/e;
.super Lcom/estrongs/android/pop/utils/cz;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/h;

.field final synthetic b:Landroid/os/ConditionVariable;

.field final synthetic c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;


# direct methods
.method constructor <init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Lcom/estrongs/fs/h;Landroid/os/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/appinfo/e;->c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iput-object p2, p0, Lcom/estrongs/android/appinfo/e;->a:Lcom/estrongs/fs/h;

    iput-object p3, p0, Lcom/estrongs/android/appinfo/e;->b:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Lcom/estrongs/android/pop/utils/cz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/utils/da;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v4, p0, Lcom/estrongs/android/appinfo/e;->a:Lcom/estrongs/fs/h;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    sget-boolean v4, Lcom/estrongs/android/pop/z;->x:Z

    if-nez v4, :cond_3

    :goto_0
    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v0, 0x0

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x0

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v0, p0, Lcom/estrongs/android/appinfo/e;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/appinfo/e;->c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v1, v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->f:Landroid/support/v4/e/g;

    iget-object v2, p0, Lcom/estrongs/android/appinfo/e;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/appinfo/e;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/appinfo/e;->c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v2, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->q:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/appinfo/e;->c:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v0, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->q:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/estrongs/android/appinfo/e;->a:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/estrongs/android/appinfo/f;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/appinfo/f;-><init>(Lcom/estrongs/android/appinfo/e;Ljava/util/List;)V

    invoke-static {v1}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/appinfo/e;->b:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/appinfo/e;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
