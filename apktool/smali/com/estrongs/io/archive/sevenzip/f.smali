.class public Lcom/estrongs/io/archive/sevenzip/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "7zip"

    sput-object v0, Lcom/estrongs/io/archive/sevenzip/f;->a:Ljava/lang/String;

    const-string v0, "zip"

    sput-object v0, Lcom/estrongs/io/archive/sevenzip/f;->b:Ljava/lang/String;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const-string v0, "_pie"

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/impl/local/m;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p7za_arm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.estrongs.com/resources/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p7za_x86"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p7za_mips"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/estrongs/io/archive/sevenzip/f;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/os/ConditionVariable;[ZLjava/lang/Runnable;ZLjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/estrongs/io/archive/sevenzip/f;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/os/ConditionVariable;[ZLjava/lang/Runnable;ZLjava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/Runnable;Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/estrongs/io/archive/sevenzip/f;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/estrongs/io/archive/sevenzip/f;->a(Ljava/lang/Runnable;Ljava/lang/String;[Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/Runnable;Ljava/lang/String;[Z)Z
    .locals 23

    const-class v22, Lcom/estrongs/io/archive/sevenzip/f;

    monitor-enter v22

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v22

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/estrongs/io/archive/sevenzip/f;->b(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance v5, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/p7za"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/io/archive/sevenzip/f;->a()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/estrongs/io/archive/sevenzip/f;->b(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/a;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v10, v1, [Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v10, v1

    if-nez p0, :cond_3

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/estrongs/fs/b/r;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    new-instance v4, Lcom/estrongs/fs/impl/local/f;

    invoke-direct {v4, v6}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    new-instance v9, Lcom/estrongs/fs/impl/local/f;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v11}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v2, v4, v9, v11}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/io/archive/sevenzip/g;

    move-object/from16 v0, p1

    invoke-direct {v2, v5, v10, v3, v0}, Lcom/estrongs/io/archive/sevenzip/g;-><init>(Ljava/io/File;[ZLandroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/r;->addPostListener(Lcom/estrongs/a/a/o;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/r;->execute(Z)V

    const/4 v1, 0x0

    aget-boolean v1, v10, v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    aget-boolean v1, v10, v1

    goto/16 :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    new-array v2, v1, [Z

    const/4 v1, 0x0

    const/4 v4, 0x0

    aput-boolean v4, v2, v1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/io/archive/sevenzip/a;->c()Z

    move-result v4

    aput-boolean v4, v2, v1

    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_a

    :cond_6
    new-instance v9, Landroid/os/ConditionVariable;

    invoke-direct {v9}, Landroid/os/ConditionVariable;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_9

    :cond_7
    new-instance v1, Lcom/estrongs/io/archive/sevenzip/h;

    move-object/from16 v4, p1

    move-object/from16 v11, p0

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v13}, Lcom/estrongs/io/archive/sevenzip/h;-><init>([ZLandroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;[ZLjava/lang/Runnable;Z[Z)V

    invoke-virtual {v3, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    if-eqz v12, :cond_8

    invoke-virtual {v9}, Landroid/os/ConditionVariable;->block()V

    :cond_8
    const/4 v1, 0x0

    aget-boolean v1, v10, v1

    goto/16 :goto_0

    :cond_9
    move-object v13, v3

    move-object v14, v8

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, p0

    move/from16 v20, v12

    move-object/from16 v21, p1

    invoke-static/range {v13 .. v21}, Lcom/estrongs/io/archive/sevenzip/f;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/os/ConditionVariable;[ZLjava/lang/Runnable;ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v22

    throw v1

    :cond_a
    if-eqz p0, :cond_b

    :try_start_2
    new-instance v1, Lcom/estrongs/io/archive/sevenzip/n;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/estrongs/io/archive/sevenzip/n;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const v0, 0x7f08029e

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static b(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/os/ConditionVariable;[ZLjava/lang/Runnable;ZLjava/lang/String;)V
    .locals 9

    new-instance v8, Lcom/estrongs/fs/b/r;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    new-instance v1, Lcom/estrongs/fs/impl/local/f;

    invoke-direct {v1, p3}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    new-instance v2, Lcom/estrongs/fs/impl/local/f;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/io/archive/sevenzip/o;

    move-object v1, p2

    move-object v2, p5

    move-object v3, p0

    move-object/from16 v4, p8

    move/from16 v5, p7

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/io/archive/sevenzip/o;-><init>(Ljava/io/File;[ZLandroid/app/Activity;Ljava/lang/String;ZLandroid/os/ConditionVariable;Ljava/lang/Runnable;)V

    invoke-virtual {v8, v0}, Lcom/estrongs/fs/b/r;->addPostListener(Lcom/estrongs/a/a/o;)V

    invoke-virtual {v8}, Lcom/estrongs/fs/b/r;->execute()V

    return-void
.end method
