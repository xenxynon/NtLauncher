.class public final Lt4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lt4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Lt4/c;)Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gridName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sput-object p2, Lt4/f;->a:Lt4/c;

    new-instance p2, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object v0, Lt4/f;->a:Lt4/c;

    return-object p2

    :catchall_0
    move-exception p0

    sput-object v0, Lt4/f;->a:Lt4/c;

    throw p0
.end method

.method public static final b()Z
    .locals 3

    sget-object v0, Lt4/f;->a:Lt4/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt4/c;->d()Z

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    sget-object v1, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v1}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "pref_display_searchbar"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static final c()Z
    .locals 3

    sget-object v0, Lt4/f;->a:Lt4/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt4/c;->c()Z

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    sget-object v1, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v1}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "pref_display_workspace_label"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static final d(Z)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    sget-object v1, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v1}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_display_searchbar"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static final e(Z)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    sget-object v1, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v1}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_display_workspace_label"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
