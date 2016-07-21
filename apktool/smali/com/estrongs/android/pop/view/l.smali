.class Lcom/estrongs/android/pop/view/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/l;->a:Lcom/estrongs/android/pop/view/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/l;->a:Lcom/estrongs/android/pop/view/k;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/k;->a:Lcom/estrongs/android/pop/view/j;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/j;->a:Lcom/estrongs/android/pop/view/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/h;->a:Lcom/estrongs/android/pop/view/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/g;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Z)V

    return-void
.end method
