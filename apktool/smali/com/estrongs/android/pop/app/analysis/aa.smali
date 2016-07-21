.class public Lcom/estrongs/android/pop/app/analysis/aa;
.super Lcom/estrongs/android/pop/app/analysis/y;


# instance fields
.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/y;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/aa;->c:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "largefile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duplicate"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "redundancy"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/aa;->d:[Ljava/lang/String;

    return-void
.end method

.method private e()Z
    .locals 10

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v2

    const-string v3, "sdcard_available_memory"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, ""

    iput-object v3, p0, Lcom/estrongs/android/pop/app/analysis/aa;->c:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v3

    aget-wide v6, v3, v1

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    mul-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    sub-long v2, v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    long-to-double v8, v2

    mul-double/2addr v6, v8

    long-to-double v4, v4

    div-double v4, v6, v4

    double-to-int v4, v4

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/estrongs/android/pop/app/analysis/aa;->c:Ljava/lang/String;

    const-wide/32 v6, 0xc800000

    cmp-long v2, v2, v6

    if-gez v2, :cond_2

    const/4 v2, 0x5

    if-lt v4, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v1, "sdcard_available_memory"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/aa;->d:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/aa;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/a;->b(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/estrongs/android/b/a/a;->d(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/pop/app/analysis/ab;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/ab;-><init>(Lcom/estrongs/android/pop/app/analysis/aa;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public b()Z
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/aa;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/aa;->e()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/aa;->d()I

    move-result v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    const v2, 0x7f080628

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/aa;->c:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/aa;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/aa;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    const/16 v4, 0x11

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public d()I
    .locals 4

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    const-string v1, "sdcard_topview_show_date"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    sget-wide v2, Lcom/estrongs/android/pop/app/analysis/aa;->a:J

    div-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
