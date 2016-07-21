.class Lcom/estrongs/android/ui/navigation/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/f;->a:Lcom/estrongs/android/ui/navigation/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/f;->a:Lcom/estrongs/android/ui/navigation/e;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/e;->a:Lcom/estrongs/android/ui/navigation/c;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/c;->a:Lcom/estrongs/android/ui/navigation/MultiWindowActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->e()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->c()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
