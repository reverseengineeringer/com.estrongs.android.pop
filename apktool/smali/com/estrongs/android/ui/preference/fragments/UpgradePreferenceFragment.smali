.class public Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;
.super Lcom/estrongs/android/pop/esclasses/i;


# instance fields
.field private a:Landroid/preference/CheckBoxPreference;

.field private b:Landroid/preference/Preference;

.field private c:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/i;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "upgrade_check"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->b:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->b:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/bd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/bd;-><init>(Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    sget-boolean v0, Lcom/estrongs/android/pop/z;->y:Z

    if-eqz v0, :cond_0

    const-string v0, "update_preference"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const-string v1, "upgrade_auto_check"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->c:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->c:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v0, "send_statistics"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->a:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->a:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    const-string v0, "CN"

    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/estrongs/android/pop/z;->z:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->a:Landroid/preference/CheckBoxPreference;

    const-string v1, "\u7edf\u8ba1"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->a:Landroid/preference/CheckBoxPreference;

    const-string v1, "\u53d1\u9001\u7edf\u8ba1\u6570\u636e"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->a:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
