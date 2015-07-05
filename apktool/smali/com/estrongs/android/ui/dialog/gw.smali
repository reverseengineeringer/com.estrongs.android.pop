.class Lcom/estrongs/android/ui/dialog/gw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/dialog/gu;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gu;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gw;->b:Lcom/estrongs/android/ui/dialog/gu;

    iput p2, p0, Lcom/estrongs/android/ui/dialog/gw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gw;->b:Lcom/estrongs/android/ui/dialog/gu;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gu;->c:Lcom/estrongs/android/ui/dialog/gx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gw;->b:Lcom/estrongs/android/ui/dialog/gu;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gu;->c:Lcom/estrongs/android/ui/dialog/gx;

    iget v1, p0, Lcom/estrongs/android/ui/dialog/gw;->a:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/ui/dialog/gx;->a(I)V

    :cond_0
    return-void
.end method
