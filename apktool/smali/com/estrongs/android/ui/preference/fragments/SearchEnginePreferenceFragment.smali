.class public Lcom/estrongs/android/ui/preference/fragments/SearchEnginePreferenceFragment;
.super Lcom/estrongs/android/pop/esclasses/m;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/m;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f080547

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/m;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/SearchEnginePreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "search_engine_default"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/SearchEnginePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/preference/CustomListPreference;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/SearchEnginePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v5}, Lcom/estrongs/android/ui/preference/fragments/SearchEnginePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    aget-object v4, v2, v1

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/preference/CustomListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p0, v5}, Lcom/estrongs/android/ui/preference/fragments/SearchEnginePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/CustomListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/bd;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/preference/fragments/bd;-><init>(Lcom/estrongs/android/ui/preference/fragments/SearchEnginePreferenceFragment;Lcom/estrongs/android/ui/preference/CustomListPreference;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/CustomListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "show_search_engine"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/SearchEnginePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/be;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/be;-><init>(Lcom/estrongs/android/ui/preference/fragments/SearchEnginePreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/CustomListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
