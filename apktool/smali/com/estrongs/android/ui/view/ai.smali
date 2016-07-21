.class Lcom/estrongs/android/ui/view/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/aj;

.field final synthetic b:Lcom/estrongs/android/ui/view/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ac;Lcom/estrongs/android/ui/view/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ai;->b:Lcom/estrongs/android/ui/view/ac;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/ai;->a:Lcom/estrongs/android/ui/view/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ai;->b:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ai;->a:Lcom/estrongs/android/ui/view/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aj;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ai;->b:Lcom/estrongs/android/ui/view/ac;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ac;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ai;->a:Lcom/estrongs/android/ui/view/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aj;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method
