.class Lcom/estrongs/android/ui/theme/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/m;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/m;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    const-class v2, Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "set_what_color"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "theme_data_index"

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/m;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->b(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/m;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    const/16 v2, 0x1022

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
