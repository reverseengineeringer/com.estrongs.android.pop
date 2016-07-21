.class Lcom/estrongs/android/scanner/d/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/d/l;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/scanner/d/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/d/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/i;->b:Lcom/estrongs/android/scanner/d/a;

    iput-object p2, p0, Lcom/estrongs/android/scanner/d/i;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/database/Cursor;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
