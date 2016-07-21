.class Lcom/estrongs/android/scanner/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/d/k;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/scanner/d/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/d/a;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/b;->c:Lcom/estrongs/android/scanner/d/a;

    iput-object p2, p0, Lcom/estrongs/android/scanner/d/b;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/scanner/d/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/b;->c:Lcom/estrongs/android/scanner/d/a;

    const-string v3, "_id"

    iget-object v4, p0, Lcom/estrongs/android/scanner/d/b;->a:Ljava/util/List;

    invoke-static {v0, v3, v4}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/a;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/scanner/d/b;->c:Lcom/estrongs/android/scanner/d/a;

    invoke-static {v4}, Lcom/estrongs/android/scanner/d/a;->a(Lcom/estrongs/android/scanner/d/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/scanner/d/b;->b:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    :goto_0
    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method
