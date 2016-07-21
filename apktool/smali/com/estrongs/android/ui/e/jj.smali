.class Lcom/estrongs/android/ui/e/jj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/estrongs/android/ui/e/ji;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ji;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/jj;->b:Lcom/estrongs/android/ui/e/ji;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/jj;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/ui/e/jj;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jj;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
