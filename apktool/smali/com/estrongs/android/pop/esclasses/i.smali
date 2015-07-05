.class public Lcom/estrongs/android/pop/esclasses/i;
.super Landroid/preference/PreferenceFragment;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    new-instance v0, Lcom/estrongs/android/pop/esclasses/j;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/esclasses/j;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/pop/esclasses/j;->a(ILandroid/preference/PreferenceGroup;)V

    return-void
.end method
