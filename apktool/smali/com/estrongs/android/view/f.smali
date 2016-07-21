.class Lcom/estrongs/android/view/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/f;->a:Lcom/estrongs/android/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/f;->a:Lcom/estrongs/android/view/b;

    invoke-static {v0}, Lcom/estrongs/android/view/b;->d(Lcom/estrongs/android/view/b;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/cn;->e(Landroid/view/View;F)V

    return-void
.end method
