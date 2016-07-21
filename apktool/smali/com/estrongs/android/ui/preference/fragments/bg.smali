.class Lcom/estrongs/android/ui/preference/fragments/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/bg;->a:Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/bg;->a:Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/bg;->a:Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
