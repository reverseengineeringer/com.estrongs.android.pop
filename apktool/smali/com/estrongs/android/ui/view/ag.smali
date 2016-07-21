.class Lcom/estrongs/android/ui/view/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ag;->a:Lcom/estrongs/android/ui/view/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ag;->a:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ag;->a:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ac;->a(Z)V

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method
