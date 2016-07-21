.class Lcom/estrongs/android/pop/app/analysis/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/a/u;

.field final synthetic b:Lcom/estrongs/android/pop/app/analysis/b/g;

.field final synthetic c:Lcom/estrongs/android/pop/app/analysis/a/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/a/ac;Lcom/estrongs/android/pop/app/analysis/a/u;Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/ad;->c:Lcom/estrongs/android/pop/app/analysis/a/ac;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/a/ad;->a:Lcom/estrongs/android/pop/app/analysis/a/u;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/analysis/a/ad;->b:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/ad;->c:Lcom/estrongs/android/pop/app/analysis/a/ac;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/ac;->a(Lcom/estrongs/android/pop/app/analysis/a/ac;)Lcom/estrongs/android/pop/app/analysis/a/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/ad;->c:Lcom/estrongs/android/pop/app/analysis/a/ac;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/ac;->a(Lcom/estrongs/android/pop/app/analysis/a/ac;)Lcom/estrongs/android/pop/app/analysis/a/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/ad;->a:Lcom/estrongs/android/pop/app/analysis/a/u;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/ad;->b:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a/ae;->a(Lcom/estrongs/android/pop/app/analysis/a/u;Lcom/estrongs/android/pop/app/analysis/b/g;)V

    :cond_0
    return-void
.end method
