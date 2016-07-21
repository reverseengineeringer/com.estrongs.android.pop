.class Lcom/estrongs/android/scanner/d/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/d/l;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:[J

.field final synthetic c:Lcom/estrongs/android/scanner/d/ak;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/d/ak;Ljava/util/List;[J)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/am;->c:Lcom/estrongs/android/scanner/d/ak;

    iput-object p2, p0, Lcom/estrongs/android/scanner/d/am;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/scanner/d/am;->b:[J

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

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/estrongs/android/scanner/d/ar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/estrongs/android/scanner/d/ar;-><init>(Lcom/estrongs/android/scanner/d/al;)V

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/scanner/d/ar;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/scanner/d/ar;->a:Ljava/lang/String;

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/android/scanner/d/ar;->c:J

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/android/scanner/d/ar;->d:J

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/android/scanner/d/ar;->e:J

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/am;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/am;->b:[J

    aget-wide v2, v1, v6

    iget-wide v4, v0, Lcom/estrongs/android/scanner/d/ar;->d:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/am;->b:[J

    iget-wide v2, v0, Lcom/estrongs/android/scanner/d/ar;->d:J

    aput-wide v2, v1, v6

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/scanner/d/am;->b:[J

    aget-wide v2, v1, v7

    iget-wide v4, v0, Lcom/estrongs/android/scanner/d/ar;->e:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/am;->b:[J

    iget-wide v2, v0, Lcom/estrongs/android/scanner/d/ar;->e:J

    aput-wide v2, v1, v7

    :cond_1
    return-void
.end method
