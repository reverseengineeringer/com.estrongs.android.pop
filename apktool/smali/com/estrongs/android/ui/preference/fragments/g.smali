.class Lcom/estrongs/android/ui/preference/fragments/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/estrongs/android/ui/preference/fragments/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/d;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/g;->c:Lcom/estrongs/android/ui/preference/fragments/d;

    iput-object p2, p0, Lcom/estrongs/android/ui/preference/fragments/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/preference/fragments/g;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/g;->c:Lcom/estrongs/android/ui/preference/fragments/d;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/d;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->p()Z

    move-result v0

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/h;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/preference/fragments/h;-><init>(Lcom/estrongs/android/ui/preference/fragments/g;Z)V

    new-instance v2, Lcom/estrongs/android/widget/g;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/g;->c:Lcom/estrongs/android/ui/preference/fragments/d;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/d;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/g;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/estrongs/android/widget/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/g;->c:Lcom/estrongs/android/ui/preference/fragments/d;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/d;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/widget/g;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/g;->c:Lcom/estrongs/android/ui/preference/fragments/d;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/d;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/i;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/ui/preference/fragments/i;-><init>(Lcom/estrongs/android/ui/preference/fragments/g;Lcom/estrongs/android/widget/g;)V

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/widget/g;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/g;->c:Lcom/estrongs/android/ui/preference/fragments/d;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/d;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/j;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/ui/preference/fragments/j;-><init>(Lcom/estrongs/android/ui/preference/fragments/g;Lcom/estrongs/android/widget/g;)V

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/widget/g;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Lcom/estrongs/android/widget/g;->j()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/g;->a:Ljava/lang/String;

    goto :goto_0
.end method
