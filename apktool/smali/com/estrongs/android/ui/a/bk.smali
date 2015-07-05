.class Lcom/estrongs/android/ui/a/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bk;->a:Lcom/estrongs/android/ui/a/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bk;->a:Lcom/estrongs/android/ui/a/bj;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bj;->b:Lcom/estrongs/android/ui/a/bi;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bi;->a:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->a(Landroid/content/Context;)V

    return-void
.end method
