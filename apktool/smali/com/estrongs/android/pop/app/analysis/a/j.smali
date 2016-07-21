.class Lcom/estrongs/android/pop/app/analysis/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/b/g;

.field final synthetic b:Lcom/estrongs/android/pop/app/analysis/a/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/a/i;Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/j;->b:Lcom/estrongs/android/pop/app/analysis/a/i;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/a/j;->a:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/j;->b:Lcom/estrongs/android/pop/app/analysis/a/i;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/j;->a:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Lcom/estrongs/android/pop/app/analysis/b/g;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/j;->b:Lcom/estrongs/android/pop/app/analysis/a/i;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/j;->a:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Lcom/estrongs/android/pop/app/analysis/b/g;I)V

    return-void
.end method
