.class public Lcom/duapps/ad/base/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "facebook"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "download"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "inmobi"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "admob"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "online"

    aput-object v2, v0, v1

    sput-object v0, Lcom/duapps/ad/base/d;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a([Ljava/lang/String;ILjava/lang/String;)I
    .locals 7

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    array-length v3, p0

    if-eqz v3, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-ge p1, v0, :cond_3

    move p1, v0

    :cond_3
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_1

    if-le p1, v1, :cond_4

    move p1, v1

    :cond_4
    move v1, v2

    move v3, v2

    move v4, v2

    :goto_1
    array-length v5, p0

    if-ge v1, v5, :cond_7

    const-string v5, "download"

    aget-object v6, p0, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v1, :cond_b

    move v3, v0

    move v4, v0

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    :cond_7
    array-length v1, p0

    if-ge v2, v1, :cond_1

    aget-object v1, p0, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v3, :cond_8

    if-eq v2, v0, :cond_9

    :cond_8
    if-nez v3, :cond_1

    if-nez v2, :cond_1

    :cond_9
    if-eqz v4, :cond_a

    array-length v0, p0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_a
    array-length v0, p0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_b
    move v4, v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;II[Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/duapps/ad/base/e;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/duapps/ad/entity/a/a",
            "<",
            "Lcom/duapps/ad/entity/a/c;",
            ">;>;)",
            "Lcom/duapps/ad/base/e;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "ChannelFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheSize=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p0}, Lcom/duapps/ad/base/d;->a([Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    sget-boolean v0, Lcom/duapps/ad/base/d;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "facebook"

    invoke-static {v0, v7}, Lcom/duapps/ad/base/d;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ChannelFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create FacebookCacheManager, SID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "facebook"

    invoke-static {v7, p2, v0}, Lcom/duapps/ad/base/d;->a([Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    const-string v0, "ChannelFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fbCacheSize=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/duapps/ad/base/r;->b(Landroid/content/Context;I)I

    move-result v0

    new-instance v1, Lcom/duapps/ad/entity/d;

    int-to-long v4, v0

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/duapps/ad/entity/d;-><init>(Landroid/content/Context;IJI)V

    const-string v2, "facebook"

    invoke-virtual {p4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v0, v0

    add-long/2addr v0, v8

    move-wide v8, v0

    :cond_2
    const-string v0, "admob"

    invoke-static {v0, v7}, Lcom/duapps/ad/base/d;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ChannelFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create AdmobCacheManager, SID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "admob"

    invoke-static {v7, p2, v0}, Lcom/duapps/ad/base/d;->a([Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    const-string v0, "ChannelFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amCacheSize=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/duapps/ad/base/r;->d(Landroid/content/Context;I)I

    move-result v0

    new-instance v1, Lcom/duapps/ad/a/a;

    int-to-long v4, v0

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/duapps/ad/a/a;-><init>(Landroid/content/Context;IJI)V

    const-string v2, "admob"

    invoke-virtual {p4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v0, v0

    add-long/2addr v8, v0

    :cond_3
    const-string v0, "inmobi"

    invoke-static {v0, v7}, Lcom/duapps/ad/base/d;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ChannelFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create InmobiCacheManager, SID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "inmobi"

    invoke-static {v7, p2, v0}, Lcom/duapps/ad/base/d;->a([Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    const-string v0, "ChannelFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imCacheSize=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/duapps/ad/base/r;->c(Landroid/content/Context;I)I

    move-result v0

    new-instance v1, Lcom/duapps/ad/inmobi/c;

    int-to-long v4, v0

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/duapps/ad/inmobi/c;-><init>(Landroid/content/Context;IJI)V

    const-string v2, "inmobi"

    invoke-virtual {p4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v0, v0

    add-long/2addr v8, v0

    :cond_4
    const-string v0, "download"

    invoke-static {v0, v7}, Lcom/duapps/ad/base/d;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ChannelFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create DownloadCacheManager, SID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/duapps/ad/base/r;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-long v2, v0

    add-long/2addr v8, v2

    new-instance v1, Lcom/duapps/ad/base/ae;

    int-to-long v2, v0

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/duapps/ad/base/ae;-><init>(Landroid/content/Context;IJ)V

    const-string v0, "download"

    invoke-virtual {p4, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "online"

    invoke-static {v0, v7}, Lcom/duapps/ad/base/d;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ChannelFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create onlineCacheManager, SID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "online"

    invoke-static {v7, p2, v0}, Lcom/duapps/ad/base/d;->a([Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    const-string v0, "ChannelFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "olCacheSize=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/duapps/ad/base/r;->e(Landroid/content/Context;I)I

    move-result v0

    int-to-long v2, v0

    add-long/2addr v8, v2

    new-instance v1, Lcom/duapps/ad/base/ah;

    int-to-long v4, v0

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/duapps/ad/base/ah;-><init>(Landroid/content/Context;IJI)V

    const-string v0, "online"

    invoke-virtual {p4, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance v0, Lcom/duapps/ad/base/e;

    invoke-direct {v0, v7, v8, v9}, Lcom/duapps/ad/base/e;-><init>([Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "ChannelFactory"

    const-string v1, "has no online"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static a([Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/duapps/ad/base/d;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move v0, v1

    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_5

    aget-object v4, p0, v0

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "facebook"

    aget-object v5, p0, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/duapps/ad/base/ap;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    sput-boolean v4, Lcom/duapps/ad/base/d;->b:Z

    aget-object v4, p0, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "facebook"

    aget-object v5, p0, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1}, Lcom/duapps/ad/base/ap;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    sput-boolean v1, Lcom/duapps/ad/base/d;->b:Z

    goto :goto_2

    :cond_4
    aget-object v4, p0, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_0
.end method
