.class public Lcom/estrongs/android/pop/utils/ad;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/estrongs/android/pop/utils/al;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/lang/Object;

.field public static e:Z

.field public static f:Lcom/estrongs/android/pop/utils/ad;

.field private static volatile g:I

.field private static h:Ljava/lang/String;


# instance fields
.field public b:Lcom/estrongs/android/pop/utils/ai;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/hide2.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/utils/ad;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/utils/ad;->c:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/utils/ad;->d:Ljava/lang/Object;

    sput-boolean v2, Lcom/estrongs/android/pop/utils/ad;->e:Z

    sput v2, Lcom/estrongs/android/pop/utils/ad;->g:I

    new-instance v0, Lcom/estrongs/android/pop/utils/ad;

    invoke-direct {v0}, Lcom/estrongs/android/pop/utils/ad;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/utils/ad;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/pop/utils/ai;

    const-string v1, "root"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/pop/utils/ai;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/ad;->b:Lcom/estrongs/android/pop/utils/ai;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/ad;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/ad;->j:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x200

    new-array v0, v0, [B

    invoke-virtual {p1, v0, v2, p2}, Ljava/io/InputStream;->read([BII)I

    aput-byte v2, v0, p2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file:///"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FILE:///"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    sget-object v1, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    monitor-enter v1

    :try_start_0
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "FILE://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/estrongs/android/pop/utils/ad;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/utils/ah;

    move-result-object v0

    iget-object p0, v0, Lcom/estrongs/android/pop/utils/ah;->a:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/utils/ad;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/utils/ah;

    move-result-object v0

    iget-object p0, v0, Lcom/estrongs/android/pop/utils/ah;->a:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sget-object v4, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    monitor-enter v4

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/ad;->a(Lcom/estrongs/fs/h;)Z

    move-result v5

    sget-object v6, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v8

    invoke-virtual {v8}, Lcom/estrongs/fs/w;->a()Z

    move-result v8

    invoke-virtual {v6, v7, v8, v2, v5}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/lang/String;ZLjava/util/List;Z)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/utils/ad;->b()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/utils/ad;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/utils/af;

    invoke-direct {v1, v2}, Lcom/estrongs/android/pop/utils/af;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-object v3

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a()V
    .locals 2

    sget-object v1, Lcom/estrongs/android/pop/utils/ad;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/utils/ad;Ljava/io/File;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/io/File;Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/utils/ai;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/utils/ai;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/utils/aj;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v2, 0x2

    if-nez p3, :cond_3

    iget-object v3, p1, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x0

    const/4 v0, 0x1

    if-ne p5, v0, :cond_5

    iget-object v0, p1, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_1
    iget-boolean v0, p1, Lcom/estrongs/android/pop/utils/ai;->b:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/pop/utils/aj;

    iget-boolean v1, p1, Lcom/estrongs/android/pop/utils/ai;->c:Z

    invoke-direct {v0, v3, v1, v4}, Lcom/estrongs/android/pop/utils/aj;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_2
    return-void

    :cond_3
    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    if-ne p5, v2, :cond_8

    if-eqz p4, :cond_7

    iget-object v0, p1, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v4, v0

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_8
    if-le p5, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    move v6, v0

    :goto_3
    iget-object v0, p1, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    iget-object v0, p1, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/utils/ai;

    add-int/lit8 v5, p5, 0x1

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/ad;->a(Lcom/estrongs/android/pop/utils/ai;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3
.end method

.method private a(Ljava/io/File;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-direct {p0, v3, p2}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/io/File;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 4

    invoke-static {p0}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/utils/ad;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/estrongs/android/pop/utils/ad;->c:Ljava/util/Set;

    new-instance v3, Lcom/estrongs/android/pop/utils/al;

    invoke-direct {v3, v0, p1}, Lcom/estrongs/android/pop/utils/al;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/utils/ad;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/utils/ad;->k(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/estrongs/android/pop/utils/ai;Lcom/estrongs/fs/h;I)Z
    .locals 5

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bE(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    sget-object v2, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    invoke-direct {v2, v1}, Lcom/estrongs/android/pop/utils/ad;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/utils/ah;

    move-result-object v2

    iget-boolean v1, v2, Lcom/estrongs/android/pop/utils/ah;->b:Z

    if-eqz v1, :cond_5

    iget-object v1, v2, Lcom/estrongs/android/pop/utils/ah;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/estrongs/android/pop/utils/ad;->d(Ljava/lang/String;I)Lcom/estrongs/android/pop/utils/ai;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    iget-object v0, v2, Lcom/estrongs/android/pop/utils/ah;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p0, v1

    move-object v1, v0

    :goto_1
    move v2, v3

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/ai;

    iget-boolean v4, v0, Lcom/estrongs/android/pop/utils/ai;->b:Z

    if-eqz v4, :cond_4

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method protected static a(Lcom/estrongs/fs/h;)Z
    .locals 2

    instance-of v0, p0, Lcom/estrongs/fs/impl/local/f;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const-string v0, "Android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DCIM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public static a([Lcom/estrongs/android/pop/utils/aj;)[Ljava/lang/String;
    .locals 3

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    iget-object v2, v2, Lcom/estrongs/android/pop/utils/aj;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/utils/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b(Ljava/io/InputStream;)I
    .locals 5

    const/4 v1, 0x0

    const/16 v0, 0x200

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    aget-byte v3, v2, v0

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    aput-byte v1, v2, v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v1, v0}, Ljava/lang/String;-><init>([BII)V

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static b()V
    .locals 8

    sget-object v1, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/estrongs/android/pop/utils/ad;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    const/4 v3, 0x0

    new-instance v4, Lcom/estrongs/android/pop/utils/am;

    sget-object v5, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/estrongs/android/pop/utils/am;-><init>(Lcom/estrongs/android/pop/utils/ad;ZI)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/estrongs/android/pop/utils/ad;->a(Lcom/estrongs/android/pop/utils/ai;Ljava/io/OutputStream;Lcom/estrongs/android/pop/utils/am;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/utils/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/ad;->b(Ljava/lang/String;)Z

    move-result v0

    sget-object v2, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    invoke-virtual {v2, p0, p1, v0}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/lang/String;Ljava/util/List;Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;I)Z
    .locals 6

    const/4 v2, 0x0

    sget-object v3, Lcom/estrongs/android/pop/utils/ad;->c:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v3

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/al;

    iget v5, v0, Lcom/estrongs/android/pop/utils/al;->b:I

    if-ne p1, v5, :cond_2

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v0, v0, Lcom/estrongs/android/pop/utils/al;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/hide2.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/utils/ad;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->h:Ljava/lang/String;

    sget-object v1, Lcom/estrongs/android/pop/utils/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/estrongs/android/pop/utils/ad;->g:I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/utils/ad;->b(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static c(Ljava/lang/String;I)V
    .locals 7

    sget-object v1, Lcom/estrongs/android/pop/utils/ad;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/al;

    iget v5, v0, Lcom/estrongs/android/pop/utils/al;->b:I

    if-ne v5, p1, :cond_1

    iget-object v5, v0, Lcom/estrongs/android/pop/utils/al;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_1

    iget-object v5, v0, Lcom/estrongs/android/pop/utils/al;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/estrongs/android/pop/utils/ad;->c:Ljava/util/Set;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;I)Lcom/estrongs/android/pop/utils/ai;
    .locals 3

    sget-object v1, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/lang/String;ZI)Lcom/estrongs/android/pop/utils/ai;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2f

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v0, 0x2f

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()V
    .locals 8

    const/4 v1, 0x1

    sget-object v2, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->a:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/utils/ad;->h:Ljava/lang/String;

    :cond_0
    sget v0, Lcom/estrongs/android/pop/utils/ad;->g:I

    if-ne v0, v1, :cond_1

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->a:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/utils/ad;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/estrongs/android/pop/utils/ad;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    const/4 v3, 0x0

    new-instance v4, Lcom/estrongs/android/pop/utils/ak;

    sget-object v5, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/estrongs/android/pop/utils/ak;-><init>(Lcom/estrongs/android/pop/utils/ad;ZI)V

    invoke-virtual {v1, v3, v0, v4}, Lcom/estrongs/android/pop/utils/ad;->a(Lcom/estrongs/android/pop/utils/ai;Ljava/io/InputStream;Lcom/estrongs/android/pop/utils/ak;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    const/4 v0, 0x1

    sput v0, Lcom/estrongs/android/pop/utils/ad;->g:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, Lcom/estrongs/android/pop/z;->l:Ljava/util/List;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/estrongs/android/pop/z;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v3, v5, v6}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/lang/String;ZLjava/util/List;Z)V

    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/utils/ad;->e:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const/4 v0, 0x2

    :try_start_3
    sput v0, Lcom/estrongs/android/pop/utils/ad;->g:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v0, Lcom/estrongs/android/pop/z;->l:Ljava/util/List;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/estrongs/android/pop/z;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v3, v5, v6}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/lang/String;ZLjava/util/List;Z)V

    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/utils/ad;->e:Z

    goto :goto_2

    :cond_3
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/estrongs/android/pop/z;->l:Ljava/util/List;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/estrongs/android/pop/z;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v4, v6, v7}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/lang/String;ZLjava/util/List;Z)V

    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/utils/ad;->e:Z

    goto :goto_3

    :cond_4
    throw v1

    :cond_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static e()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    sget-object v3, Lcom/estrongs/android/pop/z;->l:Ljava/util/List;

    invoke-virtual {v2, v3, v0}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/util/List;Ljava/util/List;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/pop/utils/ag;

    invoke-direct {v2, v0}, Lcom/estrongs/android/pop/utils/ag;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic e(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/estrongs/android/pop/utils/ad;->m(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/pop/utils/ad;->l(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static f()[Lcom/estrongs/android/pop/utils/aj;
    .locals 3

    sget v0, Lcom/estrongs/android/pop/utils/ad;->g:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/utils/ad;->d()V

    :cond_0
    sget-object v1, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/utils/ad;->f:Lcom/estrongs/android/pop/utils/ad;

    sget-object v2, Lcom/estrongs/android/pop/z;->l:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/utils/ad;->b(Ljava/util/List;)[Lcom/estrongs/android/pop/utils/aj;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "local"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(Ljava/lang/String;)Lcom/estrongs/android/pop/utils/ai;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ad;->b:Lcom/estrongs/android/pop/utils/ai;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ad;->b:Lcom/estrongs/android/pop/utils/ai;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    :cond_0
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ad;->b:Lcom/estrongs/android/pop/utils/ai;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ad;->b:Lcom/estrongs/android/pop/utils/ai;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/ai;

    iget-object v3, v0, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/pop/utils/ai;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v2, v1}, Lcom/estrongs/android/pop/utils/ai;-><init>(Ljava/lang/String;ZZ)V

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ad;->b:Lcom/estrongs/android/pop/utils/ai;

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private j(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".nomedia"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private k(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".nomedia"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "ES"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private static l(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".nomedia"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "ES"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method private static m(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/fs/impl/media/e;->g(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/impl/p/c;->b()Lcom/estrongs/fs/impl/p/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/p/c;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/fs/impl/v/c;->b()Lcom/estrongs/fs/impl/v/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/v/c;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/fs/impl/n/d;->b()Lcom/estrongs/fs/impl/n/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/n/d;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private n(Ljava/lang/String;)Lcom/estrongs/android/pop/utils/ah;
    .locals 11

    const/16 v10, 0x2f

    const/4 v1, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/utils/ah;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/estrongs/android/pop/utils/ah;-><init>(Lcom/estrongs/android/pop/utils/ad;Ljava/lang/String;Z)V

    :goto_0
    return-object v0

    :cond_0
    move v3, v5

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ad;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ad;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ad;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ad;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_2

    :cond_1
    new-instance v2, Lcom/estrongs/android/pop/utils/ah;

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ad;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ad;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v2, p0, v0, v1}, Lcom/estrongs/android/pop/utils/ah;-><init>(Lcom/estrongs/android/pop/utils/ad;Ljava/lang/String;Z)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/storage/emulated/legacy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "/storage/emulated/legacy/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v2, "/storage/emulated/legacy"

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/ad;->i:Ljava/util/ArrayList;

    const-string v3, "/storage/emulated/legacy"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/ad;->j:Ljava/util/ArrayList;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v1

    move-object v6, v0

    :goto_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/estrongs/android/pop/utils/ah;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v6, v1}, Lcom/estrongs/android/pop/utils/ah;-><init>(Lcom/estrongs/android/pop/utils/ad;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/estrongs/android/pop/utils/ah;

    invoke-direct {v0, p0, p1, v5}, Lcom/estrongs/android/pop/utils/ah;-><init>(Lcom/estrongs/android/pop/utils/ad;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    const-string v2, "/mnt/shell/sdcard0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "/mnt/shell/sdcard0/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_7
    const-string v2, "/mnt/shell/sdcard0"

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/ad;->i:Ljava/util/ArrayList;

    const-string v3, "/mnt/shell/sdcard0"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/ad;->j:Ljava/util/ArrayList;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v1

    move-object v6, v0

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    :goto_3
    if-ltz v3, :cond_f

    if-ltz v2, :cond_f

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_a

    if-ge v3, v1, :cond_f

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_9

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v10, :cond_f

    :cond_9
    :goto_4
    if-gez v1, :cond_d

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ad;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ad;->j:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    new-instance v0, Lcom/estrongs/android/pop/utils/ah;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v6, v1}, Lcom/estrongs/android/pop/utils/ah;-><init>(Lcom/estrongs/android/pop/utils/ad;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_c

    if-nez v4, :cond_c

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_b

    if-eqz v8, :cond_b

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_b
    add-int/lit8 v1, v3, -0x1

    add-int/lit8 v0, v2, -0x1

    :cond_c
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_d
    if-gez v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ad;->i:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ad;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    iget-object v2, p0, Lcom/estrongs/android/pop/utils/ad;->i:Ljava/util/ArrayList;

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ad;->j:Ljava/util/ArrayList;

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_f
    move v0, v2

    move v1, v3

    goto/16 :goto_4

    :cond_10
    move v4, v5

    move-object v6, v0

    goto/16 :goto_2
.end method

.method private o(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private p(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;ZI)Lcom/estrongs/android/pop/utils/ai;
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/utils/ad;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/utils/ah;

    move-result-object v0

    iget-object p1, v0, Lcom/estrongs/android/pop/utils/ah;->a:Ljava/lang/String;

    :cond_2
    invoke-static {p1, p3}, Lcom/estrongs/android/pop/utils/ad;->b(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/utils/ad;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/utils/ad;->i(Ljava/lang/String;)Lcom/estrongs/android/pop/utils/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move-object v4, v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/utils/ad;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v0, v7

    if-eqz v0, :cond_0

    aget-object v0, v7, v1

    if-eqz v0, :cond_5

    aget-object v0, v7, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    move v0, v2

    :goto_1
    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/utils/ad;->i(Ljava/lang/String;)Lcom/estrongs/android/pop/utils/ai;

    move-result-object v5

    move v3, v0

    move-object v0, v4

    :goto_2
    array-length v6, v7

    if-ge v3, v6, :cond_c

    iget-boolean v0, v5, Lcom/estrongs/android/pop/utils/ai;->b:Z

    if-eqz v0, :cond_6

    move p2, v2

    :cond_6
    iget-object v0, v5, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    if-eqz p2, :cond_0

    new-instance v4, Lcom/estrongs/android/pop/utils/ai;

    const-string v0, ""

    invoke-direct {v4, v0, v2, v2}, Lcom/estrongs/android/pop/utils/ai;-><init>(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    iget-object v0, v5, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v6, v1

    :goto_3
    iget-object v0, v5, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_9

    iget-object v0, v5, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/ai;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    aget-object v9, v7, v3

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v5, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/ai;

    move-object v5, v0

    :cond_9
    if-lt v6, v8, :cond_b

    if-eqz p2, :cond_0

    new-instance v4, Lcom/estrongs/android/pop/utils/ai;

    const-string v0, ""

    invoke-direct {v4, v0, v2, v2}, Lcom/estrongs/android/pop/utils/ai;-><init>(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    :cond_b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v5

    goto :goto_2

    :cond_c
    if-eqz v0, :cond_e

    iput-boolean p2, v0, Lcom/estrongs/android/pop/utils/ai;->e:Z

    :cond_d
    move-object v4, v0

    goto/16 :goto_0

    :cond_e
    if-eqz p2, :cond_d

    new-instance v4, Lcom/estrongs/android/pop/utils/ai;

    const-string v0, ""

    invoke-direct {v4, v0, v2, v2}, Lcom/estrongs/android/pop/utils/ai;-><init>(Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method public a(Lcom/estrongs/android/pop/utils/ai;Ljava/io/InputStream;Lcom/estrongs/android/pop/utils/ak;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    :goto_0
    const/4 v2, 0x0

    if-nez p1, :cond_b

    :try_start_0
    new-instance v2, Lcom/estrongs/android/pop/utils/ai;

    const-string v3, "root"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/pop/utils/ai;-><init>(Ljava/lang/String;ZZ)V

    move-object v3, v2

    move-object p1, v2

    :goto_1
    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/utils/ad;->b(Ljava/io/InputStream;)I

    move-result v2

    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    const/4 v3, 0x0

    iput v3, p3, Lcom/estrongs/android/pop/utils/ak;->b:I

    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/utils/ad;->b(Ljava/io/InputStream;)I

    move-result v2

    if-eqz p3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/estrongs/android/pop/utils/ak;->a:Z

    :cond_1
    :goto_2
    invoke-direct {p0, p2, v2}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/io/InputStream;)Z

    move-result v3

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/io/InputStream;)Z

    move-result v4

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/utils/ad;->b(Ljava/io/InputStream;)I

    move-result v5

    if-eqz p3, :cond_2

    iget-boolean v6, p3, Lcom/estrongs/android/pop/utils/ak;->a:Z

    if-eqz v6, :cond_2

    iget v6, p3, Lcom/estrongs/android/pop/utils/ak;->b:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/utils/ad;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iput-object v2, p1, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    iput-boolean v3, p1, Lcom/estrongs/android/pop/utils/ai;->b:Z

    iput-boolean v4, p1, Lcom/estrongs/android/pop/utils/ai;->c:Z

    if-lez v5, :cond_3

    iget-object v2, p1, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    :cond_3
    if-eqz p3, :cond_4

    iget v2, p3, Lcom/estrongs/android/pop/utils/ak;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p3, Lcom/estrongs/android/pop/utils/ak;->b:I

    :cond_4
    :goto_3
    if-ge v1, v5, :cond_8

    new-instance v2, Lcom/estrongs/android/pop/utils/ai;

    const-string v3, ""

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v4}, Lcom/estrongs/android/pop/utils/ai;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v2, p2, p3}, Lcom/estrongs/android/pop/utils/ad;->a(Lcom/estrongs/android/pop/utils/ai;Ljava/io/InputStream;Lcom/estrongs/android/pop/utils/ak;)V

    iget-object v3, p1, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    sput-boolean v3, Lcom/estrongs/android/pop/utils/ad;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_7

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/ad;->b:Lcom/estrongs/android/pop/utils/ai;

    :cond_7
    :goto_4
    return-void

    :cond_8
    if-eqz p3, :cond_9

    :try_start_2
    iget v1, p3, Lcom/estrongs/android/pop/utils/ak;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p3, Lcom/estrongs/android/pop/utils/ak;->b:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    if-eqz v0, :cond_7

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/ad;->b:Lcom/estrongs/android/pop/utils/ai;

    goto :goto_4

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_a

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/ad;->b:Lcom/estrongs/android/pop/utils/ai;

    :cond_a
    throw v1

    :cond_b
    move-object v3, v2

    goto/16 :goto_1
.end method

.method public a(Lcom/estrongs/android/pop/utils/ai;Ljava/io/OutputStream;Lcom/estrongs/android/pop/utils/am;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/estrongs/android/pop/utils/ad;->b:Lcom/estrongs/android/pop/utils/ai;

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    iput v1, p3, Lcom/estrongs/android/pop/utils/am;->b:I

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ad;->b:Lcom/estrongs/android/pop/utils/ai;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "-1 "

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    iget-object v1, p1, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    move v2, v0

    :goto_0
    iget-object v1, p1, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    if-eqz p3, :cond_2

    iget-boolean v3, p3, Lcom/estrongs/android/pop/utils/am;->a:Z

    if-eqz v3, :cond_2

    iget v3, p3, Lcom/estrongs/android/pop/utils/am;->b:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/utils/ad;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p1, Lcom/estrongs/android/pop/utils/ai;->b:Z

    if-eqz v1, :cond_5

    const-string v1, "1"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p1, Lcom/estrongs/android/pop/utils/ai;->c:Z

    if-eqz v1, :cond_6

    const-string v1, "1"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    if-eqz p3, :cond_3

    iget v1, p3, Lcom/estrongs/android/pop/utils/am;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p3, Lcom/estrongs/android/pop/utils/am;->b:I

    :cond_3
    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_7

    iget-object v0, p1, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/ai;

    invoke-virtual {p0, v0, p2, p3}, Lcom/estrongs/android/pop/utils/ad;->a(Lcom/estrongs/android/pop/utils/ai;Ljava/io/OutputStream;Lcom/estrongs/android/pop/utils/am;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    iget-object v1, p1, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    goto :goto_0

    :cond_5
    const-string v1, "0"

    goto :goto_1

    :cond_6
    const-string v1, "0"

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_8

    iget v0, p3, Lcom/estrongs/android/pop/utils/am;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lcom/estrongs/android/pop/utils/am;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    sget v2, Lcom/estrongs/android/pop/a;->v:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/estrongs/android/pop/utils/ad;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/utils/ad;->m(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/utils/ae;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/utils/ae;-><init>(Lcom/estrongs/android/pop/utils/ad;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->execute(Z)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/utils/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ad;->b:Lcom/estrongs/android/pop/utils/ai;

    move v1, v2

    move-object v3, v0

    :goto_0
    array-length v0, v6

    if-ge v1, v0, :cond_1

    iget-object v0, v3, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, v3, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v5

    :goto_1
    iget-object v0, v3, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    iget-object v0, v3, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/ai;

    aget-object v8, v6, v1

    iget-object v9, v0, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    if-ne v1, v8, :cond_6

    iget-object v8, v0, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_5

    :cond_3
    iget-object v0, v3, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_2
    sput-boolean v2, Lcom/estrongs/android/pop/utils/ad;->e:Z

    :cond_4
    :goto_3
    if-ge v4, v7, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    iput-boolean v5, v0, Lcom/estrongs/android/pop/utils/ai;->b:Z

    goto :goto_2

    :cond_6
    iget-object v0, v3, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/ai;

    move-object v3, v0

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/utils/ad;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;ZLjava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_f

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/utils/ad;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/utils/ah;

    move-result-object v0

    iget-object v1, v0, Lcom/estrongs/android/pop/utils/ah;->a:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/utils/ah;->b:Z

    move v8, v0

    :goto_1
    if-eqz p4, :cond_2

    invoke-virtual {p0, v1, p2, p3}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    const/4 v0, 0x0

    move v7, v0

    move-object v0, p1

    :goto_2
    const/4 v2, 0x2

    if-ge v7, v2, :cond_0

    const/4 v2, 0x1

    if-ne v7, v2, :cond_e

    :try_start_0
    sget-object v1, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v2, "Market"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v8, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    move-object v2, v0

    :goto_3
    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/utils/ad;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/utils/ad;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    aget-object v0, v9, v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/utils/ad;->i(Ljava/lang/String;)Lcom/estrongs/android/pop/utils/ai;

    move-result-object v3

    move-object v4, v3

    move v3, v0

    :goto_5
    array-length v0, v9

    if-ge v3, v0, :cond_a

    iget-object v0, v4, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    :cond_5
    iget-object v0, v4, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v0, 0x0

    move v5, v0

    :goto_6
    iget-object v0, v4, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_d

    aget-object v6, v9, v3

    iget-object v0, v4, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/ai;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/ai;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v4, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/ai;

    array-length v4, v9

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_c

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/estrongs/android/pop/utils/ai;->b:Z

    const/4 v4, 0x1

    sput-boolean v4, Lcom/estrongs/android/pop/utils/ad;->e:Z

    move-object v6, v0

    :goto_7
    if-lt v5, v10, :cond_b

    new-instance v5, Lcom/estrongs/android/pop/utils/ai;

    aget-object v10, v9, v3

    array-length v0, v9

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_8

    const/4 v0, 0x1

    :goto_8
    array-length v4, v9

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_9

    move v4, p2

    :goto_9
    invoke-direct {v5, v10, v0, v4}, Lcom/estrongs/android/pop/utils/ai;-><init>(Ljava/lang/String;ZZ)V

    iget-object v0, v6, Lcom/estrongs/android/pop/utils/ai;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/utils/ad;->e:Z

    move-object v4, v5

    :goto_a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    const/4 v4, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_b
    move-object v4, v6

    goto :goto_a

    :cond_c
    move-object v6, v0

    goto :goto_7

    :cond_d
    move-object v6, v4

    goto :goto_7

    :cond_e
    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_3

    :cond_f
    move v8, v0

    move-object v1, p1

    goto/16 :goto_1
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/utils/ad;->b(Ljava/util/List;)[Lcom/estrongs/android/pop/utils/aj;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/estrongs/android/pop/utils/aj;->b:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/estrongs/android/pop/utils/ad;->b(Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/List;)[Lcom/estrongs/android/pop/utils/aj;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/utils/aj;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/estrongs/android/pop/utils/aj;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/aj;

    iget-object v1, v0, Lcom/estrongs/android/pop/utils/aj;->b:Ljava/lang/String;

    const-string v5, "root/local"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/estrongs/android/pop/utils/aj;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v5, v0, Lcom/estrongs/android/pop/utils/aj;->c:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/aj;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/ad;->c(Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/utils/ad;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/utils/ah;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/ah;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/estrongs/android/pop/utils/aj;->c:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_0

    :cond_4
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/estrongs/android/pop/utils/ad;->b()V

    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/estrongs/android/pop/utils/aj;

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/aj;

    aput-object v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    return-object v1

    :cond_8
    move v1, v3

    goto :goto_2
.end method

.method public b(Ljava/util/List;)[Lcom/estrongs/android/pop/utils/aj;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/estrongs/android/pop/utils/aj;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ad;->b:Lcom/estrongs/android/pop/utils/ai;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/ad;->a(Lcom/estrongs/android/pop/utils/ai;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v2, p1}, Lcom/estrongs/android/pop/utils/ad;->a(Ljava/util/ArrayList;Ljava/util/List;)[Lcom/estrongs/android/pop/utils/aj;

    move-result-object v0

    return-object v0
.end method
