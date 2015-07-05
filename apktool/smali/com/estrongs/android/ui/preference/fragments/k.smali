.class Lcom/estrongs/android/ui/preference/fragments/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/k;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/k;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0a00a8

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a00a7

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/fragments/k;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->au()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a00ab

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0a00a6

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0b0334

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0a00aa

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0b0333

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v5, p0, Lcom/estrongs/android/ui/preference/fragments/k;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v5}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b0034

    invoke-virtual {v3, v5}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v3

    const v5, 0x7f0b000b

    new-instance v6, Lcom/estrongs/android/ui/preference/fragments/m;

    invoke-direct {v6, p0, v1, v2}, Lcom/estrongs/android/ui/preference/fragments/m;-><init>(Lcom/estrongs/android/ui/preference/fragments/k;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5, v6}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v2

    const v3, 0x7f0b000c

    new-instance v5, Lcom/estrongs/android/ui/preference/fragments/l;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/preference/fragments/l;-><init>(Lcom/estrongs/android/ui/preference/fragments/k;)V

    invoke-virtual {v2, v3, v5}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/preference/fragments/n;

    invoke-direct {v3, p0, v1}, Lcom/estrongs/android/ui/preference/fragments/n;-><init>(Lcom/estrongs/android/ui/preference/fragments/k;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/dialog/cg;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    const/4 v0, 0x1

    return v0
.end method
