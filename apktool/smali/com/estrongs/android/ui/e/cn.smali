.class public Lcom/estrongs/android/ui/e/cn;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ck;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/e/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cn;->a:Lcom/estrongs/android/ui/e/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/cn;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cn;->b:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/cn;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cn;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/cn;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cn;->c:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/cn;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cn;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cn;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cn;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cn;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cn;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cn;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
