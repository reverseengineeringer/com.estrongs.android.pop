.class Lcom/estrongs/android/ui/preference/fragments/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/b;->a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/b;->a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/app/AppCheckUpdateList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/b;->a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
