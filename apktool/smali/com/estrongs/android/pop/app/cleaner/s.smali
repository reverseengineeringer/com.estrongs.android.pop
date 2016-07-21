.class final Lcom/estrongs/android/pop/app/cleaner/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/a/d;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/estrongs/android/ui/view/ScanProgressView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/estrongs/android/ui/view/ScanProgressView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/s;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cleaner/s;->b:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/support/v4/a/l;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {p1}, Landroid/support/v4/a/l;->c()F

    move-result v0

    sub-float v1, v4, v0

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    const v2, 0x3f333333    # 0.7f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/s;->a:Landroid/view/View;

    invoke-static {v2, v1}, Landroid/support/v4/view/cn;->h(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/s;->a:Landroid/view/View;

    invoke-static {v2, v1}, Landroid/support/v4/view/cn;->i(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/s;->b:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-static {v2, v1}, Landroid/support/v4/view/cn;->h(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/s;->b:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-static {v2, v1}, Landroid/support/v4/view/cn;->i(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/s;->a:Landroid/view/View;

    sub-float v2, v4, v0

    invoke-static {v1, v2}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/s;->b:Lcom/estrongs/android/ui/view/ScanProgressView;

    sub-float v2, v4, v0

    invoke-static {v1, v2}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/s;->a:Landroid/view/View;

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v3, v4, v0

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Landroid/support/v4/view/cn;->g(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/s;->b:Lcom/estrongs/android/ui/view/ScanProgressView;

    const/high16 v2, 0x43340000    # 180.0f

    sub-float v0, v4, v0

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Landroid/support/v4/view/cn;->g(Landroid/view/View;F)V

    return-void
.end method
