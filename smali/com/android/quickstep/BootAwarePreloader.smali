.class public final Lcom/android/quickstep/BootAwarePreloader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/BootAwarePreloader;

.field private static final TAG:Ljava/lang/String; = "BootAwarePreloader"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/BootAwarePreloader;

    invoke-direct {v0}, Lcom/android/quickstep/BootAwarePreloader;-><init>()V

    sput-object v0, Lcom/android/quickstep/BootAwarePreloader;->INSTANCE:Lcom/android/quickstep/BootAwarePreloader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/LauncherPrefs;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/BootAwarePreloader;->start$lambda$0(Lcom/android/launcher3/LauncherPrefs;)V

    return-void
.end method

.method public static final start(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/LockedUserState;->Companion:Lcom/android/launcher3/util/LockedUserState$Companion;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/LockedUserState$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/LockedUserState;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherPrefsKt;->isBootAwareStartupDataEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherPrefs;->isStartupDataMigrated()Z

    move-result v2

    const-string v3, "BootAwarePreloader"

    if-eqz v2, :cond_1

    const-string v0, "preloading start up data"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v2, "queuing start up data migration to boot aware prefs"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/LockedUserState$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object p0

    new-instance v1, Lcom/android/quickstep/w1;

    invoke-direct {v1, v0}, Lcom/android/quickstep/w1;-><init>(Lcom/android/launcher3/LauncherPrefs;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/LockedUserState;->runOnUserUnlocked(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final start$lambda$0(Lcom/android/launcher3/LauncherPrefs;)V
    .locals 1

    const-string v0, "$lp"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherPrefs;->migrateStartupDataToDeviceProtectedStorage()V

    return-void
.end method
