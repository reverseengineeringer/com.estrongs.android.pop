.class Lcom/estrongs/android/pop/app/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ESNetSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bp;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bp;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->b:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bp;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bp;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/ad;->l(Z)V

    return v2
.end method
