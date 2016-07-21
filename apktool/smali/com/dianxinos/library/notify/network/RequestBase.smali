.class public abstract Lcom/dianxinos/library/notify/network/RequestBase;
.super Lcom/dianxinos/library/notify/network/s;


# static fields
.field private static final D:Z


# instance fields
.field protected A:I

.field protected B:I

.field protected C:Lcom/dianxinos/library/notify/network/l;

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field protected p:Lcom/dianxinos/library/notify/network/d;

.field protected q:Lcom/dianxinos/library/notify/network/o;

.field protected r:Ljava/net/HttpURLConnection;

.field protected s:Ljava/lang/String;

.field protected t:[B

.field protected u:Ljava/lang/String;

.field protected v:Ljava/lang/String;

.field protected w:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/dianxinos/library/notify/network/k;",
            ">;"
        }
    .end annotation
.end field

.field protected x:J

.field protected y:J

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->b:Z

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dianxinos/library/notify/network/RequestBase;->D:Z

    return-void
.end method

.method public constructor <init>(Lcom/dianxinos/library/notify/network/n;Ljava/lang/String;Lcom/dianxinos/library/notify/network/k;JJIIILcom/dianxinos/library/notify/network/l;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/dianxinos/library/notify/network/s;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    iput-boolean v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->J:Z

    iput-boolean v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->K:Z

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->t:[B

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    check-cast p1, Lcom/dianxinos/library/notify/network/o;

    iput-object p1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->q:Lcom/dianxinos/library/notify/network/o;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->v:Ljava/lang/String;

    iput-object p2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    iput-wide p4, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    iput-wide p6, p0, Lcom/dianxinos/library/notify/network/RequestBase;->y:J

    iput p8, p0, Lcom/dianxinos/library/notify/network/RequestBase;->z:I

    iput p9, p0, Lcom/dianxinos/library/notify/network/RequestBase;->A:I

    iput p10, p0, Lcom/dianxinos/library/notify/network/RequestBase;->B:I

    iput-object p11, p0, Lcom/dianxinos/library/notify/network/RequestBase;->C:Lcom/dianxinos/library/notify/network/l;

    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->z:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->F:Z

    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->z:I

    and-int/lit8 v0, v0, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->G:Z

    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->z:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->H:Z

    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->z:I

    and-int/lit8 v0, v0, 0x10

    const/16 v3, 0x10

    if-ne v0, v3, :cond_4

    :goto_3
    iput-boolean v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->I:Z

    sget-boolean v0, Lcom/dianxinos/library/notify/network/RequestBase;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " created."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method private static a(J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 3

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/network/k;

    invoke-interface {v0, p1}, Lcom/dianxinos/library/notify/network/k;->a(I)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private a(Ljava/lang/String;JJ)V
    .locals 8

    iget-object v6, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/network/k;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/dianxinos/library/notify/network/k;->a(Ljava/lang/String;JJ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/network/k;

    invoke-interface {v0, p1, p2, p3}, Lcom/dianxinos/library/notify/network/k;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private static a(Ljava/security/MessageDigest;J)V
    .locals 7

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x4

    shr-long v2, p1, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method private b(I)V
    .locals 3

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/network/k;

    invoke-interface {v0, p1, p0}, Lcom/dianxinos/library/notify/network/k;->a(ILcom/dianxinos/library/notify/network/s;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private b()Z
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->p:Lcom/dianxinos/library/notify/network/d;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->F:Z

    if-nez v2, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/dianxinos/library/notify/network/RequestBase;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/library/notify/network/RequestBase;->p:Lcom/dianxinos/library/notify/network/d;

    invoke-virtual {v3, v2}, Lcom/dianxinos/library/notify/network/d;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/network/j;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->b()Z

    move-result v2

    iget-object v4, p0, Lcom/dianxinos/library/notify/network/RequestBase;->C:Lcom/dianxinos/library/notify/network/l;

    invoke-interface {v4}, Lcom/dianxinos/library/notify/network/l;->a()Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/dianxinos/library/notify/network/j;->a(I)Ljava/io/InputStream;

    move-result-object v5

    iget-wide v6, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v6

    int-to-long v6, v6

    iget-wide v8, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    iget-wide v6, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J

    :cond_0
    iput-object v5, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/dianxinos/library/notify/network/j;->b(I)Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lcom/dianxinos/library/notify/network/RequestBase;->h:Ljava/io/File;

    iget-object v5, p0, Lcom/dianxinos/library/notify/network/RequestBase;->h:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/dianxinos/library/notify/network/RequestBase;->n:J

    invoke-virtual {v3}, Lcom/dianxinos/library/notify/network/j;->a()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/dianxinos/library/notify/network/RequestBase;->o:J

    if-nez v2, :cond_1

    if-nez v4, :cond_5

    :cond_1
    iget-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->C:Lcom/dianxinos/library/notify/network/l;

    iget-object v3, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    iget-wide v4, p0, Lcom/dianxinos/library/notify/network/RequestBase;->n:J

    invoke-interface {v2, v3, v4, v5}, Lcom/dianxinos/library/notify/network/l;->a(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache entry too old, need verify by 304: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/dianxinos/library/notify/network/RequestBase;->b(I)V

    :cond_2
    :goto_0
    return v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad cache entry found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/library/notify/network/RequestBase;->D:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v2}, Lcom/dianxinos/library/notify/network/RequestBase;->b(I)V

    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/dianxinos/library/notify/network/RequestBase;->b(I)V

    move v0, v1

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key not found in cache: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private c()V
    .locals 7

    const/4 v6, 0x1

    iget v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->B:I

    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->A:I

    iget-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    move v2, v1

    move v1, v0

    :goto_0
    if-ltz v2, :cond_2

    if-ltz v1, :cond_2

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/dianxinos/library/notify/network/RequestBase;->c(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/dianxinos/library/notify/network/RequestBase;->d()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finished: result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dianxinos/library/notify/network/RequestBase;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    const-string v0, "doSimpleHttp() return with error - retry ..."

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/dianxinos/library/notify/network/RequestBase$NEED_RETRY;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/network/RequestBase$NEED_RETRY;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dianxinos/library/notify/network/RequestBase$NEED_RETRY; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dianxinos/library/notify/network/RequestBase$NEED_REDIRECT; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->c:Ljava/lang/Exception;

    iget v0, v0, Lcom/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR;->errNo:I

    invoke-direct {p0, v0}, Lcom/dianxinos/library/notify/network/RequestBase;->c(I)V

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/dianxinos/library/notify/network/RequestBase;->b(I)V
    :try_end_1
    .catch Lcom/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/dianxinos/library/notify/network/RequestBase$NEED_RETRY; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/dianxinos/library/notify/network/RequestBase$NEED_REDIRECT; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->v:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Perform retry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v2, -0x1

    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->A:I

    invoke-direct {p0, v1}, Lcom/dianxinos/library/notify/network/RequestBase;->a(I)V

    :try_start_2
    iget v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->B:I

    sub-int/2addr v2, v1

    shl-int v2, v6, v2

    mul-int/lit16 v2, v2, 0xc8

    int-to-long v2, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wait "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for next retry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    move v2, v1

    move v1, v0

    goto/16 :goto_0

    :pswitch_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finished successfully: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/dianxinos/library/notify/network/RequestBase;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dianxinos/library/notify/network/RequestBase;->b(I)V
    :try_end_3
    .catch Lcom/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/dianxinos/library/notify/network/RequestBase$NEED_RETRY; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/dianxinos/library/notify/network/RequestBase$NEED_REDIRECT; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_2
    move-exception v0

    iget-object v0, v0, Lcom/dianxinos/library/notify/network/RequestBase$NEED_REDIRECT;->newUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->v:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redirected to: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/dianxinos/library/notify/network/RequestBase;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/dianxinos/library/notify/network/RequestBase;->v:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v0}, Lcom/dianxinos/library/notify/network/RequestBase;->a(Ljava/lang/String;Ljava/lang/String;I)V

    move v1, v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->v:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generic error found in: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/dianxinos/library/notify/network/RequestBase;->v:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->c:Ljava/lang/Exception;

    add-int/lit8 v1, v2, -0x1

    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->A:I

    move v2, v1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    if-gez v2, :cond_3

    const/4 v0, -0x4

    invoke-direct {p0, v0}, Lcom/dianxinos/library/notify/network/RequestBase;->c(I)V

    goto/16 :goto_1

    :cond_3
    if-gez v1, :cond_0

    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lcom/dianxinos/library/notify/network/RequestBase;->c(I)V

    goto/16 :goto_1

    :catch_4
    move-exception v2

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(I)V
    .locals 3

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/network/k;

    invoke-interface {v0, p1, p0}, Lcom/dianxinos/library/notify/network/k;->b(ILcom/dianxinos/library/notify/network/s;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private d()I
    .locals 14

    const/4 v6, 0x1

    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->v:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dianxinos/library/notify/network/RequestBase;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Lcom/dianxinos/library/notify/network/RequestBase;->a(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0}, Lcom/dianxinos/library/notify/network/RequestBase;->f()V

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Lcom/dianxinos/library/notify/network/RequestBase;->b(Ljava/net/HttpURLConnection;)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Lcom/dianxinos/library/notify/network/RequestBase;->c(Ljava/net/HttpURLConnection;)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->k:J

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->m:Ljava/lang/String;

    sget-boolean v0, Lcom/dianxinos/library/notify/network/RequestBase;->D:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/dianxinos/library/notify/network/RequestBase;->g()V

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->o:J

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->o:J

    cmp-long v0, v2, v12

    if-lez v0, :cond_2

    sget-boolean v0, Lcom/dianxinos/library/notify/network/RequestBase;->D:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - time: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->o:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->o:J

    invoke-static {v2, v3}, Lcom/dianxinos/library/notify/network/RequestBase;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->F:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    const/16 v2, 0x130

    if-ne v0, v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SC_NOT_MODIFIED: content not modified - load from cache if available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->h:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->h:Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    :cond_3
    invoke-virtual {p0}, Lcom/dianxinos/library/notify/network/RequestBase;->a()V

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v6

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->c:Ljava/lang/Exception;

    new-instance v0, Lcom/dianxinos/library/notify/network/RequestBase$NEED_RETRY;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/network/RequestBase$NEED_RETRY;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    throw v0

    :cond_4
    const/16 v0, 0xc8

    iget v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    if-gt v0, v2, :cond_a

    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    const/16 v2, 0x12b

    if-gt v0, v2, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->l:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->l:Ljava/lang/String;

    const-string v3, "gzip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v9, v0

    :goto_2
    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    iget v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->f:I

    if-eq v0, v2, :cond_6

    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startOffset ignored by server: skip heading "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    cmp-long v0, v2, v12

    if-lez v0, :cond_e

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->F:Z

    if-eqz v0, :cond_e

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    invoke-virtual {v9, v2, v3}, Ljava/io/InputStream;->skip(J)J

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    iput-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->i:J

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->p:Lcom/dianxinos/library/notify/network/d;

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->F:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->p:Lcom/dianxinos/library/notify/network/d;

    invoke-direct {p0}, Lcom/dianxinos/library/notify/network/RequestBase;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/notify/network/d;->b(Ljava/lang/String;)Lcom/dianxinos/library/notify/network/g;

    move-result-object v0

    move-object v8, v0

    :goto_4
    iget-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->G:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->F:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->p:Lcom/dianxinos/library/notify/network/d;

    if-eqz v0, :cond_14

    if-eqz v8, :cond_14

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->j:J

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->H:Z

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->j:J

    iget-wide v4, p0, Lcom/dianxinos/library/notify/network/RequestBase;->k:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dianxinos/library/notify/network/RequestBase;->a(Ljava/lang/String;JJ)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {v8, v0}, Lcom/dianxinos/library/notify/network/g;->a(I)Ljava/io/OutputStream;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v10

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->t:[B

    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v11

    if-lez v11, :cond_f

    :try_start_9
    iget-wide v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->j:J

    int-to-long v2, v11

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->j:J

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->t:[B

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1, v11}, Ljava/io/OutputStream;->write([BII)V

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->H:Z

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->j:J

    iget-wide v4, p0, Lcom/dianxinos/library/notify/network/RequestBase;->k:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dianxinos/library/notify/network/RequestBase;->a(Ljava/lang/String;JJ)V

    :cond_9
    invoke-virtual {v8}, Lcom/dianxinos/library/notify/network/g;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR;-><init>()V

    const/4 v1, -0x7

    iput v1, v0, Lcom/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR;->errNo:I

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz v7, :cond_15

    :try_start_a
    invoke-virtual {v8}, Lcom/dianxinos/library/notify/network/g;->b()V

    :goto_6
    invoke-static {v9}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    invoke-static {v10}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_a
    const/16 v0, 0x12c

    iget v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    if-gt v0, v2, :cond_b

    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    const/16 v2, 0x18f

    if-gt v0, v2, :cond_b

    new-instance v0, Lcom/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR;-><init>()V

    throw v0

    :cond_b
    const/16 v0, 0x190

    iget v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    if-gt v0, v2, :cond_c

    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    const/16 v2, 0x1f3

    if-gt v0, v2, :cond_c

    new-instance v0, Lcom/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR;-><init>()V

    throw v0

    :cond_c
    const/16 v0, 0x1f4

    iget v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    if-gt v0, v2, :cond_5

    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    const/16 v2, 0x257

    if-gt v0, v2, :cond_5

    new-instance v0, Lcom/dianxinos/library/notify/network/RequestBase$NEED_RETRY;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/network/RequestBase$NEED_RETRY;-><init>()V

    throw v0

    :cond_d
    move-object v9, v2

    goto/16 :goto_2

    :cond_e
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->i:J

    goto/16 :goto_3

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->q:Lcom/dianxinos/library/notify/network/o;

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/network/o;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->p:Lcom/dianxinos/library/notify/network/d;

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    iput-object v9, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->h:Ljava/io/File;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->F:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v0, v7

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    move v7, v6

    goto :goto_5

    :cond_f
    if-gtz v11, :cond_8

    :try_start_c
    iget-wide v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->o:J

    invoke-virtual {v8, v0, v1}, Lcom/dianxinos/library/notify/network/g;->a(J)V

    invoke-static {v9}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    invoke-static {v10}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->H:Z

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->j:J

    iget-wide v4, p0, Lcom/dianxinos/library/notify/network/RequestBase;->k:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dianxinos/library/notify/network/RequestBase;->a(Ljava/lang/String;JJ)V

    :cond_10
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->p:Lcom/dianxinos/library/notify/network/d;

    invoke-direct {p0}, Lcom/dianxinos/library/notify/network/RequestBase;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/notify/network/d;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/network/j;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR;-><init>()V

    const/4 v1, -0x7

    iput v1, v0, Lcom/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR;->errNo:I

    throw v0

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->n:J

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/notify/network/j;->b(I)Ljava/io/File;

    move-result-object v1

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->n:J

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/notify/network/j;->a(I)Ljava/io/InputStream;

    move-result-object v1

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    cmp-long v2, v2, v12

    if-lez v2, :cond_12

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    :cond_12
    iget-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    iput-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/notify/network/j;->b(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->h:Ljava/io/File;

    :goto_7
    move v0, v7

    goto/16 :goto_1

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad cache entry found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    iput-object v9, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->h:Ljava/io/File;

    goto :goto_7

    :cond_15
    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->o:J

    invoke-virtual {v8, v2, v3}, Lcom/dianxinos/library/notify/network/g;->a(J)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_6

    :cond_16
    move-object v8, v1

    goto/16 :goto_4
.end method

.method private e()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->E:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->C:Lcom/dianxinos/library/notify/network/l;

    iget-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/dianxinos/library/notify/network/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    invoke-static {v0, v2, v3}, Lcom/dianxinos/library/notify/network/RequestBase;->a(Ljava/security/MessageDigest;J)V

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->y:J

    invoke-static {v0, v2, v3}, Lcom/dianxinos/library/notify/network/RequestBase;->a(Ljava/security/MessageDigest;J)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/library/notify/network/RequestBase;->a(Ljava/security/MessageDigest;)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/i;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->E:Ljava/lang/String;

    sget-boolean v0, Lcom/dianxinos/library/notify/network/RequestBase;->D:Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->E:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/network/k;

    invoke-interface {v0, p0}, Lcom/dianxinos/library/notify/network/k;->b(Lcom/dianxinos/library/notify/network/s;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private g()V
    .locals 3

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/network/k;

    invoke-interface {v0, p0}, Lcom/dianxinos/library/notify/network/k;->a(Lcom/dianxinos/library/notify/network/s;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->C:Lcom/dianxinos/library/notify/network/l;

    invoke-interface {v0}, Lcom/dianxinos/library/notify/network/l;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->C:Lcom/dianxinos/library/notify/network/l;

    invoke-interface {v2}, Lcom/dianxinos/library/notify/network/l;->c()I

    move-result v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_0
    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v2, "X-Online-Host"

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0
.end method

.method public a()V
    .locals 4

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->F:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dataStream could not be reseted if FLAG_NO_CACHE is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/dianxinos/library/notify/network/RequestBase;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->p:Lcom/dianxinos/library/notify/network/d;

    invoke-virtual {v1, v0}, Lcom/dianxinos/library/notify/network/d;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/network/j;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/notify/network/j;->a(I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    iget-wide v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/dianxinos/library/notify/network/k;)V
    .locals 2

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->w:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/net/HttpURLConnection;)V
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->C:Lcom/dianxinos/library/notify/network/l;

    invoke-interface {v0}, Lcom/dianxinos/library/notify/network/l;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->C:Lcom/dianxinos/library/notify/network/l;

    invoke-interface {v0}, Lcom/dianxinos/library/notify/network/l;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->H:Z

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->y:J

    cmp-long v0, v2, v6

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->C:Lcom/dianxinos/library/notify/network/l;

    invoke-interface {v2}, Lcom/dianxinos/library/notify/network/l;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->I:Z

    if-eqz v0, :cond_5

    :cond_1
    const-string v0, "Accept-Encoding"

    const-string v2, "gzip, deflate"

    invoke-virtual {p1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, "User-Agent"

    iget-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->C:Lcom/dianxinos/library/notify/network/l;

    invoke-interface {v2}, Lcom/dianxinos/library/notify/network/l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "accept"

    const-string v2, "*/*"

    invoke-virtual {p1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {p1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-wide v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->F:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->y:J

    iget-wide v4, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->y:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requesting byte range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    const-string v1, "Range"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->x:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_7

    const/16 v0, 0xc8

    :goto_3
    iput v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->f:I

    :cond_2
    iget-wide v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->o:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->o:J

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/network/RequestBase;->a(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check for modify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    const-string v1, "If-Modified-Since"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->C:Lcom/dianxinos/library/notify/network/l;

    invoke-interface {v0, p1}, Lcom/dianxinos/library/notify/network/l;->a(Ljava/net/URLConnection;)V

    return-void

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :cond_5
    const-string v0, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {p1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->y:J

    goto :goto_2

    :cond_7
    const/16 v0, 0xce

    goto :goto_3
.end method

.method protected a(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method

.method protected b(Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method

.method protected c(Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 8

    const-wide/16 v6, 0x0

    const/16 v3, 0xc8

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/dianxinos/library/dxbase/o;->a()V

    sget-boolean v0, Lcom/dianxinos/library/notify/network/RequestBase;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job started: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->J:Z

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->K:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is now canceled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    monitor-exit p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->q:Lcom/dianxinos/library/notify/network/o;

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/notify/network/o;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/network/d;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->p:Lcom/dianxinos/library/notify/network/d;

    invoke-direct {p0}, Lcom/dianxinos/library/notify/network/RequestBase;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/dianxinos/library/notify/network/RequestBase;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->q:Lcom/dianxinos/library/notify/network/o;

    invoke-virtual {v0, p0}, Lcom/dianxinos/library/notify/network/o;->a(Lcom/dianxinos/library/notify/network/RequestBase;)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :goto_1
    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    :cond_4
    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->c:Ljava/lang/Exception;

    iput v3, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->e:Ljava/lang/String;

    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    iput v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->f:I

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->h:Ljava/io/File;

    iput-wide v6, p0, Lcom/dianxinos/library/notify/network/RequestBase;->i:J

    iput-wide v4, p0, Lcom/dianxinos/library/notify/network/RequestBase;->k:J

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->m:Ljava/lang/String;

    :goto_2
    iput-wide v4, p0, Lcom/dianxinos/library/notify/network/RequestBase;->o:J

    sget-boolean v0, Lcom/dianxinos/library/notify/network/RequestBase;->D:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job stopped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->c:Ljava/lang/Exception;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/dianxinos/library/notify/network/RequestBase;->c(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->q:Lcom/dianxinos/library/notify/network/o;

    invoke-virtual {v0, p0}, Lcom/dianxinos/library/notify/network/o;->a(Lcom/dianxinos/library/notify/network/RequestBase;)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_5

    :try_start_5
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_3
    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    :cond_5
    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->c:Ljava/lang/Exception;

    iput v3, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->e:Ljava/lang/String;

    iget v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    iput v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->f:I

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->h:Ljava/io/File;

    iput-wide v6, p0, Lcom/dianxinos/library/notify/network/RequestBase;->i:J

    iput-wide v4, p0, Lcom/dianxinos/library/notify/network/RequestBase;->k:J

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->m:Ljava/lang/String;

    goto :goto_2

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->q:Lcom/dianxinos/library/notify/network/o;

    invoke-virtual {v1, p0}, Lcom/dianxinos/library/notify/network/o;->a(Lcom/dianxinos/library/notify/network/RequestBase;)V

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_6

    :try_start_6
    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_4
    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    :cond_6
    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->c:Ljava/lang/Exception;

    iput v3, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    const-string v1, ""

    iput-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->e:Ljava/lang/String;

    iget v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->d:I

    iput v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->f:I

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->g:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->h:Ljava/io/File;

    iput-wide v6, p0, Lcom/dianxinos/library/notify/network/RequestBase;->i:J

    iput-wide v4, p0, Lcom/dianxinos/library/notify/network/RequestBase;->k:J

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->m:Ljava/lang/String;

    iput-wide v4, p0, Lcom/dianxinos/library/notify/network/RequestBase;->o:J

    throw v0

    :catchall_2
    move-exception v0

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    throw v0

    :catchall_3
    move-exception v0

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    throw v0

    :catchall_4
    move-exception v0

    iput-object v2, p0, Lcom/dianxinos/library/notify/network/RequestBase;->r:Ljava/net/HttpURLConnection;

    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_4
.end method
