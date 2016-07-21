.class Lcom/estrongs/android/ui/theme/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/a;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/a;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->a(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->g()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v6

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/theme/a;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->b(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/theme/al;

    iget-object v1, v0, Lcom/estrongs/android/ui/theme/al;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/a;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->b(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/a;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08069f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v3, p0, Lcom/estrongs/android/ui/theme/a;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-direct {v2, v3}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0806ad

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/theme/a;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    const v4, 0x7f0806ac

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    const v2, 0x7f080226

    new-instance v3, Lcom/estrongs/android/ui/theme/c;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/theme/c;-><init>(Lcom/estrongs/android/ui/theme/a;Lcom/estrongs/android/ui/theme/al;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    new-instance v2, Lcom/estrongs/android/ui/theme/b;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/b;-><init>(Lcom/estrongs/android/ui/theme/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    goto :goto_0
.end method
