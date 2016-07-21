.class Lcom/estrongs/android/scanner/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/d/l;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/estrongs/android/scanner/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/a;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/c;->c:Lcom/estrongs/android/scanner/a;

    iput p2, p0, Lcom/estrongs/android/scanner/c;->a:I

    iput-object p3, p0, Lcom/estrongs/android/scanner/c;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/scanner/c;->c:Lcom/estrongs/android/scanner/a;

    invoke-static {v0, p1}, Lcom/estrongs/android/scanner/a;->a(Lcom/estrongs/android/scanner/a;Landroid/database/Cursor;)Lcom/estrongs/android/scanner/a/d;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/scanner/c;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/a/d;->b(I)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
