.class Lcom/estrongs/android/pop/app/hc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/hc;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/hc;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/hc;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
