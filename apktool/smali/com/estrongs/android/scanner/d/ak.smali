.class public Lcom/estrongs/android/scanner/d/ak;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/estrongs/android/scanner/g;

.field private final b:Lcom/estrongs/android/scanner/d/a;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/d/ar;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[J>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/b;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/estrongs/android/pop/app/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLcom/estrongs/android/scanner/g;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/scanner/d/an;

    invoke-direct {v0, p0}, Lcom/estrongs/android/scanner/d/an;-><init>(Lcom/estrongs/android/scanner/d/ak;)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->i:Ljava/util/Comparator;

    new-instance v0, Lcom/estrongs/android/scanner/d/ao;

    invoke-direct {v0, p0}, Lcom/estrongs/android/scanner/d/ao;-><init>(Lcom/estrongs/android/scanner/d/ak;)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->j:Ljava/util/Comparator;

    iput-object p5, p0, Lcom/estrongs/android/scanner/d/ak;->a:Lcom/estrongs/android/scanner/g;

    invoke-static {}, Lcom/estrongs/android/scanner/d/a;->a()Lcom/estrongs/android/scanner/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->b:Lcom/estrongs/android/scanner/d/a;

    iput-wide p1, p0, Lcom/estrongs/android/scanner/d/ak;->d:J

    iput-wide p3, p0, Lcom/estrongs/android/scanner/d/ak;->e:J

    invoke-direct {p0}, Lcom/estrongs/android/scanner/d/ak;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/scanner/d/ak;->f:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->g:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->h:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->c:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->c:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "apkview"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->c:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "imageview"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->c:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "audioview"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->c:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "videoview"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->c:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "textview"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/d/ak;Ljava/lang/String;JJJ)I
    .locals 2

    invoke-direct/range {p0 .. p7}, Lcom/estrongs/android/scanner/d/ak;->a(Ljava/lang/String;JJJ)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;JJJ)I
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastmodified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastmodified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v4, "pid,name"

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->b:Lcom/estrongs/android/scanner/d/a;

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/estrongs/android/scanner/d/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private a()J
    .locals 6

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->bn()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/estrongs/android/scanner/d/ak;->d:J

    const-wide v4, 0x90321000L

    sub-long/2addr v0, v4

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/d/ak;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/scanner/d/ak;->f:J

    return-wide v0
.end method

.method private a(IJJ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/d/ar;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLogPath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "lastmodified"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "lastmodified"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "pid"

    aput-object v0, v3, v7

    const-string v0, "groupname"

    aput-object v0, v3, v8

    const-string v0, "path"

    aput-object v0, v3, v9

    const/4 v0, 0x3

    const-string v1, "min(lastmodified)"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "max(lastmodified)"

    aput-object v1, v3, v0

    const-string v5, "pid,groupname"

    new-array v9, v9, [J

    const-wide v0, 0x7fffffffffffffffL

    aput-wide v0, v9, v7

    const-wide/high16 v0, -0x8000000000000000L

    aput-wide v0, v9, v8

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/estrongs/android/scanner/d/am;

    invoke-direct {v1, p0, v8, v9}, Lcom/estrongs/android/scanner/d/am;-><init>(Lcom/estrongs/android/scanner/d/ak;Ljava/util/List;[J)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->b:Lcom/estrongs/android/scanner/d/a;

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/l;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v8

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/d/ak;IJJ)Ljava/util/List;
    .locals 2

    invoke-direct/range {p0 .. p5}, Lcom/estrongs/android/scanner/d/ak;->a(IJJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/d/ak;Ljava/lang/String;Ljava/lang/String;JJJ)Ljava/util/List;
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/estrongs/android/scanner/d/ak;->a(Ljava/lang/String;Ljava/lang/String;JJJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JJJ)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJ)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/i;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lastmodified"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lastmodified"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pid,name"

    const-string v8, "lastmodified DESC LIMIT 0,4"

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "size"

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const-string v3, "lastmodified"

    aput-object v3, v5, v2

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Lcom/estrongs/android/scanner/d/al;

    invoke-direct {v3, p0, p2, v10}, Lcom/estrongs/android/scanner/d/al;-><init>(Lcom/estrongs/android/scanner/d/ak;Ljava/lang/String;Ljava/util/List;)V

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/ak;->b:Lcom/estrongs/android/scanner/d/a;

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/l;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-object v10
.end method

.method static synthetic b(Lcom/estrongs/android/scanner/d/ak;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/scanner/d/ak;->e:J

    return-wide v0
.end method

.method private b(IJJ)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    aget-wide v4, v0, v1

    cmp-long v3, v4, p2

    if-lez v3, :cond_1

    aget-wide v4, v0, v2

    cmp-long v0, v4, p4

    if-lez v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private b()[J
    .locals 14

    iget-wide v2, p0, Lcom/estrongs/android/scanner/d/ak;->f:J

    iget-wide v0, p0, Lcom/estrongs/android/scanner/d/ak;->e:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [J

    :goto_0
    return-object v0

    :cond_0
    iget-wide v4, p0, Lcom/estrongs/android/scanner/d/ak;->d:J

    iget-wide v0, p0, Lcom/estrongs/android/scanner/d/ak;->d:J

    const-wide/32 v6, 0x36ee80

    sub-long v6, v0, v6

    iget-wide v0, p0, Lcom/estrongs/android/scanner/d/ak;->d:J

    const-wide/32 v8, 0x5265c00

    sub-long v8, v0, v8

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd H:m:s"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-wide v10, p0, Lcom/estrongs/android/scanner/d/ak;->e:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v10, p0, Lcom/estrongs/android/scanner/d/ak;->e:J

    cmp-long v0, v10, v8

    if-gtz v0, :cond_3

    const-string v0, "LogReader"

    const-string v4, "\u843d\u5728\u6309\u5929\u8ba1\u7b97\u7684\u533a\u95f4"

    invoke-static {v0, v4}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    const-wide/32 v4, 0x5265c00

    int-to-long v6, v0

    mul-long/2addr v4, v6

    sub-long v4, v8, v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [J

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v1

    move v1, v2

    goto :goto_3

    :cond_1
    iget-wide v6, p0, Lcom/estrongs/android/scanner/d/ak;->e:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-wide v10, p0, Lcom/estrongs/android/scanner/d/ak;->e:J

    cmp-long v0, v10, v6

    if-gtz v0, :cond_a

    const-string v0, "LogReader"

    const-string v4, "\u8d77\u70b9\u843d\u5728\u6309\u5c0f\u65f6\u8ba1\u7b97\u7684\u533a\u95f4"

    invoke-static {v0, v4}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v2, v8

    if-lez v0, :cond_6

    const-string v0, "LogReader"

    const-string v4, "\u7ec8\u70b9\u4e5f\u843d\u5728\u6309\u5c0f\u65f6\u8ba1\u7b97\u7684\u533a\u95f4"

    invoke-static {v0, v4}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_4
    const-wide/32 v4, 0x36ee80

    int-to-long v8, v0

    mul-long/2addr v4, v8

    sub-long v4, v6, v4

    cmp-long v8, v4, v2

    if-gez v8, :cond_4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-wide v8, p0, Lcom/estrongs/android/scanner/d/ak;->e:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    const-string v0, "LogReader"

    const-string v4, "\u7ec8\u70b9\u843d\u5728\u6309\u5929\u8ba1\u7b97\u7684\u533a\u95f4"

    invoke-static {v0, v4}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_5
    const-wide/32 v4, 0x36ee80

    int-to-long v10, v0

    mul-long/2addr v4, v10

    sub-long v4, v6, v4

    cmp-long v10, v4, v8

    if-gez v10, :cond_7

    const/4 v0, 0x1

    :goto_6
    const-wide/32 v4, 0x5265c00

    int-to-long v6, v0

    mul-long/2addr v4, v6

    sub-long v4, v8, v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    iget-wide v10, p0, Lcom/estrongs/android/scanner/d/ak;->e:J

    cmp-long v10, v4, v10

    if-gez v10, :cond_8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    iget-wide v10, p0, Lcom/estrongs/android/scanner/d/ak;->e:J

    cmp-long v0, v10, v4

    if-gtz v0, :cond_16

    const-string v0, "LogReader"

    const-string v10, "\u8d77\u70b9\u843d\u5728\u6309\u5206\u949f\u8ba1\u7b97\u7684\u533a\u95f4"

    invoke-static {v0, v10}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v2, v6

    if-lez v0, :cond_d

    const-string v0, "LogReader"

    const-string v6, "\u7ec8\u70b9\u4e5f\u843d\u5728\u6309\u5206\u949f\u8ba1\u7b97\u7684\u533a\u95f4"

    invoke-static {v0, v6}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_7
    const-wide/32 v6, 0xea60

    int-to-long v8, v0

    mul-long/2addr v6, v8

    sub-long v6, v4, v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_b

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    iget-wide v8, p0, Lcom/estrongs/android/scanner/d/ak;->e:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_c

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    cmp-long v0, v2, v8

    if-lez v0, :cond_11

    const-string v0, "LogReader"

    const-string v8, "\u7ec8\u70b9\u843d\u5728\u6309\u5c0f\u65f6\u8ba1\u7b97\u7684\u533a\u95f4"

    invoke-static {v0, v8}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_8
    const-wide/32 v8, 0xea60

    int-to-long v10, v0

    mul-long/2addr v8, v10

    sub-long v8, v4, v8

    cmp-long v10, v8, v6

    if-gez v10, :cond_e

    const/4 v0, 0x1

    :goto_9
    const-wide/32 v4, 0x36ee80

    int-to-long v8, v0

    mul-long/2addr v4, v8

    sub-long v4, v6, v4

    cmp-long v8, v4, v2

    if-gez v8, :cond_10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    iget-wide v10, p0, Lcom/estrongs/android/scanner/d/ak;->e:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_f

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_10
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_11
    const-string v0, "LogReader"

    const-string v10, "\u7ec8\u70b9\u843d\u5728\u6309\u5929\u8ba1\u7b97\u7684\u533a\u95f4"

    invoke-static {v0, v10}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_a
    const-wide/32 v10, 0xea60

    int-to-long v12, v0

    mul-long/2addr v10, v12

    sub-long v10, v4, v10

    cmp-long v12, v10, v6

    if-gez v12, :cond_12

    const/4 v0, 0x1

    :goto_b
    const/16 v4, 0x18

    if-ge v0, v4, :cond_14

    const-wide/32 v4, 0x36ee80

    int-to-long v10, v0

    mul-long/2addr v4, v10

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_12
    iget-wide v12, p0, Lcom/estrongs/android/scanner/d/ak;->e:J

    cmp-long v12, v10, v12

    if-gez v12, :cond_13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_14
    const/4 v0, 0x1

    :goto_c
    const-wide/32 v4, 0x5265c00

    int-to-long v6, v0

    mul-long/2addr v4, v6

    sub-long v4, v8, v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_15

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_15
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mStartTimestamp > startTmByMinute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object v0, v3

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/scanner/d/ak;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->g:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/scanner/d/ak;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->c:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/scanner/d/ak;)Lcom/estrongs/android/scanner/g;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ak;->a:Lcom/estrongs/android/scanner/g;

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/b;",
            ">;>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/scanner/d/ak;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/d/a;->b()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/scanner/d/ak;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v19

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/scanner/d/ak;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    new-instance v5, Lcom/estrongs/android/scanner/d/aq;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/estrongs/android/scanner/d/aq;-><init>(Lcom/estrongs/android/scanner/d/ak;I)V

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/scanner/d/ak;->b()[J

    move-result-object v20

    move-object/from16 v0, v20

    array-length v2, v0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/scanner/d/ak;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/d/a;->close()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v8, v2

    move/from16 v16, v3

    :goto_3
    move-object/from16 v0, v20

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v8, v2, :cond_8

    add-int/lit8 v2, v8, 0x1

    aget-wide v4, v20, v2

    aget-wide v6, v20, v8

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/scanner/d/ak;->c:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/scanner/d/ak;->b(IJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_5
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_4

    :cond_3
    new-instance v9, Lcom/estrongs/android/scanner/d/ap;

    move-object/from16 v10, p0

    move v11, v3

    move-wide v12, v4

    move-wide v14, v6

    invoke-direct/range {v9 .. v15}, Lcom/estrongs/android/scanner/d/ap;-><init>(Lcom/estrongs/android/scanner/d/ak;IJJ)V

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move/from16 v3, v16

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move/from16 v16, v3

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_5

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int v16, v16, v2

    goto :goto_7

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_5
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_6
    move/from16 v3, v16

    goto :goto_6

    :cond_7
    move/from16 v0, p1

    if-lt v3, v0, :cond_a

    :cond_8
    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/scanner/d/ak;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/d/a;->close()V

    new-instance v5, Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v2

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/android/scanner/d/ak;->j:Ljava/util/Comparator;

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/estrongs/android/scanner/d/ak;->d:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v4, v3

    new-instance v3, Landroid/util/Pair;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v3, v7, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move v2, v4

    move v4, v2

    goto :goto_9

    :cond_a
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move/from16 v16, v3

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/scanner/d/ak;->i:Ljava/util/Comparator;

    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v2, v5

    goto/16 :goto_1
.end method
