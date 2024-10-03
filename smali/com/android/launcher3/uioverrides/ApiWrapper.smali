.class public Lcom/android/launcher3/uioverrides/ApiWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getActivityOverrides(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0}, Landroid/content/pm/LauncherApps;->getActivityOverrides()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getPersons(Landroid/content/pm/ShortcutInfo;)[Landroid/app/Person;
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/launcher3/Utilities;->EMPTY_PERSON_ARRAY:[Landroid/app/Person;

    :cond_0
    return-object p0
.end method
