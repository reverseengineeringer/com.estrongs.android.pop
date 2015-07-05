.class Lcom/estrongs/android/pop/app/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ESNetSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->c:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030038

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->d:Landroid/view/View;

    const v2, 0x7f0a0117

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v1, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->d:Landroid/view/View;

    const v2, 0x7f0a0118

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v1, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ah()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ai()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000b

    new-instance v2, Lcom/estrongs/android/pop/app/bs;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/bs;-><init>(Lcom/estrongs/android/pop/app/bq;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000c

    new-instance v2, Lcom/estrongs/android/pop/app/br;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/br;-><init>(Lcom/estrongs/android/pop/app/bq;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b039c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/bt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/bt;-><init>(Lcom/estrongs/android/pop/app/bq;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return v4
.end method
