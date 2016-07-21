.class Lcom/estrongs/android/pop/app/analysis/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/b/g;

.field final synthetic b:Lcom/estrongs/android/pop/app/analysis/a/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/a/i;Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/k;->b:Lcom/estrongs/android/pop/app/analysis/a/i;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/a/k;->a:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/k;->b:Lcom/estrongs/android/pop/app/analysis/a/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/a/i;->e:Lcom/estrongs/android/pop/app/analysis/a/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/k;->b:Lcom/estrongs/android/pop/app/analysis/a/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/a/i;->e:Lcom/estrongs/android/pop/app/analysis/a/m;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/k;->a:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/m;->b(Lcom/estrongs/android/pop/app/analysis/b/g;)V

    :cond_0
    return-void
.end method
