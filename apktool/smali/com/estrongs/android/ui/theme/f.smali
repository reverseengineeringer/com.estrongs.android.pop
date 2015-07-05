.class Lcom/estrongs/android/ui/theme/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/f;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/f;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->p()Z

    move-result v0

    new-instance v1, Lcom/estrongs/android/ui/theme/g;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/theme/g;-><init>(Lcom/estrongs/android/ui/theme/f;Z)V

    new-instance v0, Lcom/estrongs/android/widget/g;

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/f;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/estrongs/android/widget/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/f;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/g;->a(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/f;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/theme/h;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/h;-><init>(Lcom/estrongs/android/ui/theme/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/g;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/estrongs/android/ui/theme/i;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/i;-><init>(Lcom/estrongs/android/ui/theme/f;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/g;->a(Lcom/estrongs/android/view/cc;)V

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->j()V

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/f;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->a(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;Lcom/estrongs/android/widget/g;)Lcom/estrongs/android/widget/g;

    return-void
.end method
