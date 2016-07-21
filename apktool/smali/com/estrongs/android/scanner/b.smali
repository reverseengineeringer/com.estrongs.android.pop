.class Lcom/estrongs/android/scanner/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/d/l;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/scanner/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/b;->b:Lcom/estrongs/android/scanner/a;

    iput-object p2, p0, Lcom/estrongs/android/scanner/b;->a:Ljava/util/List;

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

    const/4 v11, 0x4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    new-instance v1, Lcom/estrongs/android/scanner/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/scanner/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v1, v10}, Lcom/estrongs/android/scanner/a/d;->e(I)V

    invoke-virtual {v1, v9}, Lcom/estrongs/android/scanner/a/d;->d(I)V

    invoke-virtual {v1, v8}, Lcom/estrongs/android/scanner/a/d;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lcom/estrongs/android/scanner/a/d;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
