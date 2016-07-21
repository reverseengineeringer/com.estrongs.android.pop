.class Lcom/estrongs/android/pop/app/b/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/b;

.field final synthetic b:Lcom/estrongs/android/pop/app/b/i;

.field final synthetic c:Lcom/estrongs/android/pop/app/b/c/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/c/a;Lcom/estrongs/android/pop/app/b/b;Lcom/estrongs/android/pop/app/b/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/c/c;->c:Lcom/estrongs/android/pop/app/b/c/a;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/c/c;->a:Lcom/estrongs/android/pop/app/b/b;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/b/c/c;->b:Lcom/estrongs/android/pop/app/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/c;->c:Lcom/estrongs/android/pop/app/b/c/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/c/a;->n:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/c;->a:Lcom/estrongs/android/pop/app/b/b;

    iget v0, v0, Lcom/estrongs/android/pop/app/b/b;->c:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/c;->c:Lcom/estrongs/android/pop/app/b/c/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/c/a;->n:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/c;->c:Lcom/estrongs/android/pop/app/b/c/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/c/a;->n:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/c;->b:Lcom/estrongs/android/pop/app/b/i;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/b/i;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/c;->c:Lcom/estrongs/android/pop/app/b/c/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/c;->a:Lcom/estrongs/android/pop/app/b/b;

    iget v1, v1, Lcom/estrongs/android/pop/app/b/b;->c:I

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/b/c/a;->a(Lcom/estrongs/android/pop/app/b/c/a;I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/c;->c:Lcom/estrongs/android/pop/app/b/c/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/c/a;->n:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/c;->b:Lcom/estrongs/android/pop/app/b/i;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/b/i;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c/c;->b:Lcom/estrongs/android/pop/app/b/i;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/b/i;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
