.class Lcom/estrongs/android/widget/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/TranslateImageView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/TranslateImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/bt;->a:Lcom/estrongs/android/widget/TranslateImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/bt;->a:Lcom/estrongs/android/widget/TranslateImageView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/TranslateImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/bt;->a:Lcom/estrongs/android/widget/TranslateImageView;

    invoke-static {v0}, Lcom/estrongs/android/widget/TranslateImageView;->a(Lcom/estrongs/android/widget/TranslateImageView;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/widget/bt;->a:Lcom/estrongs/android/widget/TranslateImageView;

    invoke-static {v1}, Lcom/estrongs/android/widget/TranslateImageView;->b(Lcom/estrongs/android/widget/TranslateImageView;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/bt;->a:Lcom/estrongs/android/widget/TranslateImageView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/TranslateImageView;->postInvalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/bt;->a:Lcom/estrongs/android/widget/TranslateImageView;

    iget-object v1, p0, Lcom/estrongs/android/widget/bt;->a:Lcom/estrongs/android/widget/TranslateImageView;

    invoke-static {v1}, Lcom/estrongs/android/widget/TranslateImageView;->a(Lcom/estrongs/android/widget/TranslateImageView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/widget/TranslateImageView;->a(Lcom/estrongs/android/widget/TranslateImageView;I)I

    iget-object v0, p0, Lcom/estrongs/android/widget/bt;->a:Lcom/estrongs/android/widget/TranslateImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/widget/TranslateImageView;->a(Lcom/estrongs/android/widget/TranslateImageView;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/widget/bt;->a:Lcom/estrongs/android/widget/TranslateImageView;

    invoke-static {v0}, Lcom/estrongs/android/widget/TranslateImageView;->c(Lcom/estrongs/android/widget/TranslateImageView;)Lcom/estrongs/android/widget/bv;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/bt;->a:Lcom/estrongs/android/widget/TranslateImageView;

    invoke-static {v0}, Lcom/estrongs/android/widget/TranslateImageView;->c(Lcom/estrongs/android/widget/TranslateImageView;)Lcom/estrongs/android/widget/bv;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/widget/bv;->a()V

    iget-object v0, p0, Lcom/estrongs/android/widget/bt;->a:Lcom/estrongs/android/widget/TranslateImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/widget/TranslateImageView;->a(Lcom/estrongs/android/widget/TranslateImageView;Lcom/estrongs/android/widget/bv;)Lcom/estrongs/android/widget/bv;

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/widget/bt;->a:Lcom/estrongs/android/widget/TranslateImageView;

    invoke-static {v0}, Lcom/estrongs/android/widget/TranslateImageView;->b(Lcom/estrongs/android/widget/TranslateImageView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/bt;->a:Lcom/estrongs/android/widget/TranslateImageView;

    invoke-static {v0}, Lcom/estrongs/android/widget/TranslateImageView;->d(Lcom/estrongs/android/widget/TranslateImageView;)Lcom/estrongs/android/widget/bu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/bt;->a:Lcom/estrongs/android/widget/TranslateImageView;

    invoke-static {v0}, Lcom/estrongs/android/widget/TranslateImageView;->d(Lcom/estrongs/android/widget/TranslateImageView;)Lcom/estrongs/android/widget/bu;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/widget/bu;->a()V

    goto :goto_0
.end method
