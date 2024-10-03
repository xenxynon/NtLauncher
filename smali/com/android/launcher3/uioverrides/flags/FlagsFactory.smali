.class public Lcom/android/launcher3/uioverrides/flags/FlagsFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/android/launcher3/uioverrides/flags/FlagsFactory;

.field static final TEAMFOOD_FLAG:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field private static final sDebugFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/uioverrides/flags/DebugFlag;",
            ">;"
        }
    .end annotation
.end field

.field private static sSharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private final mKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->INSTANCE:Lcom/android/launcher3/uioverrides/flags/FlagsFactory;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->sDebugFlags:Ljava/util/List;

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags$FlagState;->DISABLED:Lcom/android/launcher3/config/FeatureFlags$FlagState;

    const/4 v1, 0x0

    const-string v2, "LAUNCHER_TEAMFOOD"

    const-string v3, "Enable this flag to opt-in all team food flags"

    invoke-static {v1, v2, v0, v3}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getReleaseFlag(ILjava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;Ljava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->TEAMFOOD_FLAG:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mKeySet:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mRestartRequested:Z

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lz/n;

    invoke-direct {v1, p0}, Lz/n;-><init>(Lcom/android/launcher3/uioverrides/flags/FlagsFactory;)V

    const-string p0, "launcher"

    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/uioverrides/flags/FlagsFactory;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/uioverrides/flags/FlagsFactory;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->onScreenOnChanged(Z)V

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public static getDebugFlag(ILjava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;Ljava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;
    .locals 0

    new-instance p0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-static {p2}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getEnabledValue(Lcom/android/launcher3/config/FeatureFlags$FlagState;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;-><init>(Z)V

    return-object p0
.end method

.method static getDebugFlags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/uioverrides/flags/DebugFlag;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getEnabledValue(Lcom/android/launcher3/config/FeatureFlags$FlagState;)Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags$FlagState;->ENABLED:Lcom/android/launcher3/config/FeatureFlags$FlagState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getReleaseFlag(ILjava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;Ljava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;
    .locals 0

    sget-object p0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->INSTANCE:Lcom/android/launcher3/uioverrides/flags/FlagsFactory;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mKeySet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getEnabledValue(Lcom/android/launcher3/config/FeatureFlags$FlagState;)Z

    move-result p0

    const-string p2, "launcher"

    invoke-static {p2, p1, p0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    new-instance p1, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-direct {p1, p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;-><init>(Z)V

    return-object p1
.end method

.method static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->sSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "featureFlags"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->sSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->sSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mKeySet:Ljava/util/Set;

    invoke-static {p1, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mRestartRequested:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "FlagsFactory"

    const-string v0, "Flag changed, scheduling restart"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mRestartRequested:Z

    sget-object p1, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/ScreenOnTracker;

    invoke-virtual {p1}, Lcom/android/launcher3/util/ScreenOnTracker;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lz/o;

    invoke-direct {v0, p0}, Lz/o;-><init>(Lcom/android/launcher3/uioverrides/flags/FlagsFactory;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/ScreenOnTracker;->addListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->onScreenOnChanged(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onScreenOnChanged(Z)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mRestartRequested:Z

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const-string p0, "FlagsFactory"

    const-string p1, "Restart requested, killing process"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method
