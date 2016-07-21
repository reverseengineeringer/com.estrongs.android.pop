.class public Lcom/estrongs/android/ui/preference/DirChoosePreference;
.super Landroid/preference/EditTextPreference;


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/preference/DirChoosePreference;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/DirChoosePreference;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/ui/preference/DirChoosePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/estrongs/android/ui/preference/DirChoosePreference;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/DirChoosePreference;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/DirChoosePreference;->b:Landroid/content/Context;

    sget-object v0, Lcom/estrongs/android/pop/ah;->DirChoosePreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/estrongs/android/ui/preference/DirChoosePreference;->c:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/DirChoosePreference;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/DirChoosePreference;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/DirChoosePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/DirChoosePreference;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/DirChoosePreference;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x1

    sget-boolean v0, Lcom/estrongs/android/pop/z;->n:Z

    if-eqz v0, :cond_1

    move v5, v4

    :goto_0
    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/estrongs/android/ui/preference/DirChoosePreference;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/DirChoosePreference;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->q()Z

    move-result v0

    new-instance v3, Lcom/estrongs/android/ui/preference/b;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/preference/b;-><init>(Lcom/estrongs/android/ui/preference/DirChoosePreference;Z)V

    new-instance v0, Lcom/estrongs/android/widget/f;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/DirChoosePreference;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/DirChoosePreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;ZZ)V

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/DirChoosePreference;->b:Landroid/content/Context;

    const v2, 0x7f080221

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/widget/f;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/DirChoosePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/f;->a(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/DirChoosePreference;->b:Landroid/content/Context;

    const v2, 0x7f080226

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/preference/c;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/preference/c;-><init>(Lcom/estrongs/android/ui/preference/DirChoosePreference;Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/f;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p0}, Lcom/estrongs/android/widget/f;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/widget/f;->j()V

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
