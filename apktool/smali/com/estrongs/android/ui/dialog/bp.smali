.class Lcom/estrongs/android/ui/dialog/bp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/ui/dialog/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bj;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bp;->c:Lcom/estrongs/android/ui/dialog/bj;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/dialog/bp;->a:Z

    iput p3, p0, Lcom/estrongs/android/ui/dialog/bp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/bp;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bp;->c:Lcom/estrongs/android/ui/dialog/bj;

    iget v1, p0, Lcom/estrongs/android/ui/dialog/bp;->b:I

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/bj;->a(Lcom/estrongs/android/ui/dialog/bj;I)V

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/bq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/bq;-><init>(Lcom/estrongs/android/ui/dialog/bp;)V

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
