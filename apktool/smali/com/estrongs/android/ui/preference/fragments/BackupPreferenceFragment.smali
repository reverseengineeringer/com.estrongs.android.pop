.class public Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;
.super Lcom/estrongs/android/pop/esclasses/i;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/preference/Preference;

.field private b:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/i;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    const-string v0, "backupsettings"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->a:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->a:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/d;-><init>(Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "restoresettings"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->b:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->b:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/k;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/k;-><init>(Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "enableRemoteSynchronizer"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/r;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/r;-><init>(Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/i;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->a()V

    return-void
.end method
