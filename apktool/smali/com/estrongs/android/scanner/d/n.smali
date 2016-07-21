.class Lcom/estrongs/android/scanner/d/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/d/l;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/d/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/d/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/n;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/database/Cursor;)V
    .locals 8

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    new-instance v1, Lcom/estrongs/android/scanner/a/b;

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/scanner/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/n;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/m;->a(Lcom/estrongs/android/scanner/d/m;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/n;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/m;->b(Lcom/estrongs/android/scanner/d/m;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/scanner/d/n;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v3}, Lcom/estrongs/android/scanner/d/m;->b(Lcom/estrongs/android/scanner/d/m;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
