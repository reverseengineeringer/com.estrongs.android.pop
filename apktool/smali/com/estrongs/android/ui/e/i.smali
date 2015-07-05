.class public Lcom/estrongs/android/ui/e/i;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/Button;

.field final synthetic c:Lcom/estrongs/android/ui/e/c;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/i;->c:Lcom/estrongs/android/ui/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/i;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/i;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/i;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
