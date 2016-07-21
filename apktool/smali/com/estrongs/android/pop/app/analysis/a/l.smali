.class Lcom/estrongs/android/pop/app/analysis/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/b/g;

.field final synthetic b:Lcom/estrongs/android/pop/app/analysis/a/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/a/i;Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/l;->b:Lcom/estrongs/android/pop/app/analysis/a/i;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/a/l;->a:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/l;->b:Lcom/estrongs/android/pop/app/analysis/a/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/a/i;->f:Lcom/estrongs/android/pop/app/analysis/a/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/l;->b:Lcom/estrongs/android/pop/app/analysis/a/i;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/l;->a:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Lcom/estrongs/android/pop/app/analysis/b/g;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/l;->b:Lcom/estrongs/android/pop/app/analysis/a/i;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/analysis/a/i;->f:Lcom/estrongs/android/pop/app/analysis/a/n;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/l;->a:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-interface {v1, v0, v2}, Lcom/estrongs/android/pop/app/analysis/a/n;->a(ILcom/estrongs/android/pop/app/analysis/b/g;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/l;->b:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->k()Z

    move-result v0

    return v0
.end method
