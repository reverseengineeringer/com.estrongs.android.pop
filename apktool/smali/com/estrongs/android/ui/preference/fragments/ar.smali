.class Lcom/estrongs/android/ui/preference/fragments/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/ar;->b:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    iput p2, p0, Lcom/estrongs/android/ui/preference/fragments/ar;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/ui/dialog/cg;

    const v1, 0x7f0a02be

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/ar;->b:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->G()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ar;->b:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0239

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/preference/fragments/ar;->a:I

    const/16 v1, 0x6d

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ar;->b:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->c(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/FexApplication;->c(Z)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ar;->b:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->c(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ar;->b:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->d(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ar;->b:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->e(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ar;->b:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->a(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/estrongs/android/ui/preference/fragments/ar;->a:I

    const/16 v1, 0x70

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ar;->b:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->d(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/FexApplication;->d(Z)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/estrongs/android/ui/preference/fragments/ar;->a:I

    const/16 v1, 0x72

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ar;->b:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->e(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/FexApplication;->e(Z)V

    goto :goto_1
.end method
