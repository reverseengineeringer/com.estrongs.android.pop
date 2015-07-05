.class public Lcom/estrongs/io/archive/aeszip/a;
.super Ljava/lang/Object;


# static fields
.field protected static a:I

.field static final synthetic f:Z

.field private static final j:Ljava/util/Set;

.field private static final k:Ljava/util/List;

.field private static final m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected b:Lde/a/a/a/a/h;

.field protected c:J

.field protected d:Ljava/io/File;

.field protected e:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/a/a/a/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private n:Lcom/estrongs/io/archive/aeszip/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/estrongs/io/archive/aeszip/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/estrongs/io/archive/aeszip/a;->f:Z

    const/16 v0, 0x2800

    sput v0, Lcom/estrongs/io/archive/aeszip/a;->a:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/estrongs/io/archive/aeszip/a;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/estrongs/io/archive/aeszip/a;->k:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/estrongs/io/archive/aeszip/a;->m:Landroid/util/SparseArray;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;ZLcom/estrongs/io/archive/aeszip/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GBK"

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/a;->h:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->i:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/io/archive/aeszip/a;->d:Ljava/io/File;

    new-instance v0, Lde/a/a/a/a/h;

    invoke-direct {v0, p1}, Lde/a/a/a/a/h;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iput-object p2, p0, Lcom/estrongs/io/archive/aeszip/a;->g:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/estrongs/io/archive/aeszip/a;->h:Z

    iput-object p4, p0, Lcom/estrongs/io/archive/aeszip/a;->n:Lcom/estrongs/io/archive/aeszip/b;

    invoke-virtual {p0}, Lcom/estrongs/io/archive/aeszip/a;->a()V

    iget-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/a;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/io/archive/aeszip/a;->h()V

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/io/archive/aeszip/a;->i()V

    return-void
.end method

.method public static final a(J)I
    .locals 6

    const-wide/32 v0, 0x10000

    const-wide/16 v2, 0x2000

    cmp-long v4, p0, v0

    if-lez v4, :cond_1

    move-wide p0, v0

    :cond_0
    :goto_0
    long-to-int v0, p0

    return v0

    :cond_1
    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    move-wide p0, v2

    goto :goto_0
.end method

.method static synthetic a(Ljava/io/InputStream;J[B)J
    .locals 3

    invoke-static {p0, p1, p2, p3}, Lcom/estrongs/io/archive/aeszip/a;->b(Ljava/io/InputStream;J[B)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/io/archive/aeszip/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/io/archive/aeszip/a;->f()V

    return-void
.end method

.method public static a(Lde/a/a/a/a/i;)V
    .locals 4

    invoke-virtual {p0}, Lde/a/a/a/a/i;->g()Lde/a/a/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/a/a/a/a/g;->i()S

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The compress method is not supported - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/a/a/a/a/i;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lde/a/a/a/a/i;->g()Lde/a/a/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lde/a/a/a/a/g;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lde/a/a/a/a/g;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lde/a/a/a/a/g;->j()B

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOT_SUPPORTED_ENC_ALG("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lde/a/a/a/a/i;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT_SUPPORTED_ENC_ALG - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/a/a/a/a/i;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method static synthetic a(Ljava/lang/String;JJ)V
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/estrongs/io/archive/aeszip/a;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic a(Ljava/util/zip/Inflater;)V
    .locals 0

    invoke-static {p0}, Lcom/estrongs/io/archive/aeszip/a;->b(Ljava/util/zip/Inflater;)V

    return-void
.end method

.method private static b(Ljava/io/InputStream;J[B)J
    .locals 11

    const-wide/16 v4, 0x0

    move-wide v2, v4

    :goto_0
    sub-long v0, p1, v2

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/4 v6, 0x0

    array-length v7, p3

    int-to-long v8, v7

    cmp-long v7, v0, v8

    if-gez v7, :cond_1

    long-to-int v0, v0

    :goto_1
    invoke-virtual {p0, p3, v6, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    int-to-long v0, v0

    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    :cond_0
    return-wide v2

    :cond_1
    array-length v0, p3

    goto :goto_1

    :cond_2
    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;JJ)V
    .locals 3

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CRC32 Error - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",expectedCrc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",actualCrc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Ljava/util/zip/Inflater;)V
    .locals 3

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->reset()V

    sget-object v1, Lcom/estrongs/io/archive/aeszip/a;->k:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/io/archive/aeszip/a;->k:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/io/archive/aeszip/a;->j:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic e()Ljava/util/zip/Inflater;
    .locals 1

    invoke-static {}, Lcom/estrongs/io/archive/aeszip/a;->g()Ljava/util/zip/Inflater;

    move-result-object v0

    return-object v0
.end method

.method private final f()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "ZIP file has been closed"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static g()Ljava/util/zip/Inflater;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/io/archive/aeszip/a;->k:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/estrongs/io/archive/aeszip/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/Inflater;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    if-eqz v0, :cond_0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    :cond_2
    sget-object v2, Lcom/estrongs/io/archive/aeszip/a;->j:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h()V
    .locals 13

    invoke-virtual {p0}, Lcom/estrongs/io/archive/aeszip/a;->d()S

    move-result v4

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v2, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    invoke-virtual {v0, v2, v3}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    const/4 v0, 0x0

    new-array v1, v0, [B

    const/4 v0, 0x0

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_0
    if-ge v1, v4, :cond_4

    iget-object v5, p0, Lcom/estrongs/io/archive/aeszip/a;->n:Lcom/estrongs/io/archive/aeszip/b;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/estrongs/io/archive/aeszip/a;->n:Lcom/estrongs/io/archive/aeszip/b;

    invoke-interface {v5}, Lcom/estrongs/io/archive/aeszip/b;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v5, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v5, v2, v3}, Lde/a/a/a/a/h;->a(J)I

    move-result v5

    int-to-long v6, v5

    const-wide/32 v8, 0x2014b50    # 1.6619997E-316

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected CENSIC not found at entry no "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in central directory at end of zip file at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v5, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v6, 0x1c

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lde/a/a/a/a/h;->b(J)S

    move-result v5

    iget-object v6, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v8, 0x1e

    add-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Lde/a/a/a/a/h;->b(J)S

    move-result v6

    iget-object v7, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v8, 0x20

    add-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Lde/a/a/a/a/h;->b(J)S

    move-result v7

    iget-object v8, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v10, 0x2a

    add-long/2addr v10, v2

    invoke-virtual {v8, v10, v11}, Lde/a/a/a/a/h;->a(J)I

    move-result v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    iget-object v10, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v10, v8, v9}, Lde/a/a/a/a/h;->a(J)I

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0x4034b50

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected LOCSIC not found at alleged position of data for file no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v8, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v10, 0x2e

    add-long/2addr v10, v2

    invoke-virtual {v8, v10, v11, v5}, Lde/a/a/a/a/h;->a(JI)[B

    move-result-object v8

    invoke-static {v0, v8}, Lcom/estrongs/android/util/f;->a([B[B)[B

    move-result-object v0

    array-length v8, v0

    const/16 v9, 0x400

    if-lt v8, v9, :cond_6

    :cond_4
    iget-boolean v1, p0, Lcom/estrongs/io/archive/aeszip/a;->h:Z

    if-eqz v1, :cond_0

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/estrongs/android/util/f;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->g:Ljava/lang/String;

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/a;->h:Z

    goto/16 :goto_1

    :cond_6
    const-wide/16 v8, 0x2e

    add-long/2addr v2, v8

    int-to-long v8, v5

    add-long/2addr v2, v8

    int-to-long v8, v6

    add-long/2addr v2, v8

    int-to-long v6, v7

    add-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private i()V
    .locals 14

    invoke-virtual {p0}, Lcom/estrongs/io/archive/aeszip/a;->d()S

    move-result v4

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v2, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    invoke-virtual {v0, v2, v3}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->n:Lcom/estrongs/io/archive/aeszip/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->n:Lcom/estrongs/io/archive/aeszip/b;

    invoke-interface {v0}, Lcom/estrongs/io/archive/aeszip/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v0, v2, v3}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    int-to-long v6, v0

    const-wide/32 v8, 0x2014b50    # 1.6619997E-316

    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected CENSIC not found at entry no "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in central directory at end of zip file at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v6, 0x1c

    add-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Lde/a/a/a/a/h;->b(J)S

    move-result v5

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v6, 0x1e

    add-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Lde/a/a/a/a/h;->b(J)S

    move-result v6

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v8, 0x20

    add-long/2addr v8, v2

    invoke-virtual {v0, v8, v9}, Lde/a/a/a/a/h;->b(J)S

    move-result v7

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v8, 0x2a

    add-long/2addr v8, v2

    invoke-virtual {v0, v8, v9}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    int-to-long v8, v0

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v0, v8, v9}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    int-to-long v8, v0

    const-wide/32 v10, 0x4034b50

    cmp-long v0, v8, v10

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected LOCSIC not found at alleged position of data for file no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v8, 0x2e

    add-long/2addr v8, v2

    invoke-virtual {v0, v8, v9, v5}, Lde/a/a/a/a/h;->a(JI)[B

    move-result-object v0

    new-instance v8, Lde/a/a/a/a/g;

    iget-object v9, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-direct {v8, v9, v2, v3}, Lde/a/a/a/a/g;-><init>(Lde/a/a/a/a/h;J)V

    new-instance v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/estrongs/io/archive/aeszip/a;->g:Ljava/lang/String;

    invoke-direct {v9, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lde/a/a/a/a/i;

    const/4 v10, 0x0

    invoke-direct {v0, v9, v10}, Lde/a/a/a/a/i;-><init>(Ljava/lang/String;Lde/a/a/a/a/g;)V

    :goto_1
    iget-object v9, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v10, 0xc

    add-long/2addr v10, v2

    invoke-virtual {v9, v10, v11}, Lde/a/a/a/a/h;->a(J)I

    move-result v9

    int-to-long v10, v9

    invoke-static {v10, v11}, Lde/a/a/a/a/i;->c(J)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lde/a/a/a/a/i;->setTime(J)V

    invoke-virtual {v8}, Lde/a/a/a/a/g;->d()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lde/a/a/a/a/g;->i()S

    move-result v9

    invoke-virtual {v0, v9}, Lde/a/a/a/a/i;->setMethod(I)V

    invoke-virtual {v8}, Lde/a/a/a/a/g;->f()J

    move-result-wide v10

    invoke-virtual {v8}, Lde/a/a/a/a/g;->k()I

    move-result v9

    int-to-long v12, v9

    add-long/2addr v10, v12

    invoke-virtual {v8}, Lde/a/a/a/a/g;->l()S

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lde/a/a/a/a/i;->a(J)V

    invoke-virtual {v0}, Lde/a/a/a/a/i;->a()V

    :goto_2
    iget-object v8, p0, Lcom/estrongs/io/archive/aeszip/a;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lde/a/a/a/a/i;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x2e

    add-long/2addr v2, v8

    int-to-long v8, v5

    add-long/2addr v2, v8

    int-to-long v8, v6

    add-long/2addr v2, v8

    int-to-long v6, v7

    add-long/2addr v2, v6

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lde/a/a/a/a/i;

    invoke-direct {v0, v9, v8}, Lde/a/a/a/a/i;-><init>(Ljava/lang/String;Lde/a/a/a/a/g;)V

    invoke-virtual {v8}, Lde/a/a/a/a/g;->b()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v0, v10, v11}, Lde/a/a/a/a/i;->setCompressedSize(J)V

    invoke-virtual {v8}, Lde/a/a/a/a/g;->c()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v0, v10, v11}, Lde/a/a/a/a/i;->setSize(J)V

    invoke-static {v0}, Lcom/estrongs/io/archive/aeszip/a;->a(Lde/a/a/a/a/i;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Lde/a/a/a/a/g;->i()S

    move-result v9

    invoke-virtual {v0, v9}, Lde/a/a/a/a/i;->setMethod(I)V

    invoke-virtual {v8}, Lde/a/a/a/a/g;->i()S

    move-result v9

    invoke-virtual {v0, v9}, Lde/a/a/a/a/i;->a(I)V

    invoke-virtual {v8}, Lde/a/a/a/a/g;->h()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lde/a/a/a/a/i;->a(J)V

    goto :goto_2
.end method


# virtual methods
.method protected a(Lde/a/a/a/a/i;Lde/a/a/a/a/b;)Ljava/io/InputStream;
    .locals 8

    new-instance v0, Lcom/estrongs/io/archive/aeszip/d;

    invoke-virtual {p1}, Lde/a/a/a/a/i;->e()J

    move-result-wide v2

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getCompressedSize()J

    move-result-wide v4

    const-wide/16 v6, 0x1c

    sub-long/2addr v4, v6

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/io/archive/aeszip/d;-><init>(Lcom/estrongs/io/archive/aeszip/a;JJLde/a/a/a/a/b;)V

    return-object v0
.end method

.method protected a(Lde/a/a/a/a/i;ZZ)Ljava/io/InputStream;
    .locals 6

    new-instance v0, Lcom/estrongs/io/archive/aeszip/e;

    invoke-virtual {p1}, Lde/a/a/a/a/i;->e()J

    move-result-wide v2

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getCompressedSize()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/io/archive/aeszip/e;-><init>(Lcom/estrongs/io/archive/aeszip/a;JJ)V

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/estrongs/io/archive/aeszip/a;->a(J)I

    move-result v2

    invoke-virtual {p1}, Lde/a/a/a/a/i;->getMethod()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    sget-boolean v1, Lcom/estrongs/io/archive/aeszip/a;->f:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this should already have been checked by mountCentralDirectory()"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :sswitch_0
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/io/archive/aeszip/e;->a()V

    new-instance v1, Lcom/estrongs/io/archive/aeszip/f;

    invoke-direct {v1, v0, v2}, Lcom/estrongs/io/archive/aeszip/f;-><init>(Ljava/io/InputStream;I)V

    if-eqz p2, :cond_2

    new-instance v0, Lcom/estrongs/io/archive/aeszip/c;

    invoke-direct {v0, v1, p1, v2}, Lcom/estrongs/io/archive/aeszip/c;-><init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;I)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_0

    new-instance v1, Lcom/estrongs/io/archive/aeszip/g;

    invoke-direct {v1, v0, p1, v2}, Lcom/estrongs/io/archive/aeszip/g;-><init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;I)V

    move-object v0, v1

    goto :goto_0

    :sswitch_1
    if-eqz p2, :cond_0

    new-instance v1, Lcom/estrongs/io/archive/aeszip/c;

    invoke-direct {v1, v0, p1, v2}, Lcom/estrongs/io/archive/aeszip/c;-><init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;I)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/io/a/b;)Ljava/io/InputStream;
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/a/a/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/io/archive/aeszip/a;->b(Lde/a/a/a/a/i;)V

    invoke-virtual {v0}, Lde/a/a/a/a/i;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lde/a/a/a/a/i;->g()Lde/a/a/a/a/g;

    move-result-object v1

    invoke-virtual {v0}, Lde/a/a/a/a/i;->e()J

    move-result-wide v4

    invoke-virtual {v1}, Lde/a/a/a/a/g;->l()S

    move-result v1

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const/16 v3, 0x10

    invoke-virtual {v1, v4, v5, v3}, Lde/a/a/a/a/h;->a(JI)[B

    move-result-object v3

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    const/4 v6, 0x2

    invoke-virtual {v1, v4, v5, v6}, Lde/a/a/a/a/h;->a(JI)[B

    move-result-object v4

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/a;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/a;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v8, :cond_1

    :cond_0
    invoke-interface {p2}, Lcom/estrongs/io/a/b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/io/archive/aeszip/a;->l:Ljava/lang/String;

    :cond_1
    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/a;->l:Ljava/lang/String;

    if-nez v1, :cond_3

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/a;->l:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    :try_start_0
    new-instance v1, Lde/a/a/a/a/c;

    invoke-direct {v1, v5, v3, v4}, Lde/a/a/a/a/c;-><init>([B[B[B)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Lde/a/a/a/a/b;->a()[B

    :goto_1
    invoke-virtual {v0}, Lde/a/a/a/a/i;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/estrongs/io/archive/aeszip/a;->a(J)I

    move-result v2

    new-array v3, v2, [B

    invoke-virtual {v0}, Lde/a/a/a/a/i;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lde/a/a/a/a/i;->getMethod()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/io/archive/aeszip/a;->a(Lde/a/a/a/a/i;Lde/a/a/a/a/b;)Ljava/io/InputStream;

    move-result-object v0

    :goto_2
    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WRONG PASSWORD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-object v2, p0, Lcom/estrongs/io/archive/aeszip/a;->l:Ljava/lang/String;

    :cond_4
    throw v0

    :cond_5
    new-instance v2, Lcom/estrongs/io/archive/aeszip/f;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/io/archive/aeszip/a;->a(Lde/a/a/a/a/i;Lde/a/a/a/a/b;)Ljava/io/InputStream;

    move-result-object v0

    array-length v1, v3

    invoke-direct {v2, v0, v1}, Lcom/estrongs/io/archive/aeszip/f;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v2

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v8}, Lcom/estrongs/io/archive/aeszip/a;->a(Lde/a/a/a/a/i;ZZ)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v1, v2

    goto :goto_1
.end method

.method protected a()V
    .locals 8

    const-wide/16 v4, 0x10

    const-wide/16 v6, 0x6

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    sub-long/2addr v0, v6

    iput-wide v0, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v2, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lde/a/a/a/a/h;->a(J)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/32 v2, 0x6054b50

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const v0, 0x6054b50

    invoke-static {v0}, Lde/a/a/a/a/f;->a(I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v1, v0}, Lde/a/a/a/a/h;->a([B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "expected ENDSIC not found (marks the beginning of the central directory at end of the zip file)"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v2, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lde/a/a/a/a/h;->b(J)S

    move-result v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v4, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5, v0}, Lde/a/a/a/a/h;->a(JI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/estrongs/io/archive/aeszip/a;->e:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    invoke-virtual {v0}, Lde/a/a/a/a/h;->a()V

    return-void
.end method

.method protected b(Lde/a/a/a/a/i;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "zipEntry must NOT be NULL"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lde/a/a/a/a/i;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "directory entries cannot be decrypted"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public c()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lde/a/a/a/a/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public d()S
    .locals 6

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/a;->b:Lde/a/a/a/a/h;

    iget-wide v2, p0, Lcom/estrongs/io/archive/aeszip/a;->c:J

    const-wide/16 v4, 0x6

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lde/a/a/a/a/h;->b(J)S

    move-result v0

    return v0
.end method
