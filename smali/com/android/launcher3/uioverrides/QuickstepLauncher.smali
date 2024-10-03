.class public Lcom/android/launcher3/uioverrides/QuickstepLauncher;
.super Lq2/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;
    }
.end annotation


# static fields
.field public static final ENABLE_PIP_KEEP_CLEAR_ALGORITHM:Z


# instance fields
.field private mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

.field private mAllAppsPredictions:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

.field private mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mClearTaskRunnable:Ljava/lang/Runnable;

.field private mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

.field private mDesktopVisibilityController:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

.field private mEnableWidgetDepth:Z

.field private mHotseatPredictionController:Lm3/a;

.field private mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mNextWorkspaceDragOptions:Lcom/android/launcher3/dragndrop/DragOptions;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPendingSplitSelectInfo:Lcom/android/launcher3/util/PendingSplitSelectInfo;

.field private mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

.field private mSplitToWorkspaceController:Lcom/android/quickstep/util/SplitToWorkspaceController;

.field private mSplitWithKeyboardShortcutController:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

.field private mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

.field private mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mUnfoldTransitionProgressProvider:Lm0/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mViewCapture:Landroid/media/permission/SafeCloseable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.wm.debug.enable_pip_keep_clear_algorithm"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->ENABLE_PIP_KEEP_CLEAR_ALGORITHM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lq2/m;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mNextWorkspaceDragOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mPendingSplitSelectInfo:Lcom/android/launcher3/util/PendingSplitSelectInfo;

    new-instance v0, Lcom/android/launcher3/uioverrides/q;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/q;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mClearTaskRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher$1;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public static synthetic T(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->lambda$startSplitSelection$5(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public static synthetic U(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->lambda$onScreenOnChanged$7(Lcom/android/quickstep/views/RecentsView;)V

    return-void
.end method

.method public static synthetic V(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->lambda$onInitialBindComplete$11()V

    return-void
.end method

.method public static synthetic W(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->lambda$launchSplitTasks$14(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic X(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->lambda$new$0()V

    return-void
.end method

.method public static synthetic Y(Lcom/android/launcher3/uioverrides/QuickstepLauncher;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->lambda$createAppWidgetHolder$4(I)V

    return-void
.end method

.method public static synthetic Z(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method

.method public static synthetic a0(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->lambda$startActivitySafely$2()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mClearTaskRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)Landroid/view/View$OnAttachStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    return-object p0
.end method

.method static synthetic access$201(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)Landroid/view/View$OnClickListener;
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)Lcom/android/quickstep/util/SplitSelectStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)Landroid/window/OnBackAnimationCallback;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOnBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)Landroid/window/OnBackAnimationCallback;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOnBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->lambda$onUiChangedWhileSleeping$6()V

    return-void
.end method

.method public static synthetic c0(Lcom/android/launcher3/uioverrides/QuickstepLauncher;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->lambda$setupViews$1(F)V

    return-void
.end method

.method public static synthetic d0(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/quickstep/util/GroupTask;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->lambda$launchSplitTasks$13(Lcom/android/quickstep/util/GroupTask;Landroid/view/View;)V

    return-void
.end method

.method private deferredStartActivity()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/uioverrides/t;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/t;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-static {v0}, Ly2/c;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic e0(Lcom/android/launcher3/util/RunnableList;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->lambda$makeDefaultActivityOptions$12(Lcom/android/launcher3/util/RunnableList;J)V

    return-void
.end method

.method public static synthetic f0()Ljava/lang/IllegalStateException;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->lambda$initLocallyCalculatedUnfoldAnimation$9()Ljava/lang/IllegalStateException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g0(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->lambda$deferredStartActivity$8()V

    return-void
.end method

.method public static synthetic h0()Ljava/lang/IllegalStateException;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->lambda$initRemotelyCalculatedUnfoldAnimation$10()Ljava/lang/IllegalStateException;

    move-result-object v0

    return-object v0
.end method

.method private handlePendingActivityRequest()V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getActivityFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->deferredStartActivity()V

    :cond_0
    return-void
.end method

.method public static synthetic i0(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->lambda$onStateSetEnd$3(Ljava/lang/Boolean;)V

    return-void
.end method

.method private initLocallyCalculatedUnfoldAnimation(Ln0/b;)V
    .locals 11

    sget-object v2, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->INSTANCE:Lcom/android/quickstep/util/ProxyScreenStatusProvider;

    new-instance v3, Lp0/b;

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-direct {v3, v0, p0}, Lp0/b;-><init>(Landroid/hardware/devicestate/DeviceStateManager;Landroid/content/Context;)V

    new-instance v4, Lp0/a;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-direct {v4, v0}, Lp0/a;-><init>(Landroid/app/ActivityManager;)V

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/hardware/display/DisplayManager;

    const-string v9, "launcher"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v10}, Lm0/n;->b(Landroid/content/Context;Ln0/b;Ls0/a;Lq0/b;Lt0/c;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/display/DisplayManager;)Lm0/g;

    move-result-object p1

    invoke-interface {p1}, Lm0/g;->b()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/uioverrides/l;->a:Lcom/android/launcher3/uioverrides/l;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/o;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mUnfoldTransitionProgressProvider:Lm0/o;

    invoke-interface {p1}, Lm0/g;->a()Lq0/e;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->initUnfoldAnimationController(Lm0/o;Lq0/e;)V

    return-void
.end method

.method private initRemotelyCalculatedUnfoldAnimation(Ln0/b;)V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/hardware/display/DisplayManager;

    const-string v5, "launcher"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lm0/n;->a(Landroid/content/Context;Ln0/b;Ljava/util/concurrent/Executor;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/display/DisplayManager;)Lm0/c;

    move-result-object p1

    invoke-interface {p1}, Lm0/c;->b()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/uioverrides/m;->a:Lcom/android/launcher3/uioverrides/m;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mUnfoldTransitionProgressProvider:Lm0/o;

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/SystemUiProxy;->setUnfoldAnimationListener(Lo0/c;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mUnfoldTransitionProgressProvider:Lm0/o;

    invoke-interface {p1}, Lm0/c;->a()Lq0/e;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->initUnfoldAnimationController(Lm0/o;Lq0/e;)V

    return-void
.end method

.method private initUnfoldAnimationController(Lm0/o;Lq0/e;)V
    .locals 2

    new-instance v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/WindowManager;Lm0/o;Lq0/e;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    return-void
.end method

.method private initUnfoldTransitionProgressProvider()V
    .locals 2

    new-instance v0, Ln0/a;

    invoke-direct {v0}, Ln0/a;-><init>()V

    invoke-interface {v0}, Ln0/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->RECEIVE_UNFOLD_EVENTS_FROM_SYSUI:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->initRemotelyCalculatedUnfoldAnimation(Ln0/b;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->initLocallyCalculatedUnfoldAnimation(Ln0/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createAppWidgetHolder$4(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeWidget(I)V

    return-void
.end method

.method private synthetic lambda$deferredStartActivity$8()V
    .locals 12

    const/16 v0, 0x100

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x64

    const-wide/16 v3, 0x3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :cond_1
    cmp-long v8, v5, v3

    const-string v9, "NTLauncher"

    if-gez v8, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    const-wide/16 v10, 0x1

    add-long/2addr v5, v10

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deferredStartActivity: looking for floating view, triedTimes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    move v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deferredStartActivity: occurs e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-nez v7, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mClearTaskRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const-string p0, "deferredStartActivity: timeout, forced trigger"

    invoke-static {v9, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static synthetic lambda$initLocallyCalculatedUnfoldAnimation$9()Ljava/lang/IllegalStateException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to create UnfoldTransitionProgressProvider when the transition is disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$initRemotelyCalculatedUnfoldAnimation$10()Ljava/lang/IllegalStateException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to create getRemoteTransitionProgress when the transition is disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic lambda$launchSplitTasks$13(Lcom/android/quickstep/util/GroupTask;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)Z

    return-void
.end method

.method private static synthetic lambda$launchSplitTasks$14(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$makeDefaultActivityOptions$12(Lcom/android/launcher3/util/RunnableList;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/proxy/StartActivityParams;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onInitialBindComplete$11()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->updateRegisteredViewsIfNeeded()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onScreenOnChanged$7(Lcom/android/quickstep/views/RecentsView;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onStateSetEnd$3(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onUiChangedWhileSleeping$6()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->invalidateHomeTaskSnapshot(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$setupViews$1(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onTaskbarInAppDisplayProgressUpdate(FI)V

    return-void
.end method

.method private synthetic lambda$startActivitySafely$2()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lm3/a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm3/a;->h(Z)V

    return-void
.end method

.method private synthetic lambda$startSplitSelection$5(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    if-nez p3, :cond_0

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p3, p3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    :goto_0
    iput p3, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->alreadyRunningTaskId:I

    sget-object p3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->startSplitToHome(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/quickstep/views/RecentsView;->initiateSplitSelect(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V

    :goto_1
    return-void
.end method

.method private onStateOrResumeChanging(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getActivityFlags()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getActivityFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v5, :cond_4

    :cond_2
    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isUserActive()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    sget-boolean v4, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->ENABLE_PIP_KEEP_CLEAR_ALGORITHM:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/SystemUiProxy;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {v4, v2, v1}, Lcom/android/quickstep/SystemUiProxy;->setLauncherKeepClearAreaHeight(ZI)V

    goto :goto_3

    :cond_5
    sget-object v4, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/SystemUiProxy;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {v4, v2, v1}, Lcom/android/quickstep/SystemUiProxy;->setShelfHeight(ZI)V

    :cond_6
    :goto_3
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_7

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->setSwipeDownShouldLaunchApp(Z)V

    :cond_7
    return-void
.end method

.method private onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->setActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getOverviewCommandHelper()Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    return-void
.end method

.method private onTaskbarInAppDisplayProgressUpdate(FI)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onTaskbarInAppDisplayProgressUpdate(FI)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startSplitToHome(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object v12, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->intent:Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    iget v13, v2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->stagePosition:I

    iget-object v14, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v15, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    iget v2, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->alreadyRunningTaskId:I

    move/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Lcom/android/quickstep/util/SplitSelectStateController;->setInitialTaskSelect(Landroid/content/Intent;ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v7

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v2}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v8

    move-object v9, v10

    invoke-interface/range {v4 .. v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getInitialSplitPlaceholderBounds(IILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;)V

    new-instance v2, Lcom/android/launcher3/anim/PendingAnimation;

    sget-object v3, Lcom/android/quickstep/util/SplitAnimationTimings;->TABLET_HOME_TO_SPLIT:Lcom/android/quickstep/util/SplitAnimationTimings;

    invoke-interface {v3}, Lcom/android/quickstep/util/SplitAnimationTimings;->getDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v9}, Lcom/android/quickstep/views/FloatingTaskView;->getFloatingTaskView(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)Lcom/android/quickstep/views/FloatingTaskView;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v1

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Lcom/android/quickstep/views/FloatingTaskView;->addStagingAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v3, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->setFirstFloatingTaskView(Lcom/android/quickstep/views/FloatingTaskView;)V

    new-instance v3, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/quickstep/views/FloatingTaskView;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public addLaunchCookie(Lcom/android/launcher3/model/data/ItemInfo;Landroid/app/ActivityOptions;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getLaunchCookie(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public areFreeformTasksVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDesktopVisibilityController:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->areFreeformTasksVisible()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 2

    iget v0, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    const/16 v1, -0x66

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAllAppsPredictions:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object p0

    const-class v0, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/appprediction/PredictionRowView;

    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appprediction/PredictionRowView;->setPredictedApps(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/16 v1, -0x67

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lm3/a;

    invoke-virtual {p0, p1}, Lm3/a;->i(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    goto :goto_0

    :cond_1
    const/16 v1, -0x6f

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->setRecommendedWidgets(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lm3/a;

    invoke-virtual {p0, p1}, Lm3/a;->f(Ljava/util/function/Predicate;)V

    return-void
.end method

.method protected buildAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;
    .locals 1

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/QuickstepTransitionManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected closeOpenViews(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->closeOpenViews(Z)V

    const-string p0, "homekey"

    invoke-static {p0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    return-void
.end method

.method protected collectStateHandlers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/statemanager/StateManager$StateHandler;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->collectStateHandlers(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected completeAddShortcut(Landroid/content/Intent;IIIILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 1

    const/16 v0, -0x65

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lm3/a;

    invoke-virtual {v0, p4, p5}, Lm3/a;->e(II)V

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/launcher3/Launcher;->completeAddShortcut(Landroid/content/Intent;IIIILcom/android/launcher3/util/PendingRequestArgs;)V

    return-void
.end method

.method protected createAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 1

    new-instance v0, Lcom/android/launcher3/QuickstepAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/QuickstepAccessibilityDelegate;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-object v0
.end method

.method protected createAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .locals 3

    invoke-static {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;->newFactory(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepHolderFactory;

    new-instance v1, Lcom/android/launcher3/uioverrides/k;

    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/k;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    new-instance v2, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepHolderFactory;->newInstance(Landroid/content/Context;Ljava/util/function/IntConsumer;Landroid/widget/RemoteViews$InteractionHandler;)Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object p0

    return-object p0
.end method

.method public createAtomicAnimationFactory()Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;
    .locals 1

    new-instance v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-object v0
.end method

.method public createCardWidgetHost()Lcom/nothing/launcher/card/p;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lq2/m;->createCardWidgetHost()Lcom/nothing/launcher/card/p;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/card/LauncherCardInteractionHandler;

    invoke-direct {v1, p0}, Lcom/android/quickstep/card/LauncherCardInteractionHandler;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {v0, v1}, Lcom/nothing/cardhost/d;->B(Lw1/a;)V

    return-object v0
.end method

.method protected bridge synthetic createOnboardingPrefs(Landroid/content/SharedPreferences;)Lcom/android/launcher3/util/OnboardingPrefs;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->createOnboardingPrefs(Landroid/content/SharedPreferences;)Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    move-result-object p0

    return-object p0
.end method

.method protected createOnboardingPrefs(Landroid/content/SharedPreferences;)Lcom/android/quickstep/util/QuickstepOnboardingPrefs;
    .locals 1

    new-instance v0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public createTouchControllers()[Lcom/android/launcher3/util/TouchController;
    .locals 3

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/launcher3/uioverrides/QuickstepLauncher$5;->$SwitchMap$com$android$launcher3$util$NavigationMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TransposedQuickSwitchTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TransposedQuickSwitchTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/launcher3/util/TouchController;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/launcher3/util/TouchController;

    return-object p0
.end method

.method public dispatchDeviceProfileChanged()V
    .locals 4

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->dispatchDeviceProfileChanged()V

    invoke-virtual {p0}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->toSmallString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1000

    const-string v3, "QuickstepLauncher#DeviceProfileChanged"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->setLauncherAppIconSize(I)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    if-eqz p0, :cond_0

    const-string v0, "QuickstepLauncher#onDeviceProfileChanged"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/android/launcher3/statehandlers/DepthController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    const-string p2, "\nQuickstepLauncher:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\tmOrientationState: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    const-string p4, "recentsNull"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p4

    :goto_0
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectController()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/quickstep/util/SplitSelectStateController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_2
    return-void
.end method

.method public enterStageSplitFromRunningApp(Z)V
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitWithKeyboardShortcutController:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->enterStageSplit(Z)V

    return-void
.end method

.method public finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    sget-object p1, Lcom/android/launcher3/model/WellbeingModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    return-void
.end method

.method public finishSplitSelectRecovery()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mPendingSplitSelectInfo:Lcom/android/launcher3/util/PendingSplitSelectInfo;

    return-void
.end method

.method public getActionsView()Lcom/android/quickstep/views/OverviewActionsView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/quickstep/views/OverviewActionsView;",
            ">()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    return-object p0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 5
    .param p2    # Lcom/android/launcher3/model/data/ItemInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    :goto_0
    iget-wide v1, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-lez v3, :cond_1

    iget-object v3, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v3, v4, v1, v2}, Landroid/app/ActivityOptions;->setSourceInfo(IJ)V

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->animationType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_3

    :cond_2
    iget-object v2, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v1}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    :goto_1
    iget-object v2, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    :cond_4
    invoke-virtual {v2, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget-object p1, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->addLaunchCookie(Lcom/android/launcher3/model/data/ItemInfo;Landroid/app/ActivityOptions;)V

    iget-object p0, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v4}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    return-object v0
.end method

.method public getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    return-object p0
.end method

.method public getDefaultWorkspaceDragOptions()Lcom/android/launcher3/dragndrop/DragOptions;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mNextWorkspaceDragOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mNextWorkspaceDragOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->getDefaultWorkspaceDragOptions()Lcom/android/launcher3/dragndrop/DragOptions;

    move-result-object p0

    return-object p0
.end method

.method public getDepthController()Lcom/android/launcher3/statehandlers/DepthController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    return-object p0
.end method

.method public getDesktopVisibilityController()Lcom/android/launcher3/statehandlers/DesktopVisibilityController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDesktopVisibilityController:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    return-object p0
.end method

.method public getHotseatPredictionController()Lm3/a;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lm3/a;

    return-object p0
.end method

.method public getItemOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/launcher3/uioverrides/o;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/o;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-object v0
.end method

.method public getLaunchCookie(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/os/IBinder;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v0, -0x65

    const/high16 v1, -0x80000000

    if-eq p0, v0, :cond_2

    const/16 v0, -0x64

    if-eq p0, v0, :cond_2

    if-ltz p0, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lcom/android/launcher3/util/ObjectWrapper;->wrap(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_2
    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/16 v0, 0x64

    if-eq p0, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/Integer;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1
.end method

.method public getNormalOverviewScaleAndOffset()[F
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/util/NavigationMode;->hasGestures:Z

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    new-array p0, v0, [F

    fill-array-data p0, :array_0

    goto :goto_0

    :cond_0
    new-array p0, v0, [F

    fill-array-data p0, :array_1

    :goto_0
    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x0
    .end array-data
.end method

.method public getPendingSplitSelectInfo()Lcom/android/launcher3/util/PendingSplitSelectInfo;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mPendingSplitSelectInfo:Lcom/android/launcher3/util/PendingSplitSelectInfo;

    return-object p0
.end method

.method public getSplitToWorkspaceController()Lcom/android/quickstep/util/SplitToWorkspaceController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitToWorkspaceController:Lcom/android/quickstep/util/SplitToWorkspaceController;

    return-object p0
.end method

.method public getSupportedShortcuts()Ljava/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->getSupportedShortcuts()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    return-object p0
.end method

.method public getUnfoldTransitionProgressProvider()Lm0/o;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mUnfoldTransitionProgressProvider:Lm0/o;

    return-object p0
.end method

.method protected handleGestureContract(Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->handleGestureContract(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public hasPendingSplitSelectInfo()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mPendingSplitSelectInfo:Lcom/android/launcher3/util/PendingSplitSelectInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchSplitTasks(Landroid/view/View;Lcom/android/quickstep/util/GroupTask;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/quickstep/util/GroupTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p2, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/uioverrides/u;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher3/uioverrides/u;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/quickstep/util/GroupTask;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    const/4 v3, 0x0

    iget-object p0, p2, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object p0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v6, 0x0

    sget-object v7, Lcom/android/launcher3/uioverrides/j;->g:Lcom/android/launcher3/uioverrides/j;

    const/4 v8, 0x1

    iget-object p0, p2, Lcom/android/quickstep/util/GroupTask;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-nez p0, :cond_1

    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    move v9, p0

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->appsStackedVertically:Z

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->topTaskPercent:F

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTaskPercent:F

    goto :goto_0

    :goto_1
    invoke-virtual/range {v2 .. v9}, Lcom/android/quickstep/util/SplitSelectStateController;->launchExistingSplitPair(Lcom/android/quickstep/views/GroupedTaskView;IIILjava/util/function/Consumer;ZF)V

    return-void
.end method

.method public logAppLaunch(Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAllAppsPredictions:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    if-eqz v0, :cond_3

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    :cond_1
    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAllAppsPredictions:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withRank(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lm3/a;

    invoke-virtual {p0, p2, p3}, Lm3/a;->d(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    return-void
.end method

.method public makeDefaultActivityOptions(I)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 9

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v8, Lcom/android/launcher3/uioverrides/g;

    invoke-direct {v8, v0}, Lcom/android/launcher3/uioverrides/g;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    new-instance p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    return-object p1
.end method

.method protected onActivityFlagsChanged(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statehandlers/DepthController;->setActivityStarted(Z)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(Z)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onActivityFlagsChanged(I)V

    and-int/lit8 p1, p1, 0x55

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getActivityFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onStateOrResumeChanging(Z)V

    :cond_3
    return-void
.end method

.method public onAllAppsTransition(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onAllAppsTransition(F)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onTaskbarInAppDisplayProgressUpdate(FI)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onStateOrResumeChanging(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lq2/m;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BACK_SWIPE_LAUNCHER_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setEnableOnBackInvokedCallback(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "launcher.pending_split_select_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/util/ObjectWrapper;->unwrap(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/PendingSplitSelectInfo;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mPendingSplitSelectInfo:Lcom/android/launcher3/util/PendingSplitSelectInfo;

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseActivity;->addMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->initUnfoldTransitionProgressProvider()V

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->CONTINUOUS_VIEW_TREE_CAPTURE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lc/d;->L(Landroid/content/Context;)Lc/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/r;->A(Landroid/view/Window;)Landroid/media/permission/SafeCloseable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mViewCapture:Landroid/media/permission/SafeCloseable;

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Landroid/view/Window;->addPrivateFlags(I)V

    return-void
.end method

.method protected onDeferredResumed()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onDeferredResumed()V

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->handlePendingActivityRequest()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->onActivityDestroyed()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mUnfoldTransitionProgressProvider:Lm0/o;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->RECEIVE_UNFOLD_EVENTS_FROM_SYSUI:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->setUnfoldAnimationListener(Lo0/c;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mUnfoldTransitionProgressProvider:Lm0/o;

    invoke-interface {v0}, Lm0/o;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TISBindHelper;->onDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->clearActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->onDestroy()V

    :cond_3
    invoke-super {p0}, Lq2/m;->onDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lm3/a;

    invoke-virtual {v0}, Lm3/a;->a()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitWithKeyboardShortcutController:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->onDestroy()V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mViewCapture:Landroid/media/permission/SafeCloseable;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_4
    return-void
.end method

.method protected onDeviceProfileInitiated()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDeviceProfileInitiated()V

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object p0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v0, p0}, Lcom/android/quickstep/SystemUiProxy;->setLauncherAppIconSize(I)V

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseDraggingActivity;->onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState(Z)V

    :cond_0
    and-int/lit8 p1, p3, 0x10

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->recreateControllers()V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    if-eqz p0, :cond_1

    iget-object p1, p2, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/android/launcher3/util/NavigationMode;)V

    :cond_1
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onEnterAnimationComplete()V

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->setVisible(Z)V

    return-void
.end method

.method public onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZ)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/uioverrides/p;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/p;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZ)V

    return-void
.end method

.method protected onItemClicked(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitToWorkspaceController:Lcom/android/quickstep/util/SplitToWorkspaceController;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/SplitToWorkspaceController;->handleSecondAppSelectionForSplit(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->access$201(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onNewIntent(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/OverviewCommandHelper;->clearPendingCommands()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->onPause()V

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onResume()V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->onResume()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/util/PendingSplitSelectInfo;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitSelectStateController;->getInitialTaskId()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v2}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v2

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {p0}, Lcom/android/quickstep/util/SplitSelectStateController;->getSplitEvent()Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/launcher3/util/PendingSplitSelectInfo;-><init>(IILcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-static {v0}, Lcom/android/launcher3/util/ObjectWrapper;->wrap(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object p0

    const-string v0, "launcher.pending_split_select_info"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object p0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    iget p0, p0, Lcom/android/launcher3/LauncherState;->ordinal:I

    const-string v0, "launcher.state"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected onScreenOnChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onScreenOnChanged(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    new-instance p1, Lcom/android/launcher3/uioverrides/v;

    invoke-direct {p1, p0}, Lcom/android/launcher3/uioverrides/v;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    const-wide/16 v0, 0x15e

    invoke-static {p1, v0, v1}, Ly2/c;->d(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public onStateSetEnd(Lcom/android/launcher3/LauncherState;)V
    .locals 2

    invoke-super {p0, p1}, Lq2/m;->onStateSetEnd(Lcom/android/launcher3/LauncherState;)V

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->handlePendingActivityRequest()V

    iget p1, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    const/4 v0, 0x2

    const/16 v1, 0x8

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/android/launcher3/x0;

    invoke-direct {p0, p1}, Lcom/android/launcher3/x0;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/android/launcher3/uioverrides/h;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/h;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/TaskView;->launchTask(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public bridge synthetic onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onStateSetEnd(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Lq2/m;->onTrimMemory(I)V

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsModel;->onTrimMemory(I)V

    return-void
.end method

.method public onUiChangedWhileSleeping()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/uioverrides/s;

    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/s;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWidgetsTransition(F)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onWidgetsTransition(F)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onTaskbarInAppDisplayProgressUpdate(FI)V

    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mEnableWidgetDepth:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/util/BaseDepthController;->widgetDepth:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {p0}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->bottomSheetDepth:F

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    :cond_0
    return-void
.end method

.method protected registerBackDispatcher()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BACK_SWIPE_LAUNCHER_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->registerBackDispatcher()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/android/launcher3/uioverrides/QuickstepLauncher$3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher$3;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-interface {v0, v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public runOnBindToTouchInteractionService(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/TISBindHelper;->runOnBindToTouchInteractionService(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHintUserWillBeActive()V
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->addActivityFlags(I)V

    return-void
.end method

.method public setResumed()V
    .locals 2

    sget-boolean v0, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_MODE_SUPPORTED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDesktopVisibilityController:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->areFreeformTasksVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->isGestureInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->setResumed()V

    return-void
.end method

.method public setTaskbarUIController(Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    return-void
.end method

.method protected setupViews()V
    .locals 10

    invoke-super {p0}, Lq2/m;->setupViews()V

    const v0, 0x7f0b02bc

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/OverviewActionsView;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    new-instance v9, Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object v3, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v6

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/quickstep/SystemUiProxy;

    sget-object v1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/quickstep/RecentsModel;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/quickstep/util/SplitSelectStateController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/quickstep/SystemUiProxy;Lcom/android/quickstep/RecentsModel;)V

    iput-object v9, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {v0, v1, v9}, Lcom/android/quickstep/views/RecentsView;->init(Lcom/android/quickstep/views/OverviewActionsView;Lcom/android/quickstep/util/SplitSelectStateController;)V

    new-instance v1, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/quickstep/util/SplitSelectStateController;)V

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitWithKeyboardShortcutController:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    new-instance v1, Lcom/android/quickstep/util/SplitToWorkspaceController;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/util/SplitToWorkspaceController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/quickstep/util/SplitSelectStateController;)V

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitToWorkspaceController:Lcom/android/quickstep/util/SplitToWorkspaceController;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {p0}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/quickstep/views/OverviewActionsView;->updateDimension(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/android/launcher3/util/NavigationMode;)V

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->buildAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->registerRemoteAnimations()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->registerRemoteTransitions()V

    new-instance v0, Lcom/android/quickstep/util/TISBindHelper;

    new-instance v1, Lcom/android/launcher3/uioverrides/w;

    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/w;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/util/TISBindHelper;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    new-instance v0, Lcom/android/launcher3/statehandlers/DepthController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/statehandlers/DepthController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    new-instance v0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mDesktopVisibilityController:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    new-instance v0, Lm3/a;

    invoke-direct {v0}, Lm3/a;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lm3/a;

    const-string v0, "ro.launcher.depth.widget"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mEnableWidgetDepth:Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/uioverrides/n;

    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/n;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->addOverlayCallback(Ll0/b$b;)V

    return-void
.end method

.method protected showAllAppsFromIntent(Z)V
    .locals 1

    const-string v0, "homekey"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->showAllAppsFromIntent(Z)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    new-instance v0, Lcom/android/launcher3/proxy/StartActivityParams;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/proxy/StartActivityParams;-><init>(Landroid/app/Activity;I)V

    iput-object p1, v0, Lcom/android/launcher3/proxy/StartActivityParams;->intent:Landroid/content/Intent;

    iput-object p3, v0, Lcom/android/launcher3/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    invoke-static {p0, v0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/proxy/StartActivityParams;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lm3/a;

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lm3/a;->h(Z)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lm3/a;

    invoke-virtual {p0, v2}, Lm3/a;->h(Z)V

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/android/launcher3/uioverrides/r;

    invoke-direct {p2, p0}, Lcom/android/launcher3/uioverrides/r;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-object p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8

    if-nez p7, :cond_0

    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    :cond_0
    move-object v7, p7

    const/4 p7, 0x1

    const-string v0, "android.pendingIntent.backgroundActivityAllowed"

    invoke-virtual {v7, v0, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p7, -0x1

    if-eq p2, p7, :cond_1

    iput p2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    new-instance p7, Lcom/android/launcher3/proxy/StartActivityParams;

    invoke-direct {p7, p0, p2}, Lcom/android/launcher3/proxy/StartActivityParams;-><init>(Landroid/app/Activity;I)V

    iput-object p1, p7, Lcom/android/launcher3/proxy/StartActivityParams;->intentSender:Landroid/content/IntentSender;

    iput-object p3, p7, Lcom/android/launcher3/proxy/StartActivityParams;->fillInIntent:Landroid/content/Intent;

    iput p4, p7, Lcom/android/launcher3/proxy/StartActivityParams;->flagsMask:I

    iput p5, p7, Lcom/android/launcher3/proxy/StartActivityParams;->flagsValues:I

    iput p6, p7, Lcom/android/launcher3/proxy/StartActivityParams;->extraFlags:I

    iput-object v7, p7, Lcom/android/launcher3/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    invoke-static {p0, p7}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/proxy/StartActivityParams;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v7}, Lcom/android/launcher3/Launcher;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public startSplitSelection(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object v2, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/uioverrides/i;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/launcher3/uioverrides/i;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/util/SplitSelectStateController;->findLastActiveTaskAndRunCallback(Lcom/android/launcher3/util/ComponentKey;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public supportsAdaptiveIconAnimation(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result p0

    return p0
.end method

.method public tryClearAccessibilityFocus(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    return-void
.end method

.method public useFadeOutAnimationForLauncherStart(Landroid/os/CancellationSignal;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/uioverrides/QuickstepLauncher$4;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher$4;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Landroid/os/CancellationSignal;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->setRemoteAnimationProvider(Lcom/android/quickstep/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V

    return-void
.end method
