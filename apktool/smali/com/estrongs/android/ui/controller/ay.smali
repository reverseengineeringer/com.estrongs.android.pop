.class Lcom/estrongs/android/ui/controller/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;

.field final synthetic b:Z

.field final synthetic c:Lcom/estrongs/android/ui/controller/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/aj;Lcom/estrongs/android/view/cr;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/ay;->c:Lcom/estrongs/android/ui/controller/aj;

    iput-object p2, p0, Lcom/estrongs/android/ui/controller/ay;->a:Lcom/estrongs/android/view/cr;

    iput-boolean p3, p0, Lcom/estrongs/android/ui/controller/ay;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v1, 0x8

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/ay;->c:Lcom/estrongs/android/ui/controller/aj;

    iget-object v2, v2, Lcom/estrongs/android/ui/controller/aj;->l:Lcom/estrongs/android/ui/f/l;

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/ay;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v3}, Lcom/estrongs/android/view/cr;->aq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/f/l;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/ay;->c:Lcom/estrongs/android/ui/controller/aj;

    iget-object v2, v2, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v2

    instance-of v2, v2, Lcom/estrongs/android/ui/c/e;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/ay;->c:Lcom/estrongs/android/ui/controller/aj;

    iget-object v3, v3, Lcom/estrongs/android/ui/controller/aj;->l:Lcom/estrongs/android/ui/f/l;

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/f/l;->a(I)V

    :goto_0
    iget-boolean v3, p0, Lcom/estrongs/android/ui/controller/ay;->b:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/ay;->c:Lcom/estrongs/android/ui/controller/aj;

    iget-object v3, v3, Lcom/estrongs/android/ui/controller/aj;->l:Lcom/estrongs/android/ui/f/l;

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/f/l;->b(I)V

    :goto_1
    iget-object v3, p0, Lcom/estrongs/android/ui/controller/ay;->c:Lcom/estrongs/android/ui/controller/aj;

    iget-object v3, v3, Lcom/estrongs/android/ui/controller/aj;->l:Lcom/estrongs/android/ui/f/l;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/estrongs/android/ui/controller/ay;->b:Z

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/f/l;->c(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ay;->c:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->l:Lcom/estrongs/android/ui/f/l;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/l;->b()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/ui/controller/ay;->c:Lcom/estrongs/android/ui/controller/aj;

    iget-object v3, v3, Lcom/estrongs/android/ui/controller/aj;->l:Lcom/estrongs/android/ui/f/l;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/f/l;->a(I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/ui/controller/ay;->c:Lcom/estrongs/android/ui/controller/aj;

    iget-object v3, v3, Lcom/estrongs/android/ui/controller/aj;->l:Lcom/estrongs/android/ui/f/l;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/f/l;->b(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
