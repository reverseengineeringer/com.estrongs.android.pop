.class public Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;
.super Lcom/estrongs/android/pop/esclasses/m;


# instance fields
.field private a:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/m;-><init>()V

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

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/m;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "default_window"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;->a:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;->a:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/bg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/bg;-><init>(Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
