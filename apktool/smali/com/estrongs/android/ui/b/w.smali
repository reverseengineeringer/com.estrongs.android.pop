.class Lcom/estrongs/android/ui/b/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/f;

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/ui/b/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/v;Lcom/estrongs/android/ui/b/f;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/w;->c:Lcom/estrongs/android/ui/b/v;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/w;->a:Lcom/estrongs/android/ui/b/f;

    iput p3, p0, Lcom/estrongs/android/ui/b/w;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/w;->c:Lcom/estrongs/android/ui/b/v;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->d(Lcom/estrongs/android/ui/b/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/w;->a:Lcom/estrongs/android/ui/b/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/f;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/w;->c:Lcom/estrongs/android/ui/b/v;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    iget v1, p0, Lcom/estrongs/android/ui/b/w;->b:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/u;->c(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/w;->a:Lcom/estrongs/android/ui/b/f;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/w;->c:Lcom/estrongs/android/ui/b/v;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    iget v2, p0, Lcom/estrongs/android/ui/b/w;->b:I

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/u;->h(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/f;->a(Z)V

    :cond_0
    return-void
.end method
