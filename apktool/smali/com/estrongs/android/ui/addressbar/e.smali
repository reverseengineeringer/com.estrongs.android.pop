.class Lcom/estrongs/android/ui/addressbar/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x15

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v3}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->d(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->invalidate()V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x16

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v3}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->d(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->invalidate()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v2, 0x17

    if-ne p2, v2, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->d(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->f(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)Lcom/estrongs/android/ui/addressbar/f;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->f(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)Lcom/estrongs/android/ui/addressbar/f;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    iget-object v3, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v3}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v4}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->d(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/estrongs/android/ui/addressbar/f;->a(Landroid/view/View;II)V

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->e(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/e;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->invalidate()V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method
