.class public abstract enum Lcom/baidu/mobstat/x;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/x;

.field public static final enum b:Lcom/baidu/mobstat/x;

.field public static final enum c:Lcom/baidu/mobstat/x;

.field public static final enum d:Lcom/baidu/mobstat/x;

.field public static final enum e:Lcom/baidu/mobstat/x;

.field private static final synthetic g:[Lcom/baidu/mobstat/x;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/mobstat/y;

    const-string v1, "AP_LIST"

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mobstat/y;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/x;->a:Lcom/baidu/mobstat/x;

    new-instance v0, Lcom/baidu/mobstat/z;

    const-string v1, "APP_LIST"

    invoke-direct {v0, v1, v3, v3}, Lcom/baidu/mobstat/z;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/x;->b:Lcom/baidu/mobstat/x;

    new-instance v0, Lcom/baidu/mobstat/aa;

    const-string v1, "APP_TRACE"

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/mobstat/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/x;->c:Lcom/baidu/mobstat/x;

    new-instance v0, Lcom/baidu/mobstat/ab;

    const-string v1, "APP_CHANGE"

    invoke-direct {v0, v1, v5, v5}, Lcom/baidu/mobstat/ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/x;->d:Lcom/baidu/mobstat/x;

    new-instance v0, Lcom/baidu/mobstat/ac;

    const-string v1, "APP_APK"

    invoke-direct {v0, v1, v6, v6}, Lcom/baidu/mobstat/ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/x;->e:Lcom/baidu/mobstat/x;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/mobstat/x;

    sget-object v1, Lcom/baidu/mobstat/x;->a:Lcom/baidu/mobstat/x;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/x;->b:Lcom/baidu/mobstat/x;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/x;->c:Lcom/baidu/mobstat/x;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobstat/x;->d:Lcom/baidu/mobstat/x;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobstat/x;->e:Lcom/baidu/mobstat/x;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/mobstat/x;->g:[Lcom/baidu/mobstat/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/baidu/mobstat/x;->f:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/baidu/mobstat/y;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/x;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;II)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/v;",
            ">;II)I"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/mobstat/x;->c()I

    move-result v2

    move v4, v0

    move v0, p5

    :goto_0
    if-lez v2, :cond_3

    if-ge v2, v0, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1, v4}, Lcom/baidu/mobstat/x;->a(II)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v4, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/v;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/v;

    invoke-virtual {v0}, Lcom/baidu/mobstat/v;->a()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/baidu/mobstat/v;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int v9, v3, v8

    if-le v9, p4, :cond_2

    :cond_1
    sub-int/2addr v2, v1

    add-int v0, v4, v1

    move v4, v0

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v0, v3, v8

    move v3, v0

    goto :goto_2

    :cond_3
    return v3

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method private c()I
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobstat/x;->a()Lcom/baidu/mobstat/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/w;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/baidu/mobstat/w;->b()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/baidu/mobstat/w;->close()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/baidu/mobstat/w;->close()V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/baidu/mobstat/bb;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/baidu/mobstat/w;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/baidu/mobstat/w;->close()V

    :cond_3
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/x;
    .locals 1

    const-class v0, Lcom/baidu/mobstat/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/x;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/x;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/x;->g:[Lcom/baidu/mobstat/x;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/x;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/ArrayList;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/mobstat/x;->a()Lcom/baidu/mobstat/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->a()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/baidu/mobstat/w;->b(J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->close()V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    :cond_5
    :goto_2
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    :try_start_5
    invoke-static {v1}, Lcom/baidu/mobstat/bb;->b(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->close()V

    :cond_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public declared-synchronized a(JLjava/lang/String;)J
    .locals 5

    monitor-enter p0

    const-wide/16 v0, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobstat/x;->a()Lcom/baidu/mobstat/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/w;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Lcom/baidu/mobstat/w;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_1
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, p3}, Lcom/baidu/mobstat/w;->a(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Lcom/baidu/mobstat/w;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v2

    :try_start_4
    invoke-static {v2}, Lcom/baidu/mobstat/bb;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Lcom/baidu/mobstat/w;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/baidu/mobstat/w;->close()V

    :cond_2
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public abstract a()Lcom/baidu/mobstat/w;
.end method

.method public declared-synchronized a(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/v;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/mobstat/x;->a()Lcom/baidu/mobstat/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->a()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_3
    invoke-virtual {v2, p1, p2}, Lcom/baidu/mobstat/w;->a(II)Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    :try_start_5
    invoke-static {v1}, Lcom/baidu/mobstat/bb;->b(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/baidu/mobstat/w;->close()V

    :cond_2
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized a(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0x1f4

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/x;->a(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;II)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/v;

    invoke-virtual {v0}, Lcom/baidu/mobstat/v;->a()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/mobstat/v;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/x;->a(Ljava/util/ArrayList;)I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/mobstat/x;->c()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/mobstat/x;->c()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/baidu/mobstat/x;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
