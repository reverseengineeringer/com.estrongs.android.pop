.class public Lcom/estrongs/android/k/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/k/h;


# instance fields
.field private final b:Lcom/estrongs/android/k/a;

.field private c:[Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/k/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/k/h;->a:Lcom/estrongs/android/k/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/k/h;->d:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/android/k/a;->a()Lcom/estrongs/android/k/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/k/h;->b:Lcom/estrongs/android/k/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "locked"

    aput-object v1, v0, v3

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/k/h;->c:[Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/k/h;->c:[Ljava/lang/String;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/estrongs/android/k/h;
    .locals 2

    const-class v1, Lcom/estrongs/android/k/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/k/h;->a:Lcom/estrongs/android/k/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/k/h;

    invoke-direct {v0}, Lcom/estrongs/android/k/h;-><init>()V

    sput-object v0, Lcom/estrongs/android/k/h;->a:Lcom/estrongs/android/k/h;

    :cond_0
    sget-object v0, Lcom/estrongs/android/k/h;->a:Lcom/estrongs/android/k/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Lcom/estrongs/android/k/d;)Lcom/estrongs/android/k/d;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/k/h;->b:Lcom/estrongs/android/k/a;

    invoke-virtual {v3}, Lcom/estrongs/android/k/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lockname = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/k/h;->b:Lcom/estrongs/android/k/a;

    const-string v4, "lock"

    iget-object v5, p0, Lcom/estrongs/android/k/h;->c:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0}, Lcom/estrongs/android/k/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "locked"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v2}, Lcom/estrongs/android/k/d;->b(ZZ)V

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/estrongs/android/k/h;->b:Lcom/estrongs/android/k/a;

    invoke-virtual {v0}, Lcom/estrongs/android/k/a;->close()V

    return-object p1

    :cond_2
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/estrongs/android/k/d;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/k/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/k/d;

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/k/d;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/k/h;->c(Lcom/estrongs/android/k/d;)Lcom/estrongs/android/k/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/k/h;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/k/d;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/k/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/k/d;

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "lock_nomedia"

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "lock_realtimemonitor"

    invoke-virtual {p0, v3}, Lcom/estrongs/android/k/h;->a(Ljava/lang/String;)Lcom/estrongs/android/k/d;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/estrongs/android/k/d;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/estrongs/android/k/d;->e()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public b(Lcom/estrongs/android/k/d;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/k/h;->b:Lcom/estrongs/android/k/a;

    invoke-virtual {v0}, Lcom/estrongs/android/k/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/estrongs/android/k/h;->b:Lcom/estrongs/android/k/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/k/a;->a(Lcom/estrongs/android/k/d;)Z

    iget-object v0, p0, Lcom/estrongs/android/k/h;->b:Lcom/estrongs/android/k/a;

    invoke-virtual {v0}, Lcom/estrongs/android/k/a;->close()V

    return-void
.end method
