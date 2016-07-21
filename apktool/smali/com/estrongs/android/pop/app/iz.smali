.class Lcom/estrongs/android/pop/app/iz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/CustomListPreference;

.field final synthetic b:Lcom/estrongs/android/pop/app/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;Lcom/estrongs/android/ui/preference/CustomListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/iz;->b:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/iz;->a:Lcom/estrongs/android/ui/preference/CustomListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/iz;->a:Lcom/estrongs/android/ui/preference/CustomListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/CustomListPreference;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/iz;->a:Lcom/estrongs/android/ui/preference/CustomListPreference;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const-string v1, "search_engine_default"

    invoke-virtual {v0, v1, p2}, Lcom/estrongs/android/pop/FexApplication;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
