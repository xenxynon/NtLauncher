.class public Lcom/android/launcher3/logging/StatsLogManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;,
        Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;,
        Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;,
        Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;,
        Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;,
        Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    }
.end annotation


# static fields
.field public static final LAUNCHER_STATE_ALLAPPS:I = 0x4

.field public static final LAUNCHER_STATE_BACKGROUND:I = 0x1

.field public static final LAUNCHER_STATE_HOME:I = 0x2

.field public static final LAUNCHER_STATE_OVERVIEW:I = 0x3

.field public static final LAUNCHER_STATE_UNCHANGED:I = 0x5

.field public static final LAUNCHER_STATE_UNSPECIFIED:I


# instance fields
.field protected mActivityContext:Lcom/android/launcher3/views/ActivityContext;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mInstanceId:Lcom/android/launcher3/logging/InstanceId;

.field private mKeyboardStateManager:Lcom/android/launcher3/logging/KeyboardStateManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logging/StatsLogManager;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    return-void
.end method

.method public static getLauncherAtomEvent(IILcom/android/launcher3/logging/StatsLogManager$EventEnum;)Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_0

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOME_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object p0

    :cond_0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_1

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    if-ne p1, v0, :cond_2

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_OPEN_UP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object p0

    :cond_2
    if-ne p0, v0, :cond_3

    if-eq p1, v0, :cond_3

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_CLOSE_DOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object p0

    :cond_3
    return-object p2
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;
    .locals 3

    const-class v0, Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120252

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/StatsLogManager;

    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContextNoThrow(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    iput-object p0, v0, Lcom/android/launcher3/logging/StatsLogManager;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    return-object v0
.end method


# virtual methods
.method protected createImpressionLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 1

    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$3;-><init>(Lcom/android/launcher3/logging/StatsLogManager;)V

    return-object v0
.end method

.method protected createLatencyLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 1

    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$2;-><init>(Lcom/android/launcher3/logging/StatsLogManager;)V

    return-object v0
.end method

.method protected createLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 1

    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$1;-><init>(Lcom/android/launcher3/logging/StatsLogManager;)V

    return-object v0
.end method

.method public impressionLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->createImpressionLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/logging/StatsLogManager;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;

    :cond_0
    return-object v0
.end method

.method public keyboardStateManager()Lcom/android/launcher3/logging/KeyboardStateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/logging/StatsLogManager;->mKeyboardStateManager:Lcom/android/launcher3/logging/KeyboardStateManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/logging/KeyboardStateManager;

    invoke-direct {v0}, Lcom/android/launcher3/logging/KeyboardStateManager;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/logging/StatsLogManager;->mKeyboardStateManager:Lcom/android/launcher3/logging/KeyboardStateManager;

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/logging/StatsLogManager;->mKeyboardStateManager:Lcom/android/launcher3/logging/KeyboardStateManager;

    return-object p0
.end method

.method public latencyLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->createLatencyLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/logging/StatsLogManager;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    :cond_0
    return-object v0
.end method

.method public logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->createLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/logging/StatsLogManager;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    :cond_0
    return-object v0
.end method

.method public withDefaultInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager;
    .locals 0
    .param p1    # Lcom/android/launcher3/logging/InstanceId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher3/logging/StatsLogManager;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    return-object p0
.end method
