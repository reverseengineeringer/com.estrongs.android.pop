.class public Lcom/estrongs/android/ui/c/c/f;
.super Lcom/estrongs/android/ui/c/c/a;


# instance fields
.field private b:Lcom/estrongs/android/ui/c/b/a;

.field private c:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0300e4

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/c/c/a;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/c/b/a;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/c/c/f;->b:Lcom/estrongs/android/ui/c/b/a;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/f;->itemView:Landroid/view/View;

    const v1, 0x7f0e0422

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/c/f;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/c/b/a;->a(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/f;->b:Lcom/estrongs/android/ui/c/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/a;->a()V

    return-void
.end method
