.class public Lcom/estrongs/android/ui/preference/fragments/RecyclePreferenceFragment;
.super Lcom/estrongs/android/pop/esclasses/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/i;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "enable_recycle"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/RecyclePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/RecyclePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->aD()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/ba;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/ba;-><init>(Lcom/estrongs/android/ui/preference/fragments/RecyclePreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/i;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/RecyclePreferenceFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/fragments/RecyclePreferenceFragment;->a()V

    return-void
.end method
