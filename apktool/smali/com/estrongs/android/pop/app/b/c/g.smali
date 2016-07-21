.class Lcom/estrongs/android/pop/app/b/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/i;

.field final synthetic b:Lcom/estrongs/android/pop/app/b/c/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/c/e;Lcom/estrongs/android/pop/app/b/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/c/g;->b:Lcom/estrongs/android/pop/app/b/c/e;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/c/g;->a:Lcom/estrongs/android/pop/app/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/g;->b:Lcom/estrongs/android/pop/app/b/c/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/c/e;->n:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/g;->b:Lcom/estrongs/android/pop/app/b/c/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/c/e;->n:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/g;->a:Lcom/estrongs/android/pop/app/b/i;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/b/i;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c/g;->a:Lcom/estrongs/android/pop/app/b/i;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/b/i;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
