.class Lcom/estrongs/android/ui/addressbar/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/addressbar/c;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/c;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/c;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->c(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)Lcom/estrongs/android/ui/addressbar/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/c;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->c(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)Lcom/estrongs/android/ui/addressbar/f;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/c;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/c;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/addressbar/c;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v3}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->d(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/estrongs/android/ui/addressbar/f;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/c;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-static {v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->e(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
