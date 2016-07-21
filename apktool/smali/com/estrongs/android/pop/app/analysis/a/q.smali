.class Lcom/estrongs/android/pop/app/analysis/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/pop/app/analysis/a/w;

.field final synthetic c:Lcom/estrongs/android/pop/app/analysis/a/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/a/o;ILcom/estrongs/android/pop/app/analysis/a/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/q;->c:Lcom/estrongs/android/pop/app/analysis/a/o;

    iput p2, p0, Lcom/estrongs/android/pop/app/analysis/a/q;->a:I

    iput-object p3, p0, Lcom/estrongs/android/pop/app/analysis/a/q;->b:Lcom/estrongs/android/pop/app/analysis/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/q;->c:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->e(Lcom/estrongs/android/pop/app/analysis/a/o;)Lcom/estrongs/android/pop/app/analysis/a/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/q;->c:Lcom/estrongs/android/pop/app/analysis/a/o;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/o;->e(Lcom/estrongs/android/pop/app/analysis/a/o;)Lcom/estrongs/android/pop/app/analysis/a/y;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/a/q;->a:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/q;->b:Lcom/estrongs/android/pop/app/analysis/a/w;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/a/q;->b:Lcom/estrongs/android/pop/app/analysis/a/w;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/analysis/a/w;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/analysis/a/y;->a(ILcom/estrongs/android/pop/app/analysis/a/u;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
