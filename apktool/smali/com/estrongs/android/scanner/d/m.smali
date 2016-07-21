.class public final Lcom/estrongs/android/scanner/d/m;
.super Lcom/estrongs/android/scanner/d/t;


# static fields
.field private static c:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/estrongs/android/pop/app/imageviewer/gallery/g",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/scanner/d/q;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/scanner/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/estrongs/android/scanner/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/jcraft/jsch/jce/MD5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;-><init>(I)V

    sput-object v0, Lcom/estrongs/android/scanner/d/m;->c:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/scanner/d/m;->f:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/estrongs/android/scanner/d/t;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/m;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/m;->h:Ljava/util/List;

    new-instance v0, Lcom/jcraft/jsch/jce/MD5;

    invoke-direct {v0}, Lcom/jcraft/jsch/jce/MD5;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/m;->i:Lcom/jcraft/jsch/jce/MD5;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/m;->i:Lcom/jcraft/jsch/jce/MD5;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jce/MD5;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/estrongs/android/scanner/d/m;->f:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/scanner/d/m;->g()J

    move-result-wide v0

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/m;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last path id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v2, Lcom/estrongs/android/scanner/d/m;->f:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/d/m;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/m;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/scanner/d/m;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/m;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c()Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    .locals 1

    sget-object v0, Lcom/estrongs/android/scanner/d/m;->c:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/scanner/d/m;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/m;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/scanner/d/m;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/m;->h:Ljava/util/List;

    return-object v0
.end method

.method private g()J
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/m;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/d/a;->b()V

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/m;->b:Lcom/estrongs/android/scanner/d/a;

    const-string v3, "directory"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "max(_id)"

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4, v7, v7}, Lcom/estrongs/android/scanner/d/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/m;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/d/a;->close()V

    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/m;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/d/a;->close()V

    goto :goto_0
.end method

.method private h()V
    .locals 9

    const/4 v0, 0x0

    const/4 v4, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/scanner/d/m;->d:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/scanner/d/m;->e:Ljava/util/Map;

    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v1, 0x1

    const-string v2, "path"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "lastmodified"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "isLogPath"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "pathtype"

    aput-object v2, v3, v1

    new-instance v1, Lcom/estrongs/android/scanner/d/n;

    invoke-direct {v1, p0}, Lcom/estrongs/android/scanner/d/n;-><init>(Lcom/estrongs/android/scanner/d/m;)V

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x3e8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit16 v8, v0, 0x3e8

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/m;->b:Lcom/estrongs/android/scanner/d/a;

    const-string v2, "directory"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/l;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v0, v8

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/estrongs/android/scanner/a/c;)J
    .locals 5

    sget-object v0, Lcom/estrongs/android/scanner/d/m;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    new-instance v2, Lcom/estrongs/android/scanner/d/q;

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/c;->g()Z

    move-result v3

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/c;->h()I

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/estrongs/android/scanner/d/q;-><init>(JZI)V

    sget-object v3, Lcom/estrongs/android/scanner/d/m;->c:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/estrongs/android/scanner/a/c;->a(J)V

    invoke-super {p0, p1}, Lcom/estrongs/android/scanner/d/t;->a(Lcom/estrongs/android/scanner/a/c;)J

    return-wide v0
.end method

.method public final a(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/scanner/d/m;->e(Ljava/lang/String;)Lcom/estrongs/android/scanner/d/q;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/q;->a()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "directory"

    return-object v0
.end method

.method public final a(Lcom/estrongs/android/scanner/a/b;)V
    .locals 5

    sget-object v0, Lcom/estrongs/android/scanner/d/m;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/estrongs/android/scanner/a/b;->a(J)V

    new-instance v2, Lcom/estrongs/android/scanner/d/q;

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/b;->g()Z

    move-result v3

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/b;->h()I

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/estrongs/android/scanner/d/q;-><init>(JZI)V

    sget-object v0, Lcom/estrongs/android/scanner/d/m;->c:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/scanner/d/s;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/scanner/d/s;-><init>(Lcom/estrongs/android/scanner/d/m;Lcom/estrongs/android/scanner/a/b;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/d/m;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add dir to insert:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/scanner/d/w;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/scanner/d/r;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/scanner/d/r;-><init>(Lcom/estrongs/android/scanner/d/m;Lcom/estrongs/android/scanner/d/w;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/d/m;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/m;->a:Ljava/lang/String;

    const-string v1, "send store:"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/c;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/m;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final b()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/scanner/d/m;->h()V

    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/estrongs/android/scanner/a/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/m;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/c;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/estrongs/android/scanner/d/m;->c:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->b(Ljava/lang/Object;)V

    new-instance v0, Lcom/estrongs/android/scanner/d/p;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/scanner/d/p;-><init>(Lcom/estrongs/android/scanner/d/m;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/d/m;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send deleteDirectory:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/estrongs/android/scanner/d/q;
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try get dir store information for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/scanner/d/m;->c:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/d/q;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/m;->a:Ljava/lang/String;

    const-string v1, "!!!!!DirStoreInfo not get from cache, try DB!!!!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "isLogPath"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "pathtype"

    aput-object v1, v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/estrongs/android/scanner/d/o;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/scanner/d/o;-><init>(Lcom/estrongs/android/scanner/d/m;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/m;->b:Lcom/estrongs/android/scanner/d/a;

    const-string v2, "directory"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/l;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/estrongs/android/scanner/d/m;->c:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/d/q;

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/m;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/scanner/d/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
