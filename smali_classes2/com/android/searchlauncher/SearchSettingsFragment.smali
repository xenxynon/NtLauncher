.class public Lcom/android/searchlauncher/SearchSettingsFragment;
.super Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;
.source "SourceFile"


# instance fields
.field private g:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;-><init>()V

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/android/searchlauncher/SearchSettingsFragment;->g:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/searchlauncher/SearchSettingsFragment;->c(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected initPreference(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "pref_smartspace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pref_enable_minus_one"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->initPreference(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :cond_0
    iput-object p1, p0, Lcom/android/searchlauncher/SearchSettingsFragment;->g:Landroidx/preference/Preference;

    invoke-direct {p0}, Lcom/android/searchlauncher/SearchSettingsFragment;->d()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/searchlauncher/SearchSettingsFragment;->d()V

    return-void
.end method
