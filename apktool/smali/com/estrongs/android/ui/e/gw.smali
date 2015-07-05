.class Lcom/estrongs/android/ui/e/gw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/gv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/gv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/gw;->a:Lcom/estrongs/android/ui/e/gv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    const/4 v0, 0x5

    if-ne p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/gw;->a:Lcom/estrongs/android/ui/e/gv;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gv;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/gx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/gx;-><init>(Lcom/estrongs/android/ui/e/gw;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
