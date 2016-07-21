.class Lcom/estrongs/android/ui/theme/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/q;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/q;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    const-class v2, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "theme_data_index"

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/q;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/ThemeActivity;->c(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/ui/adapter/dr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/adapter/dr;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/q;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    const/16 v2, 0x1024

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/theme/ThemeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    return v0
.end method
