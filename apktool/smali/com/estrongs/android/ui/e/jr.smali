.class Lcom/estrongs/android/ui/e/jr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/jp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/jp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/jr;->a:Lcom/estrongs/android/ui/e/jp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/jr;->a:Lcom/estrongs/android/ui/e/jp;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/e/jp;->b(I)Lcom/estrongs/android/view/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/estrongs/android/view/a/a;->d()Lcom/estrongs/android/view/a/e;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/estrongs/android/view/a/a;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jr;->a:Lcom/estrongs/android/ui/e/jp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/jp;->b(Lcom/estrongs/android/ui/e/jp;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Lcom/estrongs/android/view/a/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/e/jr;->a:Lcom/estrongs/android/ui/e/jp;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/jp;->b(Lcom/estrongs/android/ui/e/jp;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/estrongs/android/view/a/a;->e()V

    goto :goto_0
.end method
