.class Lcom/estrongs/android/scanner/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/d/k;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:J

.field final synthetic c:Lcom/estrongs/android/scanner/d/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/d/a;Ljava/util/Set;J)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/e;->c:Lcom/estrongs/android/scanner/d/a;

    iput-object p2, p0, Lcom/estrongs/android/scanner/d/e;->a:Ljava/util/Set;

    iput-wide p3, p0, Lcom/estrongs/android/scanner/d/e;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 8

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/e;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/b;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/b;->a()Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/scanner/d/e;->c:Lcom/estrongs/android/scanner/d/a;

    invoke-static {v4}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "directory"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    const-string v1, "Dbhelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!error for inserting dir, path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "Dbhelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertDirBulk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/estrongs/android/scanner/d/e;->b:J

    sub-long/2addr v2, v6

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/scanner/d/e;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
