.class Lcom/estrongs/android/ui/preference/fragments/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/estrongs/android/ui/preference/fragments/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/k;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/n;->b:Lcom/estrongs/android/ui/preference/fragments/k;

    iput-object p2, p0, Lcom/estrongs/android/ui/preference/fragments/n;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/n;->b:Lcom/estrongs/android/ui/preference/fragments/k;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/k;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->p()Z

    move-result v0

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/o;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/preference/fragments/o;-><init>(Lcom/estrongs/android/ui/preference/fragments/n;Z)V

    new-instance v0, Lcom/estrongs/android/widget/g;

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/fragments/n;->b:Lcom/estrongs/android/ui/preference/fragments/k;

    iget-object v2, v2, Lcom/estrongs/android/ui/preference/fragments/k;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/estrongs/android/widget/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/n;->b:Lcom/estrongs/android/ui/preference/fragments/k;

    iget-object v1, v1, Lcom/estrongs/android/ui/preference/fragments/k;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/g;->a(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/p;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/preference/fragments/p;-><init>(Lcom/estrongs/android/ui/preference/fragments/n;Lcom/estrongs/android/widget/g;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/g;->a(Lcom/estrongs/android/view/cc;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/n;->b:Lcom/estrongs/android/ui/preference/fragments/k;

    iget-object v1, v1, Lcom/estrongs/android/ui/preference/fragments/k;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/preference/fragments/q;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/preference/fragments/q;-><init>(Lcom/estrongs/android/ui/preference/fragments/n;Lcom/estrongs/android/widget/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/g;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->j()V

    return-void
.end method
