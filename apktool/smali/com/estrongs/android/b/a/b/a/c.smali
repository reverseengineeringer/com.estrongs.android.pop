.class Lcom/estrongs/android/b/a/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/estrongs/android/pop/app/cleaner/i;

.field final synthetic c:Lcom/estrongs/android/b/a/a;

.field final synthetic d:Lcom/estrongs/android/b/a/b/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/b/a/b/a/a;Landroid/content/Context;Lcom/estrongs/android/pop/app/cleaner/i;Lcom/estrongs/android/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/b/a/b/a/c;->d:Lcom/estrongs/android/b/a/b/a/a;

    iput-object p2, p0, Lcom/estrongs/android/b/a/b/a/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/estrongs/android/b/a/b/a/c;->b:Lcom/estrongs/android/pop/app/cleaner/i;

    iput-object p4, p0, Lcom/estrongs/android/b/a/b/a/c;->c:Lcom/estrongs/android/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/a/c;->a:Landroid/content/Context;

    const v1, 0x7f030061

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v3, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    new-instance v2, Lcom/estrongs/android/b/a/b/a/d;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/b/a/b/a/d;-><init>(Lcom/estrongs/android/b/a/b/a/c;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method
