.class public Lcom/estrongs/fs/impl/usb/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:[Lcom/estrongs/fs/impl/usb/g;

.field private static c:Ljava/lang/Object;

.field private static d:Z

.field private static e:Ljava/lang/String;

.field private static f:Lcom/estrongs/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/estrongs/fs/impl/usb/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/e;->a:Ljava/lang/String;

    sput-object v1, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/usb/e;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/fs/impl/usb/e;->d:Z

    sput-object v1, Lcom/estrongs/fs/impl/usb/e;->e:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/fs/impl/usb/f;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/usb/f;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/usb/e;->f:Lcom/estrongs/a/a/n;

    sget-object v0, Lcom/estrongs/fs/impl/usb/e;->f:Lcom/estrongs/a/a/n;

    invoke-static {v0}, Lcom/estrongs/a/a;->addTaskAllFinishedListener(Lcom/estrongs/a/a/n;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/hardware/usb/UsbDevice;)Lcom/estrongs/fs/impl/usb/g;
    .locals 9

    const/4 v0, 0x0

    sget-object v3, Lcom/estrongs/fs/impl/usb/e;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    monitor-exit v3

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    if-eqz v1, :cond_2

    sget-object v4, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    array-length v5, v4

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/g;->i()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    monitor-exit v3

    move-object v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    new-instance v3, Lcom/estrongs/a/q;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Lcom/estrongs/fs/impl/usb/fs/c;->f()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-lez v3, :cond_2

    if-eqz v1, :cond_0

    const/16 v2, 0xa

    new-instance v3, Lcom/estrongs/a/q;

    const-string v4, "offset > filesize"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/estrongs/fs/impl/usb/b;

    invoke-direct {v1, v2, p1, p2}, Lcom/estrongs/fs/impl/usb/b;-><init>(Lcom/estrongs/fs/impl/usb/fs/c;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/fs/w;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/w;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    sget-object v2, Lcom/estrongs/fs/impl/usb/e;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v3, 0xc

    if-ge v1, v3, :cond_0

    const/4 v0, 0x0

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/impl/usb/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/fs/impl/usb/e;->a()[Lcom/estrongs/fs/impl/usb/g;

    :cond_1
    sget-object v1, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    if-eqz v1, :cond_2

    sget-object v3, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    new-instance v6, Lcom/estrongs/fs/x;

    invoke-virtual {v5}, Lcom/estrongs/fs/impl/usb/g;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/estrongs/fs/impl/usb/g;->k()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, p0, v5}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;Lcom/estrongs/fs/w;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/a/b/o",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/e;->b(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/g;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/fs/impl/usb/e;->a(Lcom/estrongs/fs/impl/usb/g;)[Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v3

    :goto_0
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v4

    if-eqz v3, :cond_6

    array-length v5, v3

    :goto_1
    if-ge v2, v5, :cond_6

    aget-object v6, v3, v2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/estrongs/fs/impl/usb/fs/c;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/estrongs/fs/impl/usb/fs/c;->e()[Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-nez v6, :cond_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Lcom/estrongs/fs/impl/usb/fs/c;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Lcom/estrongs/fs/impl/usb/fs/c;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v6}, Lcom/estrongs/fs/impl/usb/fs/c;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".."

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Lcom/estrongs/fs/impl/usb/c;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lcom/estrongs/fs/impl/usb/fs/c;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/estrongs/fs/impl/usb/c;-><init>(Lcom/estrongs/fs/impl/usb/fs/c;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Lcom/estrongs/fs/i;->a(Lcom/estrongs/fs/h;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v7}, Lcom/estrongs/fs/impl/usb/c;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [J

    invoke-interface {p2, v6, v7}, Lcom/estrongs/a/b/o;->a(Ljava/lang/Object;[J)V

    invoke-interface {p2}, Lcom/estrongs/a/b/o;->a()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    :cond_6
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/estrongs/fs/impl/usb/e;->d:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [J

    invoke-interface {p2, p1, v1}, Lcom/estrongs/a/b/s;->a(Ljava/lang/Object;[J)V

    invoke-static {p1}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/estrongs/a/b/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    invoke-interface {v1}, Lcom/estrongs/fs/impl/usb/fs/c;->c()Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const v1, 0x7f0804a1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/estrongs/fs/impl/usb/fs/c;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "usb://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "usb://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/FileSystemException;

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v0, Lcom/estrongs/fs/FileExistException;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/FileExistException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/c;->c()Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/estrongs/fs/impl/usb/e;->a:Ljava/lang/String;

    const-string v1, "can not rename root dir"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v1, Lcom/estrongs/fs/impl/usb/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get the path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/estrongs/fs/impl/usb/fs/c;->d()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_2

    aget-object v7, v5, v2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v1, Lcom/estrongs/fs/impl/usb/e;->a:Ljava/lang/String;

    const-string v2, "The file exist."

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    invoke-interface {v3, v4}, Lcom/estrongs/fs/impl/usb/fs/c;->b(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v3, v4}, Lcom/estrongs/fs/impl/usb/fs/c;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static a(Lcom/estrongs/fs/impl/usb/g;)[Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/g;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/estrongs/fs/impl/usb/fs/c;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/g;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/g;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/a/b;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/a/b;->c()Lcom/estrongs/fs/impl/usb/fs/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/a;->a()Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public static a()[Lcom/estrongs/fs/impl/usb/g;
    .locals 5

    sget-object v1, Lcom/estrongs/fs/impl/usb/e;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v2, 0xc

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/g;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    invoke-static {}, Lcom/estrongs/fs/impl/usb/g;->a()[Lcom/estrongs/fs/impl/usb/g;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    sget-object v0, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/g;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "usb://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "usb://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    aget-object v2, v2, v1

    sget-object v3, Lcom/estrongs/fs/impl/usb/e;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    if-eqz v4, :cond_2

    :goto_1
    sget-object v4, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    sget-object v4, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/g;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    aget-object v0, v0, v1

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;J)Ljava/io/OutputStream;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/c;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    :try_start_2
    new-instance v0, Lcom/estrongs/fs/impl/usb/d;

    invoke-direct {v0, v1, p1, p2}, Lcom/estrongs/fs/impl/usb/d;-><init>(Lcom/estrongs/fs/impl/usb/fs/c;J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v0, v2}, Lcom/estrongs/fs/impl/usb/fs/c;->b(Lcom/estrongs/fs/impl/usb/fs/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0
.end method

.method public static b()[Lcom/estrongs/fs/impl/usb/g;
    .locals 2

    sget-object v1, Lcom/estrongs/fs/impl/usb/e;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 11

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v5, Lcom/estrongs/fs/impl/usb/e;->c:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    :try_start_1
    const-string v0, "usb://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v5

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "usb://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    if-gt v0, v4, :cond_2

    monitor-exit v5

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    aget-object v4, v6, v0

    move v0, v3

    :goto_1
    sget-object v7, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    array-length v7, v7

    if-ge v0, v7, :cond_c

    sget-object v7, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/estrongs/fs/impl/usb/g;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v4, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    aget-object v0, v4, v0

    :goto_2
    if-nez v0, :cond_4

    monitor-exit v5

    move-object v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    aget-object v4, v6, v4

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/g;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/a/b;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/a/b;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_3
    if-nez v0, :cond_6

    sget-object v0, Lcom/estrongs/fs/impl/usb/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFile file failed to get partion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const v3, 0x7f0804a1

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    :try_start_3
    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/a/b;->c()Lcom/estrongs/fs/impl/usb/fs/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/a;->a()Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v2

    const/4 v0, 0x2

    move v4, v0

    move-object v0, v2

    :goto_4
    array-length v2, v6

    if-ge v4, v2, :cond_9

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/c;->e()[Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v7

    array-length v8, v7

    move v2, v3

    :goto_5
    if-ge v2, v8, :cond_a

    aget-object v0, v7, v2

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/c;->b()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v6, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    :goto_6
    if-nez v0, :cond_8

    monitor-exit v5

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    :cond_9
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto :goto_6

    :cond_b
    move-object v0, v1

    goto :goto_3

    :cond_c
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public static c()Z
    .locals 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v3, 0xc

    if-ge v0, v3, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/impl/usb/g;->a()[Lcom/estrongs/fs/impl/usb/g;

    move-result-object v5

    sget-object v6, Lcom/estrongs/fs/impl/usb/e;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    array-length v0, v5

    sget-object v3, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    array-length v3, v3

    if-eq v0, v3, :cond_2

    :cond_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    array-length v7, v5

    move v4, v2

    :goto_1
    if-ge v4, v7, :cond_6

    aget-object v8, v5, v4

    sget-object v9, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    array-length v10, v9

    move v3, v2

    move v0, v2

    :goto_2
    if-ge v3, v10, :cond_4

    aget-object v11, v9, v3

    invoke-virtual {v8}, Lcom/estrongs/fs/impl/usb/g;->i()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/estrongs/fs/impl/usb/g;->i()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v0, v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    monitor-exit v6

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public static d()V
    .locals 5

    invoke-static {}, Lcom/estrongs/a/a;->isAllTaskFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/estrongs/fs/impl/usb/e;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/g;->e()V

    const/4 v4, 0x0

    sput-object v4, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static e()Z
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    sget-boolean v0, Lcom/estrongs/fs/impl/usb/e;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/ap;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/av;

    iget-object v0, v0, Lcom/estrongs/android/util/av;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/fs/impl/usb/e;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_3
    if-nez v2, :cond_4

    sget-object v0, Lcom/estrongs/fs/impl/usb/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get the path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-interface {v2, v5}, Lcom/estrongs/fs/impl/usb/fs/c;->b(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move-object v6, v2

    move-object v2, v3

    move-object v3, v6

    goto :goto_1
.end method

.method public static f(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/c;->f()J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/estrongs/fs/impl/usb/e;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/ap;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/av;

    iget-object v2, v0, Lcom/estrongs/android/util/av;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/util/av;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/e;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/fs/impl/usb/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/c;->a()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static h(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/c;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/usb/c;

    invoke-direct {v0, v2, p0}, Lcom/estrongs/fs/impl/usb/c;-><init>(Lcom/estrongs/fs/impl/usb/fs/c;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Lcom/estrongs/fs/c;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/e;->c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/fs/c;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/estrongs/fs/impl/usb/fs/c;->a()Z

    move-result v3

    iput-boolean v3, v0, Lcom/estrongs/fs/c;->d:Z

    iget-boolean v3, v0, Lcom/estrongs/fs/c;->d:Z

    if-eqz v3, :cond_2

    invoke-interface {v4}, Lcom/estrongs/fs/impl/usb/fs/c;->e()[Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v6, v5

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    invoke-interface {v7}, Lcom/estrongs/fs/impl/usb/fs/c;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, v0, Lcom/estrongs/fs/c;->f:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/estrongs/fs/c;->f:I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget v7, v0, Lcom/estrongs/fs/c;->g:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/estrongs/fs/c;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    const-string v3, "File"

    iput-object v3, v0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    invoke-interface {v4}, Lcom/estrongs/fs/impl/usb/fs/c;->f()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/estrongs/fs/c;->e:J

    :cond_3
    invoke-interface {v4}, Lcom/estrongs/fs/impl/usb/fs/c;->i()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/estrongs/fs/c;->j:J

    invoke-interface {v4}, Lcom/estrongs/fs/impl/usb/fs/c;->j()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/estrongs/fs/c;->h:J

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/estrongs/fs/c;->k:Z

    invoke-interface {v4}, Lcom/estrongs/fs/impl/usb/fs/c;->k()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_3
    iput-boolean v1, v0, Lcom/estrongs/fs/c;->l:Z

    invoke-interface {v4}, Lcom/estrongs/fs/impl/usb/fs/c;->l()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->m:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method public static j(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/estrongs/fs/impl/usb/e;->b(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/e;->m(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/a/b;->e()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/e;->m(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/a/b;->f()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static m(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/a/b;
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/estrongs/fs/impl/usb/e;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    :try_start_1
    const-string v3, "usb://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    if-nez v3, :cond_1

    :cond_0
    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const-string v3, "usb://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-ge v5, v7, :cond_2

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    aget-object v5, v4, v5

    :goto_1
    sget-object v6, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    array-length v6, v6

    if-ge v0, v6, :cond_a

    sget-object v6, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/estrongs/fs/impl/usb/g;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v5, Lcom/estrongs/fs/impl/usb/e;->b:[Lcom/estrongs/fs/impl/usb/g;

    aget-object v0, v5, v0

    :goto_2
    if-nez v0, :cond_4

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/g;->h()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v7, :cond_5

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/g;->h()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/a/b;

    :goto_3
    if-nez v0, :cond_8

    sget-object v0, Lcom/estrongs/fs/impl/usb/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFile file failed to get partion "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_5
    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_6

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_6
    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/g;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/a/b;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/a/b;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_8
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto :goto_3

    :cond_a
    move-object v0, v1

    goto :goto_2
.end method
