.class Lcom/estrongs/android/pop/view/cy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/aw;

.field final synthetic b:Z

.field final synthetic c:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/view/aw;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cy;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/cy;->a:Lcom/estrongs/android/view/aw;

    iput-boolean p3, p0, Lcom/estrongs/android/pop/view/cy;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v1, 0x8

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cy;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->N:Lcom/estrongs/android/ui/f/f;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cy;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v3}, Lcom/estrongs/android/view/aw;->ab()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/f/f;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cy;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v2

    instance-of v2, v2, Lcom/estrongs/android/ui/c/a;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cy;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->N:Lcom/estrongs/android/ui/f/f;

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/f/f;->a(I)V

    :goto_0
    iget-boolean v3, p0, Lcom/estrongs/android/pop/view/cy;->b:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cy;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->N:Lcom/estrongs/android/ui/f/f;

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/f/f;->b(I)V

    :goto_1
    iget-object v3, p0, Lcom/estrongs/android/pop/view/cy;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->N:Lcom/estrongs/android/ui/f/f;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/cy;->b:Z

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/f/f;->c(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cy;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->N:Lcom/estrongs/android/ui/f/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/f;->b()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/pop/view/cy;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->N:Lcom/estrongs/android/ui/f/f;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/f/f;->a(I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/pop/view/cy;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->N:Lcom/estrongs/android/ui/f/f;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/f/f;->b(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
