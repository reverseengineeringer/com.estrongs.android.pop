.class Lcom/estrongs/android/scanner/d/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/d/l;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/scanner/d/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/d/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/o;->b:Lcom/estrongs/android/scanner/d/m;

    iput-object p2, p0, Lcom/estrongs/android/scanner/d/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/o;->b:Lcom/estrongs/android/scanner/d/m;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirStoreInfo, path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/database/Cursor;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v6, Lcom/estrongs/android/scanner/d/q;

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-direct {v6, v2, v3, v0, v5}, Lcom/estrongs/android/scanner/d/q;-><init>(JZI)V

    invoke-static {}, Lcom/estrongs/android/scanner/d/m;->c()Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
