.class Lcom/estrongs/android/ui/a/cg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/cg;->a:Lcom/estrongs/android/ui/a/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/SimpleSwitchButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/SimpleSwitchButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/SimpleSwitchButton;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
