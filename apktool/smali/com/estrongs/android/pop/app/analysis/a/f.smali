.class Lcom/estrongs/android/pop/app/analysis/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/b/g;

.field final synthetic b:Lcom/estrongs/android/pop/app/analysis/a/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/a/e;Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/f;->b:Lcom/estrongs/android/pop/app/analysis/a/e;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/a/f;->a:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/f;->b:Lcom/estrongs/android/pop/app/analysis/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/e;->a(Lcom/estrongs/android/pop/app/analysis/a/e;)Lcom/estrongs/android/pop/app/analysis/a/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/f;->b:Lcom/estrongs/android/pop/app/analysis/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/e;->a(Lcom/estrongs/android/pop/app/analysis/a/e;)Lcom/estrongs/android/pop/app/analysis/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/f;->a:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/h;->a(Lcom/estrongs/android/pop/app/analysis/b/g;)V

    :cond_0
    return-void
.end method
