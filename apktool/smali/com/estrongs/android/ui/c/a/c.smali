.class Lcom/estrongs/android/ui/c/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/a/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/c;->a:Lcom/estrongs/android/ui/c/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/c;->a:Lcom/estrongs/android/ui/c/a/b;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/a/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ai;->f(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/c;->a:Lcom/estrongs/android/ui/c/a/b;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/a/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/c;->a:Lcom/estrongs/android/ui/c/a/b;

    invoke-static {v1}, Lcom/estrongs/android/ui/c/a/b;->a(Lcom/estrongs/android/ui/c/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/c/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/c;->a:Lcom/estrongs/android/ui/c/a/b;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/a/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Homepage_A"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "analysis"

    const-string v2, "Homepage_A"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/c;->a:Lcom/estrongs/android/ui/c/a/b;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/a/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/j/d;->a(Landroid/content/Context;)V

    return-void
.end method
