.class Lcom/estrongs/android/scanner/d/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/d/k;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/scanner/d/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/d/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/j;->b:Lcom/estrongs/android/scanner/d/a;

    iput-object p2, p0, Lcom/estrongs/android/scanner/d/j;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/j;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/android/cleaner/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/j;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/d/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    :goto_2
    return v0

    :cond_0
    iget-object v4, p0, Lcom/estrongs/android/scanner/d/j;->b:Lcom/estrongs/android/scanner/d/a;

    const-string v5, "pid"

    invoke-static {v4, v5, v0}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/a;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "Dbhelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete files within directory, where:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/estrongs/android/scanner/d/j;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-static {v5}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v5, p0, Lcom/estrongs/android/scanner/d/j;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-static {v5}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "video"

    invoke-virtual {v5, v6, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v5, p0, Lcom/estrongs/android/scanner/d/j;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-static {v5}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "image"

    invoke-virtual {v5, v6, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v5, p0, Lcom/estrongs/android/scanner/d/j;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-static {v5}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "apk"

    invoke-virtual {v5, v6, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v5, p0, Lcom/estrongs/android/scanner/d/j;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-static {v5}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "text"

    invoke-virtual {v5, v6, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v5, p0, Lcom/estrongs/android/scanner/d/j;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-static {v5}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "zip"

    invoke-virtual {v5, v6, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v5, p0, Lcom/estrongs/android/scanner/d/j;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-static {v5}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "encrypt"

    invoke-virtual {v5, v6, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "path"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " LIKE "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dbhelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete directory-self/sub-dir, where:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/j;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-static {v1}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "directory"

    invoke-virtual {v1, v4, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move-object v1, v0

    goto/16 :goto_1
.end method
