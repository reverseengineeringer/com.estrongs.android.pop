.class Lcom/estrongs/android/ui/dialog/br;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/ui/dialog/bl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bl;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/br;->c:Lcom/estrongs/android/ui/dialog/bl;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/dialog/br;->a:Z

    iput p3, p0, Lcom/estrongs/android/ui/dialog/br;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/br;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/br;->c:Lcom/estrongs/android/ui/dialog/bl;

    iget v1, p0, Lcom/estrongs/android/ui/dialog/br;->b:I

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/bl;->a(Lcom/estrongs/android/ui/dialog/bl;I)V

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/bs;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/bs;-><init>(Lcom/estrongs/android/ui/dialog/br;)V

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
