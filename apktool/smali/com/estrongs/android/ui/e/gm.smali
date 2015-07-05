.class Lcom/estrongs/android/ui/e/gm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/gl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/gl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/gm;->a:Lcom/estrongs/android/ui/e/gl;

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
    iget-object v0, p0, Lcom/estrongs/android/ui/e/gm;->a:Lcom/estrongs/android/ui/e/gl;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gl;->b:Lcom/estrongs/android/ui/e/gj;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/gj;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/gn;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/e/gn;-><init>(Lcom/estrongs/android/ui/e/gm;Lcom/estrongs/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
