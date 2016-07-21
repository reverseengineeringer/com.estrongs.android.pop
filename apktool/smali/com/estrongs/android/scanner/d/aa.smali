.class Lcom/estrongs/android/scanner/d/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/d/l;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/d/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/d/z;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/aa;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/database/Cursor;)V
    .locals 12

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/estrongs/android/scanner/a/d;

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/estrongs/android/scanner/a/d;-><init>(JLjava/lang/String;Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/aa;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/z;->a(Lcom/estrongs/android/scanner/d/z;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/aa;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v2}, Lcom/estrongs/android/scanner/d/z;->a(Lcom/estrongs/android/scanner/d/z;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
