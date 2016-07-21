.class Lcom/estrongs/android/ui/theme/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/p;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/p;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->c(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/ui/adapter/dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/dr;->a()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/p;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ThemeActivity;->c(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/ui/adapter/dr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/adapter/dr;->b(I)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/p;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/ThemeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/estrongs/android/ui/theme/al;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return v3

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/theme/p;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->d(Landroid/content/Context;)V

    goto :goto_0
.end method
