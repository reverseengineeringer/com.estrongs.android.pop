.class Lcom/estrongs/android/ui/d/c;
.super Lcom/estrongs/android/ui/view/IndicatorView;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/d/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/d/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/d/c;->a:Lcom/estrongs/android/ui/d/b;

    invoke-direct {p0, p2}, Lcom/estrongs/android/ui/view/IndicatorView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->a:Lcom/estrongs/android/ui/d/b;

    invoke-static {v0}, Lcom/estrongs/android/ui/d/b;->a(Lcom/estrongs/android/ui/d/b;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->a:Lcom/estrongs/android/ui/d/b;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/d/b;->a(I)V

    :cond_0
    return-void
.end method
