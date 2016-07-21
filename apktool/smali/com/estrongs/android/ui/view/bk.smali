.class Lcom/estrongs/android/ui/view/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/IndicatorView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/IndicatorView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/bk;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bk;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bk;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bk;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/IndicatorView;->e(Lcom/estrongs/android/ui/view/IndicatorView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/IndicatorView;->c(I)V

    :cond_0
    return-void
.end method
