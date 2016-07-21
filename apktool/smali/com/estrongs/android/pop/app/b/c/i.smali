.class Lcom/estrongs/android/pop/app/b/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/b;

.field final synthetic b:Lcom/estrongs/android/pop/app/b/c/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/c/h;Lcom/estrongs/android/pop/app/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/c/i;->b:Lcom/estrongs/android/pop/app/b/c/h;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/c/i;->a:Lcom/estrongs/android/pop/app/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/i;->b:Lcom/estrongs/android/pop/app/b/c/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/c/h;->n:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/i;->b:Lcom/estrongs/android/pop/app/b/c/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/c/h;->n:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/i;->a:Lcom/estrongs/android/pop/app/b/b;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/i;->b:Lcom/estrongs/android/pop/app/b/c/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/c/h;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "log"

    const-string v2, "jump"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
