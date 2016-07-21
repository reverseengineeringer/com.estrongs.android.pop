.class Lcom/estrongs/android/scanner/d/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/d/l;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/estrongs/android/scanner/d/ak;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/d/ak;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/al;->c:Lcom/estrongs/android/scanner/d/ak;

    iput-object p2, p0, Lcom/estrongs/android/scanner/d/al;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/scanner/d/al;->b:Ljava/util/List;

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

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    new-instance v1, Lcom/estrongs/android/pop/app/b/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/al;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/pop/app/b/i;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/al;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
