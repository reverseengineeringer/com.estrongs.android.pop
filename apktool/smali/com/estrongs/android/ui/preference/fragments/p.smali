.class Lcom/estrongs/android/ui/preference/fragments/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/estrongs/android/ui/preference/fragments/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/l;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/p;->b:Lcom/estrongs/android/ui/preference/fragments/l;

    iput-object p2, p0, Lcom/estrongs/android/ui/preference/fragments/p;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/p;->b:Lcom/estrongs/android/ui/preference/fragments/l;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/l;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->q()Z

    move-result v0

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/q;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/preference/fragments/q;-><init>(Lcom/estrongs/android/ui/preference/fragments/p;Z)V

    const/4 v0, -0x1

    sget-boolean v2, Lcom/estrongs/android/pop/z;->n:Z

    if-eqz v2, :cond_0

    const/4 v0, -0x2

    :cond_0
    new-instance v2, Lcom/estrongs/android/widget/f;

    iget-object v3, p0, Lcom/estrongs/android/ui/preference/fragments/p;->b:Lcom/estrongs/android/ui/preference/fragments/l;

    iget-object v3, v3, Lcom/estrongs/android/ui/preference/fragments/l;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/estrongs/android/widget/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/p;->b:Lcom/estrongs/android/ui/preference/fragments/l;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/l;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/widget/f;->a(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/ui/preference/fragments/r;

    invoke-direct {v0, p0, v2}, Lcom/estrongs/android/ui/preference/fragments/r;-><init>(Lcom/estrongs/android/ui/preference/fragments/p;Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/widget/f;->a(Lcom/estrongs/android/view/dx;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/p;->b:Lcom/estrongs/android/ui/preference/fragments/l;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/l;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/s;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/ui/preference/fragments/s;-><init>(Lcom/estrongs/android/ui/preference/fragments/p;Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/widget/f;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Lcom/estrongs/android/widget/f;->j()V

    return-void
.end method
