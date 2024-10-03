.class public Lcom/android/quickstep/TouchInteractionService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/tracing/ProtoTraceable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/TouchInteractionService$TISBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Service;",
        "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
        "Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final HAS_ENABLED_QUICKSTEP_ONCE:Ljava/lang/String; = "launcher.has_enabled_quickstep_once"

.field private static final NEWLINE_PREFIX:Ljava/lang/String; = "\n\t\t\t-> "

.field private static final SUBSTRING_PREFIX:Ljava/lang/String; = "; "

.field private static final TAG:Ljava/lang/String; = "TouchInteractionService"

.field private static sConnected:Z = false

.field private static sIsInitialized:Z = false


# instance fields
.field private mAM:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private mConsumer:Lcom/android/quickstep/InputConsumer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field private final mFallbackSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

.field private mGestureState:Lcom/android/quickstep/GestureState;

.field private mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

.field private mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field private mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private final mLauncherSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

.field private mMainChoreographer:Landroid/view/Choreographer;

.field private mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

.field private mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

.field private mResetGestureInputConsumer:Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

.field private mSwipeUpProxyProvider:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/android/quickstep/GestureState;",
            "Lcom/android/launcher3/anim/AnimatedFloat;",
            ">;"
        }
    .end annotation
.end field

.field private final mTISBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field private mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

.field private mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

.field private mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;-><init>(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/TouchInteractionService$1;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mTISBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    new-instance v0, Lcom/android/quickstep/d8;

    invoke-direct {v0, p0}, Lcom/android/quickstep/d8;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mLauncherSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    new-instance v0, Lcom/android/quickstep/b8;

    invoke-direct {v0, p0}, Lcom/android/quickstep/b8;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mFallbackSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    sget-object v0, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    sget-object v0, Lcom/android/quickstep/GestureState;->DEFAULT_STATE:Lcom/android/quickstep/GestureState;

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    sget-object v0, Lcom/android/quickstep/l8;->a:Lcom/android/quickstep/l8;

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mSwipeUpProxyProvider:Ljava/util/function/Function;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->onNavigationModeChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/quickstep/TouchInteractionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->initInputMonitor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/quickstep/TouchInteractionService;->sIsInitialized:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/quickstep/TouchInteractionService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->preloadOverview(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/launcher3/taskbar/TaskbarManager;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/quickstep/TouchInteractionService;Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mSwipeUpProxyProvider:Ljava/util/function/Function;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/quickstep/TouchInteractionService;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/TouchInteractionService;->preloadOverview(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewComponentObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/quickstep/TouchInteractionService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->onSystemUiFlagsChanged(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->onAssistantVisibilityChanged()V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/GestureState;)Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->lambda$new$0(Lcom/android/quickstep/GestureState;)Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/quickstep/TouchInteractionService;Landroid/view/InputEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private createDeviceLockedInputConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;
    .locals 7

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    const-string v1, "; "

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p2

    const-string v0, "device is in gesture nav mode and running task != null"

    invoke-virtual {p2, v0}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p2

    const-string v0, ", using DeviceLockedInputConsumer"

    invoke-virtual {p2, v0}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    new-instance p2, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iget-object v6, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-object v1, p2

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    return-object p2

    :cond_0
    invoke-virtual {p2, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "running task == null"

    goto :goto_0

    :cond_1
    const-string p2, "device is not in gesture nav mode"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    const-string p2, ", trying to use default input consumer"

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0
.end method

.method private createFallbackSwipeHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .locals 10

    new-instance v9, Lcom/android/quickstep/FallbackSwipeHandler;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v3}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v7

    iget-object v8, p0, Lcom/android/quickstep/TouchInteractionService;->mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

    move-object v0, v9

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/quickstep/FallbackSwipeHandler;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V

    return-object v9
.end method

.method private createLauncherSwipeHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .locals 10

    new-instance v9, Lcom/android/quickstep/LauncherSwipeHandlerV2;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v3}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v7

    iget-object v8, p0, Lcom/android/quickstep/TouchInteractionService;->mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

    move-object v0, v9

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/quickstep/LauncherSwipeHandlerV2;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V

    return-object v9
.end method

.method private createOtherActivityInputConsumer(Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;
    .locals 11

    invoke-virtual {p0}, Lcom/android/quickstep/TouchInteractionService;->getSwipeUpHandlerFactory()Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    move-result-object v10

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0, v1, p2}, Lcom/android/quickstep/BaseActivityInterface;->deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v5, v0

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0, p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isInExclusionRegion(Landroid/view/MotionEvent;)Z

    move-result v9

    new-instance p2, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v3, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    new-instance v6, Lcom/android/quickstep/j8;

    invoke-direct {v6, p0}, Lcom/android/quickstep/j8;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    iget-object v7, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v8, p0, Lcom/android/quickstep/TouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    move-object v0, p2

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;ZLjava/util/function/Consumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/AbsSwipeUpHandler$Factory;)V

    return-object p2
.end method

.method public static synthetic d(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/TouchInteractionService;->createFallbackSwipeHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p0

    return-object p0
.end method

.method private disposeEventHandlers(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disposeEventHandlers: Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TouchInteractionService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/InputMonitorCompat;->dispose()V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/InputConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->onConsumerInactive(Lcom/android/quickstep/InputConsumer;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/TouchInteractionService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->onOverviewTargetChange(Z)V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/InputConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->onConsumerInactive(Lcom/android/quickstep/InputConsumer;)V

    return-void
.end method

.method private getDefaultInputConsumer()Lcom/android/quickstep/InputConsumer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->NO_OP:Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultInputConsumer(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;
    .locals 2
    .param p1    # Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mResetGestureInputConsumer:Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;

    const-string v1, "; "

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    const-string v0, "mResetGestureInputConsumer initialized, using ResetGestureInputConsumer"

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mResetGestureInputConsumer:Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;

    return-object p0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p0

    const-string p1, "mResetGestureInputConsumer not initialized, using no-op input consumer"

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    sget-object p0, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    return-object p0
.end method

.method public static synthetic h(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/TouchInteractionService;->createLauncherSwipeHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p0

    return-object p0
.end method

.method private handleOrientationSetup(Lcom/android/quickstep/InputConsumer;)V
    .locals 0

    invoke-interface {p1}, Lcom/android/quickstep/InputConsumer;->notifyOrientationSetup()V

    return-void
.end method

.method private initInputMonitor(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing input monitor due to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->disposeEventHandlers(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getDisplayId()I

    move-result v0

    const-string v1, "swipe-up"

    invoke-direct {p1, v1, v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mMainChoreographer:Landroid/view/Choreographer;

    new-instance v2, Lcom/android/quickstep/e8;

    invoke-direct {v2, p0}, Lcom/android/quickstep/e8;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/shared/system/InputMonitorCompat;->getInputReceiver(Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/RotationTouchHelper;->updateGestureTouchRegions()V

    return-void
.end method

.method public static isConnected()Z
    .locals 1

    sget-boolean v0, Lcom/android/quickstep/TouchInteractionService;->sConnected:Z

    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/android/quickstep/TouchInteractionService;->sIsInitialized:Z

    return v0
.end method

.method private static synthetic lambda$new$0(Lcom/android/quickstep/GestureState;)Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private logInputConsumerSelectionReason(Lcom/android/quickstep/InputConsumer;Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)V
    .locals 2

    sget-object p0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    const-string v1, "setInputConsumer: "

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/quickstep/InputConsumer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v0

    const-string v1, ". reason(s):"

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)V

    invoke-interface {p1}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->FLAG_USING_OTHER_ACTIVITY_INPUT_CONSUMER:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/ActiveGestureLog;->trackEvent(Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    :cond_0
    return-void
.end method

.method private newBaseConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;
    .locals 10

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isKeyguardShowingOccluded()Z

    move-result v0

    const-string v1, "; "

    if-eqz v0, :cond_0

    invoke-virtual {p4, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    const-string p3, "keyguard is showing occluded"

    invoke-virtual {p1, p3}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    const-string p3, ", trying to use device locked input consumer"

    invoke-virtual {p1, p3}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/quickstep/TouchInteractionService;->createDeviceLockedInputConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p4, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v0

    const-string v2, "keyguard is not showing occluded"

    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->isStarted()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isRootChooseActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isExcludedAssistant()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0, v3}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isHomeTask()Z

    move-result v0

    :cond_2
    move v8, v0

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isNeedToPreventMisTouch()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;

    iget-object p2, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    new-instance p3, Lcom/android/quickstep/i8;

    invoke-direct {p3, p0}, Lcom/android/quickstep/i8;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    invoke-direct {p1, p0, p2, p3}, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Ljava/util/function/Consumer;)V

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRunningAnimationToLauncher()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/BaseActivityInterface;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p4, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p4

    const-string v0, "is in live tile mode, trying to use overview input consumer"

    invoke-virtual {p4, v0}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/quickstep/TouchInteractionService;->createOverviewInputConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;ZLcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-virtual {p4, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    const-string p2, "running task == null"

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0

    :cond_6
    if-nez v0, :cond_9

    if-nez v2, :cond_9

    if-eqz v8, :cond_7

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isGestureBlockedTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p4, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    const-string p2, "is gesture-blocked task, trying to use default input consumer"

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p4, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    const-string p4, "using OtherActivityInputConsumer"

    invoke-virtual {p1, p4}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/TouchInteractionService;->createOtherActivityInputConsumer(Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_1
    invoke-virtual {p4, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p4

    if-eqz v0, :cond_a

    const-string v0, "previous gesture animated to launcher"

    goto :goto_2

    :cond_a
    if-eqz v2, :cond_b

    const-string v0, "launcher resumed through a shell transition"

    goto :goto_2

    :cond_b
    const-string v0, "forceOverviewInputConsumer == true"

    :goto_2
    invoke-virtual {p4, v0}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p4

    const-string v0, ", trying to use overview input consumer"

    invoke-virtual {p4, v0}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/quickstep/TouchInteractionService;->createOverviewInputConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;ZLcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0
.end method

.method private newCompoundString(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;
    .locals 1

    new-instance p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    const-string v0, "\n\t\t\t-> "

    invoke-direct {p0, v0}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p0

    return-object p0
.end method

.method private newConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;
    .locals 15

    move-object v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iget-object v2, v6, Lcom/android/quickstep/TouchInteractionService;->mSwipeUpProxyProvider:Ljava/util/function/Function;

    iget-object v3, v6, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-interface {v2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/launcher3/anim/AnimatedFloat;

    if-eqz v5, :cond_0

    new-instance v7, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;

    iget-object v2, v6, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iget-object v3, v6, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-object v4, v6, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/launcher3/anim/AnimatedFloat;)V

    const-string v0, "mSwipeUpProxyProvider has been set, using ProgressDelegateInputConsumer"

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService;->newCompoundString(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/android/quickstep/TouchInteractionService;->logInputConsumerSelectionReason(Lcom/android/quickstep/InputConsumer;Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)V

    return-object v7

    :cond_0
    iget-object v2, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canStartSystemGesture()Z

    move-result v2

    iget-object v3, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v3

    const-string v4, "can start system gesture"

    const-string v5, "; "

    if-nez v3, :cond_2

    const-string v1, "device locked"

    invoke-direct {p0, v1}, Lcom/android/quickstep/TouchInteractionService;->newCompoundString(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v5}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/quickstep/TouchInteractionService;->createDeviceLockedInputConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v0

    const-string v2, "cannot start system gesture"

    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/TouchInteractionService;->logInputConsumerSelectionReason(Lcom/android/quickstep/InputConsumer;Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)V

    return-object v0

    :cond_2
    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "cannot start system gesture and recents animation was not running"

    invoke-direct {p0, v3}, Lcom/android/quickstep/TouchInteractionService;->newCompoundString(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v3

    const-string v4, ", trying to use default input consumer"

    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object v4

    move-object v7, v4

    move-object/from16 v4, p1

    goto :goto_3

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const-string v4, "recents animation was running"

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/quickstep/TouchInteractionService;->newCompoundString(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v3

    const-string v4, ", trying to use base consumer"

    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/android/quickstep/TouchInteractionService;->newBaseConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object v7

    :goto_3
    iget-object v8, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v8}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isGesturalNavMode()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {p0, v7}, Lcom/android/quickstep/TouchInteractionService;->handleOrientationSetup(Lcom/android/quickstep/InputConsumer;)V

    :cond_6
    iget-object v8, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v8}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v8

    const-string v9, ", using OneHandedModeInputConsumer"

    const-string v10, "gesture can trigger one handed mode"

    const-string v11, "\n\t\t\t-> "

    if-eqz v8, :cond_f

    const-string v8, "device is in gesture navigation mode"

    iget-object v12, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v12, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerAssistantAction(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v3, v11}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v12

    const-string v13, "gesture can trigger the assistant"

    invoke-virtual {v12, v13}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v12

    const-string v13, ", trying to use assistant input consumer"

    invoke-virtual {v12, v13}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    invoke-direct {p0, v7, v0, v1, v3}, Lcom/android/quickstep/TouchInteractionService;->tryCreateAssistantInputConsumer(Lcom/android/quickstep/InputConsumer;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object v7

    :cond_7
    iget-object v12, v6, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {v12}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v12

    if-eqz v12, :cond_9

    instance-of v13, v7, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    if-nez v13, :cond_9

    invoke-virtual {v12}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v13

    iget-boolean v14, v13, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v14, :cond_8

    invoke-static {v13}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v12}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isInStashedLauncherState()Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v13, 0x1

    goto :goto_4

    :cond_8
    const/4 v13, 0x0

    :goto_4
    if-eqz v2, :cond_9

    if-eqz v13, :cond_9

    invoke-virtual {v3, v11}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v2

    const-string v13, "TaskbarActivityContext != null, using TaskbarUnstashInputConsumer"

    invoke-virtual {v2, v13}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    new-instance v2, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;

    iget-object v13, v6, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v2, p0, v7, v13, v12}, Lcom/android/quickstep/inputconsumers/TaskbarUnstashInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    move-object v7, v2

    :cond_9
    iget-object v2, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isBubblesExpanded()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0, v8}, Lcom/android/quickstep/TouchInteractionService;->newCompoundString(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v2

    const-string v3, "bubbles expanded, trying to use default input consumer"

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object v7

    :cond_a
    iget-object v2, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isSystemUiDialogShowing()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0, v8}, Lcom/android/quickstep/TouchInteractionService;->newCompoundString(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v2

    const-string v3, "system dialog is showing, using SysUiOverlayInputConsumer"

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v3

    new-instance v7, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v12, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v13, v6, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v7, v2, v12, v13}, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    :cond_b
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TRACKPAD_GESTURE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v6, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->isTrackpadGesture()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct {p0, v8}, Lcom/android/quickstep/TouchInteractionService;->newCompoundString(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v2

    const-string v3, "Trackpad 3-finger gesture, using StatusBarInputConsumer"

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v3

    new-instance v2, Lcom/android/quickstep/inputconsumers/StatusBarInputConsumer;

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v12, v6, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v2, v4, v7, v12}, Lcom/android/quickstep/inputconsumers/StatusBarInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    move-object v7, v2

    :cond_c
    iget-object v2, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0, v8}, Lcom/android/quickstep/TouchInteractionService;->newCompoundString(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v2

    const-string v3, "screen pinning is active, using ScreenPinnedInputConsumer"

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v3

    new-instance v7, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;

    invoke-direct {v7, p0, v0}, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/GestureState;)V

    :cond_d
    move-object v0, v7

    move-object v7, v3

    iget-object v2, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v7, v11}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    new-instance v1, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;

    iget-object v2, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v3, v6, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    move-object v4, v1

    goto :goto_5

    :cond_e
    move-object v4, v0

    :goto_5
    iget-object v0, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isAccessibilityMenuAvailable()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v7, v11}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v0

    const-string v1, "accessibility menu is available"

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v0

    const-string v1, ", using AccessibilityInputConsumer"

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    new-instance v8, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;

    iget-object v2, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v3, v6, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-object v5, v6, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/inputconsumers/AccessibilityInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    move-object v4, v8

    goto :goto_7

    :cond_f
    const-string v0, "device is not in gesture navigation mode"

    iget-object v2, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService;->newCompoundString(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v2

    const-string v3, "screen pinning is active, trying to use default input consumer"

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object v7

    :cond_10
    iget-object v2, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v3, v11}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    new-instance v4, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;

    iget-object v0, v6, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v1, v6, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v4, p0, v0, v7, v1}, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    goto :goto_6

    :cond_11
    move-object v4, v7

    :goto_6
    move-object v7, v3

    :cond_12
    :goto_7
    invoke-direct {p0, v4, v7}, Lcom/android/quickstep/TouchInteractionService;->logInputConsumerSelectionReason(Lcom/android/quickstep/InputConsumer;Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)V

    return-object v4
.end method

.method private onAssistantVisibilityChanged()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getAssistantVisibility()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/BaseActivityInterface;->onAssistantVisibilityChanged(F)V

    :cond_0
    return-void
.end method

.method private onCommand(Ljava/io/PrintWriter;Ljava/util/LinkedList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "Command missing"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->printAvailableCommands(Ljava/io/PrintWriter;)V

    return-void

    :cond_0
    const-string v0, "print-gesture-log"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "clear-touch-log"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->printAvailableCommands(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    invoke-virtual {p0}, Lcom/android/quickstep/util/ActiveGestureLog;->clear()V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string p2, ""

    invoke-virtual {p0, p2, p1}, Lcom/android/quickstep/util/ActiveGestureLog;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :goto_0
    return-void
.end method

.method private onConsumerInactive(Lcom/android/quickstep/InputConsumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getActiveConsumerInHierarchy()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->reset()V

    :cond_0
    return-void
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 10

    instance-of v0, p1, Landroid/view/MotionEvent;

    const-string v1, "TouchInteractionService"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    const-string v0, "TIS"

    const-string v2, "TouchInteractionService.onInputEvent"

    invoke-static {v0, v2, p1}, Lcom/android/launcher3/testing/TestLogging;->recordMotionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/TraceHelper;->beginFlagsOverride(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v4}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result v4

    and-int/lit16 v4, v4, 0x4000

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    const/4 v6, 0x0

    if-eqz v3, :cond_3

    if-ne v3, v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onInputEvent: start receive down action, value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v3, :cond_6

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    sget-object v7, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    if-eq v4, v7, :cond_c

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {v4, p1}, Lcom/android/quickstep/RotationTouchHelper;->setOrientationTransformIfNeeded(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_6
    :goto_1
    iget-object v7, p0, Lcom/android/quickstep/TouchInteractionService;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {v7, p1}, Lcom/android/quickstep/RotationTouchHelper;->setOrientationTransformIfNeeded(Landroid/view/MotionEvent;)V

    iget-object v7, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v7}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOneHandedModeActive()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/quickstep/TouchInteractionService;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    iget-object v8, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v8}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/android/quickstep/RotationTouchHelper;->isInSwipeUpTouchRegion(Landroid/view/MotionEvent;Lcom/android/quickstep/BaseActivityInterface;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    if-eqz v4, :cond_9

    :cond_8
    new-instance v4, Lcom/android/quickstep/GestureState;

    iget-object v7, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-direct {v4, v7}, Lcom/android/quickstep/GestureState;-><init>(Lcom/android/quickstep/GestureState;)V

    iget-object v7, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-static {p1}, Lcom/android/quickstep/GestureState$TrackpadGestureType;->getTrackpadGestureType(Landroid/view/MotionEvent;)Lcom/android/quickstep/GestureState$TrackpadGestureType;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/quickstep/TouchInteractionService;->createGestureState(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState$TrackpadGestureType;)Lcom/android/quickstep/GestureState;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/quickstep/GestureState;->setSwipeUpStartTimeMs(J)V

    iget-object v8, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v8}, Lcom/android/quickstep/InputConsumer;->onConsumerAboutToBeSwitched()V

    iput-object v7, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-direct {p0, v4, v7, p1}, Lcom/android/quickstep/TouchInteractionService;->newConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    :goto_2
    iput-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    goto :goto_3

    :cond_9
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v4}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v4}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v4, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerAssistantAction(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-static {p1}, Lcom/android/quickstep/GestureState$TrackpadGestureType;->getTrackpadGestureType(Landroid/view/MotionEvent;)Lcom/android/quickstep/GestureState$TrackpadGestureType;

    move-result-object v7

    invoke-virtual {p0, v4, v7}, Lcom/android/quickstep/TouchInteractionService;->createGestureState(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState$TrackpadGestureType;)Lcom/android/quickstep/GestureState;

    move-result-object v4

    iput-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-direct {p0, v4, p1}, Lcom/android/quickstep/TouchInteractionService;->tryCreateAssistantInputConsumer(Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;

    move-result-object v4

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v4, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;

    iget-object v7, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    sget-object v8, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    iget-object v9, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v4, p0, v7, v8, v9}, Lcom/android/quickstep/inputconsumers/OneHandedModeInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    goto :goto_2

    :cond_b
    sget-object v4, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    goto :goto_2

    :cond_c
    :goto_3
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    sget-object v7, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    if-eq v4, v7, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_e

    if-eq v4, v2, :cond_f

    const/4 v7, 0x2

    const-string v8, ","

    const-string v9, "onMotionEvent: "

    if-eq v4, v7, :cond_d

    sget-object v4, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    invoke-static {v9}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v8

    invoke-static {v8}, Landroid/view/MotionEvent;->classificationToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    sget-object v4, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    invoke-static {v9}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v8

    invoke-static {v8}, Landroid/view/MotionEvent;->classificationToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", pointerCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_MOVE:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    :goto_4
    invoke-virtual {v4, v7, v8}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    goto/16 :goto_5

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMotionEvent ACTION_DOWN setInputConsumer: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v7}, Lcom/android/quickstep/InputConsumer;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    sget-object v4, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMotionEvent("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    invoke-static {v9}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v8

    invoke-static {v8}, Landroid/view/MotionEvent;->classificationToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_10

    sget-object v8, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_DOWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    goto :goto_4

    :cond_10
    sget-object v8, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_UP:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    goto :goto_4

    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onInputEvent: inputConsumer is NO_OP, value is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_5
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/BaseActivityInterface;->shouldCancelCurrentGesture()Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v2

    goto :goto_6

    :cond_13
    move v4, v5

    :goto_6
    const/4 v7, 0x3

    if-eq v3, v2, :cond_14

    if-eq v3, v7, :cond_14

    if-eqz v4, :cond_15

    :cond_14
    iget-object v8, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v8, :cond_15

    invoke-interface {v8}, Lcom/android/quickstep/InputConsumer;->getActiveConsumerInHierarchy()Lcom/android/quickstep/InputConsumer;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/quickstep/InputConsumer;->isConsumerDetachedFromGesture()Z

    move-result v8

    if-nez v8, :cond_15

    move v5, v2

    :cond_15
    if-eqz v4, :cond_16

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_16
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->isTrackpadGesture()Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v4, 0x5

    if-eq v3, v4, :cond_17

    const/4 v7, 0x6

    if-ne v3, v7, :cond_18

    :cond_17
    if-ne v3, v4, :cond_1a

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-static {p1}, Lcom/android/quickstep/GestureState$TrackpadGestureType;->getTrackpadGestureType(Landroid/view/MotionEvent;)Lcom/android/quickstep/GestureState$TrackpadGestureType;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/android/quickstep/GestureState;->setTrackpadGestureType(Lcom/android/quickstep/GestureState$TrackpadGestureType;)V

    goto :goto_7

    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v4, p1}, Lcom/android/quickstep/InputConsumer;->onHoverEvent(Landroid/view/MotionEvent;)V

    goto :goto_7

    :cond_19
    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v4, p1}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_1a
    :goto_7
    if-eqz v5, :cond_1b

    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->reset()V

    :cond_1b
    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/TraceHelper;->endFlagsOverride(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {p1}, Lcom/android/quickstep/util/ProtoTracer;->scheduleFrameUpdate()V

    if-eqz v3, :cond_1c

    if-ne v3, v2, :cond_1d

    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInputEvent: run completed, event = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", inputConsumer = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method private onNavigationModeChanged()V
    .locals 1

    const-string v0, "onNavigationModeChanged()"

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService;->initInputMonitor(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->resetHomeBounceSeenOnQuickstepEnabledFirstTime()V

    return-void
.end method

.method private onOverviewTargetChange(Z)V
    .locals 7

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0xe

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v2}, Lcom/android/quickstep/OverviewComponentObserver;->getHomeIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, "launcher.intent_action_all_apps_toggle"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    new-instance v2, Landroid/app/RemoteAction;

    const v3, 0x7f08029e

    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    const v4, 0x7f120064

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/high16 v6, 0xc000000

    invoke-static {p0, v1, p1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v2, v3, v5, v4, p1}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->unregisterSystemAction(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->setActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    :cond_1
    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mTISBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-virtual {p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->onOverviewTargetChange()V

    return-void
.end method

.method private onSystemUiFlagsChanged(I)V
    .locals 6
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result v0

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/SystemUiProxy;->setLastSystemUiStateFlags(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSystemUiFlagsChanged: lastSysUIFlags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentSystemUiStateFlags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceState.isHomeDisabled() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isHomeDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TouchInteractionService"

    invoke-static {v2, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v1}, Lcom/android/quickstep/OverviewComponentObserver;->onSystemUiStateChanged()V

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->onSystemUiFlagsChanged(I)V

    const/high16 v1, 0x4000000

    and-int v3, p1, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    if-eq v3, v1, :cond_2

    sget-object v3, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    invoke-virtual {v3}, Lcom/android/quickstep/LauncherActivityInterface;->getDesktopVisibilityController()Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->setFreeformTasksVisible(Z)V

    :cond_2
    and-int/lit16 v1, p1, 0x804

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v5

    :goto_2
    and-int/lit16 v3, v0, 0x804

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v4, v5

    :goto_3
    if-eq v1, v4, :cond_5

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v1}, Lcom/android/quickstep/TaskAnimationManager;->endLiveTile()V

    :cond_5
    and-int/lit16 p1, p1, 0x1000

    and-int/lit16 v0, v0, 0x1000

    if-eq p1, v0, :cond_7

    if-eqz v0, :cond_6

    const-string p1, "Starting tracing."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {p0}, Lcom/android/quickstep/util/ProtoTracer;->start()V

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stopping tracing. Dumping to file="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {v1}, Lcom/android/quickstep/util/ProtoTracer;->getTraceFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {p0}, Lcom/android/quickstep/util/ProtoTracer;->stop()V

    :cond_7
    :goto_4
    return-void
.end method

.method private preloadOverview(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/TouchInteractionService;->preloadOverview(ZZ)V

    return-void
.end method

.method private preloadOverview(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v2}, Lcom/android/quickstep/OverviewComponentObserver;->getOverviewIntentIgnoreSysUiState()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "preloadOverview: forSUWAllSet="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isHomeAndOverviewSame="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {p2}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TouchInteractionService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/TaskAnimationManager;->preloadRecentsAnimation(Landroid/content/Intent;)V

    return-void
.end method

.method private printAvailableCommands(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "Available commands:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  clear-touch-log: Clears the touch interaction log"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  print-gesture-log: only prints the ActiveGestureLog dump"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private releaseRemoteTargetForWithoutFocusCase(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/statemanager/StatefulActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->cleanupRemoteTargets()V

    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isInApp()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    :cond_1
    const-string p0, "Recent"

    const-string p1, "Release remote targets for the without focus case."

    invoke-static {p0, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reset()V
    .locals 1

    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    sget-object v0, Lcom/android/quickstep/GestureState;->DEFAULT_STATE:Lcom/android/quickstep/GestureState;

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->setBatchingEnabled(Z)V

    :cond_0
    return-void
.end method

.method private resetHomeBounceSeenOnQuickstepEnabledFirstTime()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "launcher.has_enabled_quickstep_once"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "launcher.apps_view_shown"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method private tryCreateAssistantInputConsumer(Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;
    .locals 2

    sget-object v0, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    sget-object v1, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->NO_OP:Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/quickstep/TouchInteractionService;->tryCreateAssistantInputConsumer(Lcom/android/quickstep/InputConsumer;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0
.end method

.method private tryCreateAssistantInputConsumer(Lcom/android/quickstep/InputConsumer;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;
    .locals 8

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isGestureBlockedTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)Z

    move-result v0

    const-string v1, "; "

    if-eqz v0, :cond_0

    invoke-virtual {p4, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p0

    const-string p2, "is gesture-blocked task, using base input consumer"

    invoke-virtual {p0, p2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    return-object p1

    :cond_0
    invoke-virtual {p4, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p4

    const-string v0, "using AssistantInputConsumer"

    invoke-virtual {p4, v0}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    new-instance p4, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    iget-object v5, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v6, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/GestureState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)V

    return-object p4
.end method


# virtual methods
.method public createGestureState(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState$TrackpadGestureType;)Lcom/android/quickstep/GestureState;
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/quickstep/GestureState;

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    invoke-virtual {v2}, Lcom/android/quickstep/util/ActiveGestureLog;->getLogId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/GestureState;-><init>(Lcom/android/quickstep/OverviewComponentObserver;I)V

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/quickstep/GestureState;->updateLastStartedTaskId(I)V

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getPreviouslyAppearedTaskIds()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/quickstep/GestureState;->updatePreviouslyAppearedTaskIds(Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/quickstep/GestureState;

    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    sget-object v1, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    invoke-virtual {v1}, Lcom/android/quickstep/util/ActiveGestureLog;->incrementLogId()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/GestureState;-><init>(Lcom/android/quickstep/OverviewComponentObserver;I)V

    sget-object p1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/TopTaskTracker;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/quickstep/GestureState;->setTrackpadGestureType(Lcom/android/quickstep/GestureState$TrackpadGestureType;)V

    sget-object p1, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance p2, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    const-string v2, "Current running task package name="

    invoke-direct {p2, v2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_1

    const-string v1, "no running task"

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p2, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)V

    new-instance p2, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    const-string v1, "Current SystemUi state flags="

    invoke-direct {p2, v1}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)V

    return-object v0
.end method

.method public createOverviewInputConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;ZLcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;
    .locals 6

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    const-string p4, "; "

    if-nez v1, :cond_0

    invoke-virtual {p5, p4}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    const-string p2, "activity == null, trying to use default input consumer"

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->getDefaultInputConsumer(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRunningAnimationToLauncher()Z

    move-result p1

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result v2

    invoke-virtual {p5, p4}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v4, "activity has window focus"

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v4, "previous gesture is still animating to launcher"

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const-string v4, "device is in live mode"

    goto :goto_0

    :cond_3
    const-string v4, "all overview focus conditions failed"

    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    if-nez v0, :cond_5

    if-nez p1, :cond_5

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p5, p4}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    const-string p4, "overview shouldn\'t have focus, using OverviewWithoutFocusInputConsumer"

    invoke-virtual {p1, p4}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1, p3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isInExclusionRegion(Landroid/view/MotionEvent;)Z

    move-result v5

    invoke-direct {p0, v1}, Lcom/android/quickstep/TouchInteractionService;->releaseRemoteTargetForWithoutFocusCase(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    new-instance p1, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v4, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;Z)V

    return-object p1

    :cond_5
    :goto_1
    invoke-virtual {p5, p4}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    move-result-object p1

    const-string p3, "overview should have focus, using OverviewInputConsumer"

    invoke-virtual {p1, p3}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    new-instance p1, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    const/4 p3, 0x0

    invoke-direct {p1, p2, v1, p0, p3}, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;-><init>(Lcom/android/quickstep/GestureState;Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/systemui/shared/system/InputMonitorCompat;Z)V

    return-object p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    array-length p1, p3

    invoke-static {p2}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->dump(Ljava/io/PrintWriter;)V

    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1, p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->dump(Ljava/io/PrintWriter;)V

    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/quickstep/OverviewComponentObserver;->dump(Ljava/io/PrintWriter;)V

    :cond_1
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/android/quickstep/OverviewCommandHelper;->dump(Ljava/io/PrintWriter;)V

    :cond_2
    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/android/quickstep/GestureState;->dump(Ljava/io/PrintWriter;)V

    :cond_3
    const-string p1, "Input state:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mInputMonitorCompat="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/quickstep/TouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mInputEventReceiver="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/quickstep/TouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/DisplayController;->dump(Ljava/io/PrintWriter;)V

    const-string p1, "TouchState:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    :goto_0
    iget-object p3, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/quickstep/BaseActivityInterface;->isResumed()Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x1

    goto :goto_1

    :cond_5
    const/4 p3, 0x0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  createdOverviewActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  resumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mConsumer="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p3, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v0, ""

    invoke-virtual {p3, v0, p2}, Lcom/android/quickstep/util/ActiveGestureLog;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    sget-object p3, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p3, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p3, v0, p2}, Lcom/android/quickstep/RecentsModel;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string p3, "ProtoTrace:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  file="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {v1}, Lcom/android/quickstep/util/ProtoTracer;->getTraceFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p1

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/launcher3/DeviceProfile;->dump(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_6
    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/taskbar/TaskbarManager;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getOverviewCommandHelper()Lcom/android/quickstep/OverviewCommandHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    return-object p0
.end method

.method public getSwipeUpHandlerFactory()Lcom/android/quickstep/AbsSwipeUpHandler$Factory;
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mFallbackSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mLauncherSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    :goto_0
    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Touch service connected: user="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Service;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TouchInteractionService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mTISBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/android/quickstep/OverviewComponentObserver;->canHandleConfigChanges(Landroid/content/ComponentName;I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "navigation_bar_gesture_height"

    invoke-static {v0, p1}, Lcom/android/launcher3/testing/shared/ResourceUtils;->getNavbarSize(Ljava/lang/String;Landroid/content/res/Resources;)I

    move-result p1

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->onOneHandedModeChanged(I)V

    return-void

    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->preloadOverview(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mMainChoreographer:Landroid/view/Choreographer;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mAM:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    new-instance v0, Lcom/android/quickstep/RecentsAnimationDeviceState;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {p0}, Lcom/android/quickstep/BootAwarePreloader;->start(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    new-instance v2, Lcom/android/quickstep/g8;

    invoke-direct {v2, p0}, Lcom/android/quickstep/g8;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    invoke-virtual {v0, v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnUserUnlocked(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/quickstep/f8;

    invoke-direct {v3, v2}, Lcom/android/quickstep/f8;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    invoke-virtual {v0, v3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnUserUnlocked(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    new-instance v2, Lcom/android/quickstep/h8;

    invoke-direct {v2, p0}, Lcom/android/quickstep/h8;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    invoke-virtual {v0, v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->addNavigationModeChangedCallback(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/ProtoTracer;->add(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    sput-boolean v1, Lcom/android/quickstep/TouchInteractionService;->sConnected:Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Touch service destroyed: user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Service;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchInteractionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/quickstep/TouchInteractionService;->sIsInitialized:Z

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/InputConsumerController;->unregisterInputConsumer()V

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v1}, Lcom/android/quickstep/OverviewComponentObserver;->onDestroy()V

    :cond_0
    const-string v1, "TouchInteractionService onDestroy()"

    invoke-direct {p0, v1}, Lcom/android/quickstep/TouchInteractionService;->disposeEventHandlers(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->destroy()V

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1}, Lcom/android/quickstep/SystemUiProxy;->clearProxy()V

    sget-object v1, Lcom/android/quickstep/util/ProtoTracer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {v2}, Lcom/android/quickstep/util/ProtoTracer;->stop()V

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/ProtoTracer;

    invoke-virtual {v1, p0}, Lcom/android/quickstep/util/ProtoTracer;->remove(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->unregisterSystemAction(I)V

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroy()V

    sput-boolean v0, Lcom/android/quickstep/TouchInteractionService;->sConnected:Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    new-instance v0, Lcom/android/quickstep/TaskAnimationManager;

    invoke-direct {v0, p0}, Lcom/android/quickstep/TaskAnimationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    new-instance v0, Lcom/android/quickstep/OverviewComponentObserver;

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/OverviewComponentObserver;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    new-instance v1, Lcom/android/quickstep/OverviewCommandHelper;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/quickstep/OverviewCommandHelper;-><init>(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/OverviewComponentObserver;Lcom/android/quickstep/TaskAnimationManager;)V

    iput-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    new-instance v0, Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iget-object v2, p0, Lcom/android/quickstep/TouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/quickstep/c8;

    invoke-direct {v3, v2}, Lcom/android/quickstep/c8;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    invoke-direct {v0, v1, v3}, Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;-><init>(Lcom/android/quickstep/TaskAnimationManager;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mResetGestureInputConsumer:Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;

    invoke-static {}, Lcom/android/systemui/shared/system/InputConsumerController;->getRecentsAnimationInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputConsumerController;->registerInputConsumer()V

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService;->onSystemUiFlagsChanged(I)V

    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->onAssistantVisibilityChanged()V

    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService;->resetHomeBounceSeenOnQuickstepEnabledFirstTime()V

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    new-instance v1, Lcom/android/quickstep/k8;

    invoke-direct {v1, p0}, Lcom/android/quickstep/k8;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/OverviewComponentObserver;->setOverviewChangeListener(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService;->onOverviewTargetChange(Z)V

    return-void
.end method

.method public writeToProto(Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->newBuilder()Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->setServiceConnected(Z)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/quickstep/OverviewComponentObserver;->writeToProto(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)V

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-interface {p0, v0}, Lcom/android/quickstep/InputConsumer;->writeToProto(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->setTouchInteractionService(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    return-void
.end method

.method public bridge synthetic writeToProto(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->writeToProto(Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;)V

    return-void
.end method
