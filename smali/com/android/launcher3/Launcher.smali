.class public Lcom/android/launcher3/Launcher;
.super Lcom/android/launcher3/statemanager/StatefulActivity;
.source "SourceFile"

# interfaces
.implements Ll0/a;
.implements Lcom/android/launcher3/model/BgDataModel$Callbacks;
.implements Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;
.implements Li0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Launcher$NonConfigInstance;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Ll0/a;",
        "Lcom/android/launcher3/model/BgDataModel$Callbacks;",
        "Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;",
        "Li0/f<",
        "Li0/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ActivityTracker<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final DESKTOP_MODE_1_SUPPORTED:Z

.field private static final DESKTOP_MODE_2_SUPPORTED:Z

.field private static final HOTSEAT_WIDGET_SCALE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/Hotseat;",
            ">;"
        }
    .end annotation
.end field

.field private static final WORKSPACE_WIDGET_SCALE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/Workspace<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static sIsNewProcess:Z


# instance fields
.field private mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

.field protected mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

.field private mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

.field private mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

.field mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseSearchConfig:Lcom/android/launcher3/allapps/BaseSearchConfig;

.field private mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

.field private mDeferOverlayCallbacks:Z

.field private final mDeferredOverlayCallbacks:Ljava/lang/Runnable;

.field protected mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

.field private mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field mHiddenAppsPagedView:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView<",
            "*>;"
        }
    .end annotation
.end field

.field mHiddenAppsView:Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

.field mHotseat:Lcom/android/launcher3/Hotseat;

.field private mIconCache:Lcom/android/launcher3/icons/IconCache;

.field protected mLastTouchUpTime:J

.field private mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private mModelWriter:Lcom/android/launcher3/model/ModelWriter;

.field private mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

.field private mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "+",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field protected mOverlayManager:Ll0/b;

.field private mOverviewPanel:Landroid/view/View;

.field private mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mPendingActivityRequestCode:I

.field private mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

.field private mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

.field private mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

.field private mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

.field mPowerManager:Landroid/os/PowerManager;

.field protected mPrevLauncherState:Lcom/android/launcher3/LauncherState;

.field private mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

.field private final mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

.field mScrimView:Lcom/android/launcher3/views/ScrimView;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

.field private mStateManager:Lcom/android/launcher3/statemanager/StateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation
.end field

.field private mStringCache:Lcom/android/launcher3/model/StringCache;

.field private mSynchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

.field private final mTmpAddItemCellCoordinates:[I

.field private mTouchInProgress:Z

.field private mUserChangedCallbackCloseable:Lcom/android/launcher3/util/SafeCloseable;

.field mWorkspace:Lcom/android/launcher3/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation
.end field

.field mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/launcher3/util/ActivityTracker;

    invoke-direct {v0}, Lcom/android/launcher3/util/ActivityTracker;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/Launcher;->sIsNewProcess:Z

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->WORKSPACE_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Launcher;->WORKSPACE_WIDGET_SCALE:Landroid/util/FloatProperty;

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->HOTSEAT_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Launcher;->HOTSEAT_WIDGET_SCALE:Landroid/util/FloatProperty;

    const-string v0, "persist.wm.debug.desktop_mode"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/Launcher;->DESKTOP_MODE_1_SUPPORTED:Z

    const-string v0, "persist.wm.debug.desktop_mode_2"

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/Launcher;->DESKTOP_MODE_2_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    new-instance v0, Lcom/android/launcher3/t0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/t0;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDeferredOverlayCallbacks:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    sget-object v0, Lcom/android/launcher3/celllayout/CellPosMapper;->DEFAULT:Lcom/android/launcher3/celllayout/CellPosMapper;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

    new-instance v0, Lcom/android/launcher3/o1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/o1;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    return-void
.end method

.method public static synthetic A(Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Launcher;->lambda$getFirstMatchForAppClose$16(Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic B(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->lambda$onCreate$1()V

    return-void
.end method

.method public static synthetic C(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/RunnableList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->lambda$startActivitySafely$9(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/RunnableList;)V

    return-void
.end method

.method public static synthetic D(Lcom/android/launcher3/Launcher;Li0/c;)Ll0/b;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$onPluginConnected$2(Li0/c;)Ll0/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lcom/android/launcher3/Launcher;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$onRestoreInstanceState$7(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic F(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->checkIfOverlayStillDeferred()V

    return-void
.end method

.method public static synthetic G(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$pauseExpensiveViewUpdates$19(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic H(Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$getFirstMatchForAppClose$17(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic I(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->lambda$handleActivityResult$4()V

    return-void
.end method

.method public static synthetic J(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->lambda$getPagesToBindSynchronously$11(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic K(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$resumeExpensiveViewUpdates$20(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic L(ILcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$getFirstMatchForAppClose$15(ILcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic M(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Launcher;->lambda$bindAddScreens$12(Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/statemanager/StateManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

    return-object p0
.end method

.method private addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .locals 6

    iget-object v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/dragndrop/NTDragLayer;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v3

    invoke-virtual {p0, v3, p1, v0, v1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    iput-object v2, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    goto :goto_1

    :cond_0
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    iget-object v3, p1, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->getWidgetIdForCustomProvider(Landroid/content/ComponentName;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->allocateAppWidgetId()I

    move-result v0

    :goto_0
    iget-object v3, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v4, v0, v5, v3}, Lcom/android/launcher3/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    goto :goto_1

    :cond_2
    const/16 v2, 0xb

    invoke-virtual {v1, p0, v0, p1, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/ItemInfo;I)V

    :goto_1
    return-void
.end method

.method private bindAddScreens(Lcom/android/launcher3/util/IntArray;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/util/IntSet;->wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/b1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/b1;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreenBeforeEmptyScreen(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private canAnimatePageChange()Z
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/Launcher;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            ")TT;"
        }
    .end annotation

    check-cast p0, Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method private checkIfOverlayStillDeferred()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-interface {v0, p0}, Ll0/b;->onActivityStarted(Landroid/app/Activity;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-interface {v0, p0}, Ll0/b;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-interface {v0, p0}, Ll0/b;->onActivityPaused(Landroid/app/Activity;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-interface {v0, p0}, Ll0/b;->onActivityStopped(Landroid/app/Activity;)V

    :cond_5
    return-void
.end method

.method private closeOpenViews()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->closeOpenViews(Z)V

    return-void
.end method

.method private completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)I
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iget v2, p4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x64

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(I)I

    move-result v1

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/16 p2, 0xc

    const/16 v0, 0xd

    if-eq p1, p2, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGET_RECONFIGURED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    invoke-direct {p0, p3, p1}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p2, p3}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance p3, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    invoke-direct {p3, p2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {p3, p0, p1, v0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;I)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p3, p4, p1, p1}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    goto :goto_0

    :cond_4
    iget v4, p4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v6, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v7, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    move-object v2, p0

    move-object v3, p2

    move v5, v1

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Launcher;->completeAddShortcut(Landroid/content/Intent;IIIILcom/android/launcher3/util/PendingRequestArgs;)V

    const p1, 0x7f12013b

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->announceForAccessibility(I)V

    :cond_5
    :goto_0
    return v1
.end method

.method private completeRestoreAppWidget(II)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getWidgetForAppWidgetId(I)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iput p2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez p2, :cond_1

    iput-object v0, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    :cond_1
    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->isReinflateIfNeeded()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-object v1

    :cond_3
    :goto_0
    const-string p0, "Launcher"

    const-string p1, "Widget update called, when the widget no longer exists."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .locals 2

    new-instance p0, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {p0}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->alpha(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1c2

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    mul-int/lit8 p2, p2, 0x55

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const p2, 0x3fa66666    # 1.3f

    invoke-direct {p1, p2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private ensurePendingDropLayoutExists(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreens()V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    return p1
.end method

.method private static varargs getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/view/ViewGroup;",
            ">;[",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4, v2}, Lcom/android/launcher3/Launcher;->mapOverViewGroup(Landroid/view/ViewGroup;Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method private handleActivityResult(IILandroid/content/Intent;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/util/ActivityResultInfo;-><init>(IILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    if-nez v5, :cond_1

    return-void

    :cond_1
    invoke-virtual {v5}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetId()I

    move-result v1

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->MULTI_SELECT_EDIT_MODE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/launcher3/s1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/s1;-><init>(Lcom/android/launcher3/Launcher;)V

    :goto_0
    const/16 v2, 0xb

    const-string v3, "appWidgetId"

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    const/4 v4, -0x1

    if-ne p1, v2, :cond_6

    if-eqz p3, :cond_3

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    move v2, p1

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    if-nez p2, :cond_4

    invoke-virtual {p0, v8, v2, v5}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0, v7, v8, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    if-ne p2, v4, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v5}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object p1

    const/16 v6, 0x1f4

    move-object v1, p0

    move-object v3, v5

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    const/16 v2, 0x9

    const/4 v6, 0x1

    if-eq p1, v2, :cond_8

    const/4 v2, 0x5

    if-ne p1, v2, :cond_7

    goto :goto_3

    :cond_7
    move v2, v8

    goto :goto_4

    :cond_8
    :goto_3
    move v2, v6

    :goto_4
    if-eqz v2, :cond_e

    if-eqz p3, :cond_9

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    :cond_9
    if-gez v4, :cond_a

    move v4, v1

    :cond_a
    if-ltz v4, :cond_d

    if-nez p2, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object p1

    iget p3, v5, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v0, -0x64

    if-ne p3, v0, :cond_c

    iget p3, p1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    invoke-direct {p0, p3}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(I)I

    move-result p3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v3, p1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    invoke-virtual {v1, v2, v3, p3, v0}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapPresenterToModel(IIII)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iput p3, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    :cond_c
    iget-object p3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget p1, p1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    invoke-virtual {p3, p1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/android/launcher3/CellLayout;->setDropPending(Z)V

    new-instance p3, Lcom/android/launcher3/Launcher$3;

    move-object v1, p3

    move-object v2, p0

    move v3, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/Launcher$3;-><init>(Lcom/android/launcher3/Launcher;IILcom/android/launcher3/util/PendingRequestArgs;Lcom/android/launcher3/CellLayout;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0, v7, v8, p3}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    goto :goto_6

    :cond_d
    :goto_5
    const-string p1, "Launcher"

    const-string p2, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8, v4, v5}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance p2, Lcom/android/launcher3/u0;

    invoke-direct {p2, p0}, Lcom/android/launcher3/u0;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p1, v7, v8, p2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    :goto_6
    return-void

    :cond_e
    const/16 v2, 0xd

    if-eq p1, v2, :cond_13

    const/16 v2, 0xc

    if-ne p1, v2, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/android/launcher3/Launcher;->handleCardResult(IILandroid/content/Intent;Lcom/android/launcher3/util/PendingRequestArgs;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    :cond_10
    if-ne p1, v6, :cond_12

    if-ne p2, v4, :cond_11

    iget v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-eq v1, v4, :cond_11

    invoke-direct {p0, p1, p3, v4, v5}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)I

    goto :goto_7

    :cond_11
    if-nez p2, :cond_12

    :goto_7
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, v7, v8, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    :cond_12
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    return-void

    :cond_13
    :goto_8
    if-ne p2, v4, :cond_14

    invoke-direct {p0, p1, p3, v1, v5}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)I

    :cond_14
    return-void
.end method

.method private inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Landroid/view/View;
    .locals 11

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasOptionFlag(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p0

    const-string v0, "search widget removed because search component cannot be found"

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    return-object v2

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/BaseDraggingActivity;->mIsSafeModeEnabled:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/icons/IconCache;Z)V

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-object v1

    :cond_1
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIND_WIDGET_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    const-string v3, ""

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "the provider isn\'t ready."

    move-object v5, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v6, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v3, "WidgetManagerHelper cannot find a provider from provider info."

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget v6, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v5

    if-nez v5, :cond_5

    iget v3, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v6, -0x64

    if-gt v3, v6, :cond_4

    const-string v3, "CustomWidgetManager cannot find provider from that widget id."

    goto :goto_0

    :cond_4
    const-string v3, "AppWidgetManager cannot find provider for that widget id. It could be because AppWidgetService is not available, or the appWidgetId has not been bound to a the provider yet, or you don\'t have access to that appWidgetId."

    :cond_5
    :goto_0
    invoke-virtual {p1, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_e

    iget v4, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v4, :cond_e

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing restored widget: id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " belongs to component "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " user "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", as the provider is null and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-object v2

    :cond_6
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    const/4 v7, 0x4

    if-eqz v4, :cond_c

    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v8}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->allocateAppWidgetId()I

    move-result v8

    iput v8, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    iget v8, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v4, v8

    iput v4, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    new-instance v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v8, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    invoke-direct {v4, v5, v8}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {v4, p0}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    const/16 v8, 0x20

    invoke-virtual {p1, v8}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v9, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v4, :cond_7

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_7
    move-object v4, v9

    :cond_8
    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget v10, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v9, v10, v5, v4}, Lcom/android/launcher3/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v4

    iput-object v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    iget v9, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v9, v9, -0x21

    iput v9, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v4, :cond_b

    iget-object v4, v5, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_9

    if-eqz v8, :cond_a

    :cond_9
    move v7, v6

    :cond_a
    iput v7, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    :goto_1
    invoke-virtual {v4, p1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_2

    :cond_c
    invoke-virtual {p1, v7}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v5, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v4, :cond_d

    iput v6, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    goto :goto_1

    :cond_d
    invoke-virtual {p1, v7}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v5, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget v7, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v7}, Lcom/android/launcher3/widget/WidgetManagerHelper;->isAppWidgetRestored(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iput v6, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    goto :goto_1

    :cond_e
    :goto_2
    iget v4, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v4, :cond_10

    if-nez v5, :cond_f

    const-string v0, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing invalid widget: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object p0

    invoke-virtual {v0, p1, p0, v3}, Lcom/android/launcher3/model/ModelWriter;->deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherWidgetHolder;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-object v2

    :cond_f
    :try_start_2
    iget v0, v5, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v0, v5, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    iget v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    :goto_3
    invoke-virtual {v0, p0, v2, v5}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    goto :goto_4

    :cond_10
    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz v5, :cond_11

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    iget v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    new-instance v3, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-direct {v3, p0, p1, v4, v6}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/icons/IconCache;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->addPendingView(ILcom/android/launcher3/widget/PendingAppWidgetHostView;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    iget v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    goto :goto_3

    :cond_11
    new-instance v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-direct {v0, p0, p1, v2, v6}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/icons/IconCache;Z)V

    :goto_4
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    throw p0
.end method

.method private initPowerManager()V
    .locals 1

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method private isScreenOff()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->initPowerManager()V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$addAppWidgetImpl$8()V
    .locals 3

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    return-void
.end method

.method private synthetic lambda$bindAddScreens$12(Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void
.end method

.method private synthetic lambda$completeTwoStageWidgetDrop$5(ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    sget-object p1, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createAppWidgetHolder$6(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeWidget(I)V

    return-void
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$15(ILcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$16(Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1

    if-eqz p2, :cond_0

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getFirstMatchForAppClose$17(Ljava/util/List;Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getPagesToBindSynchronously$11(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    return p0
.end method

.method private synthetic lambda$handleActivityResult$3()V
    .locals 3

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    return-void
.end method

.method private synthetic lambda$handleActivityResult$4()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method private synthetic lambda$onInitialBindComplete$14()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->disableDeferUpdates(I)V

    return-void
.end method

.method private synthetic lambda$onPluginConnected$2(Li0/c;)Ll0/b;
    .locals 0

    invoke-interface {p1, p0, p0}, Li0/c;->d(Landroid/app/Activity;Ll0/a;)Ll0/b;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onProvideKeyboardShortcuts$18(Ljava/util/ArrayList;Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;)V
    .locals 3

    new-instance v0, Landroid/view/KeyboardShortcutInfo;

    iget-object v1, p1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->accessibilityAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iget p1, p1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->keyCode:I

    const/16 v2, 0x1000

    invoke-direct {v0, v1, p1, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onRestoreInstanceState$7(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$pauseExpensiveViewUpdates$19(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    instance-of p0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->beginDeferringUpdates()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$preAddApps$13(Lcom/android/launcher3/AbstractFloatingView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method private static synthetic lambda$resumeExpensiveViewUpdates$20(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    instance-of p0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->endDeferringUpdates()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$startActivitySafely$10(Lcom/android/launcher3/BubbleTextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    return-void
.end method

.method private synthetic lambda$startActivitySafely$9(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/RunnableList;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/launcher3/j;

    invoke-direct {p1, p4}, Lcom/android/launcher3/j;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    :goto_0
    return-void
.end method

.method private logStopAndResume(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherState;

    iget v3, v3, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-interface {p1, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ONRESUME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget p1, p1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-interface {v2, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ONSTOP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lt1/k$b;->build()Lt1/k;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-interface {v2, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    :cond_3
    invoke-interface {v2, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method private static mapOverViewGroup(Landroid/view/ViewGroup;Ljava/util/function/Predicate;)Landroid/view/View;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/folder/BigFolderIcon;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc3/a;->i(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->setFocusable(Z)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, p0}, Landroid/appwidget/AppWidgetHostView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private processShortcutFromDrop(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/android/launcher3/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    const-string v0, "Main"

    const-string v2, "start: processShortcutFromDrop"

    invoke-static {v0, v2}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->startConfigActivity(Landroid/app/Activity;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static synthetic r(Lcom/android/launcher3/BubbleTextView;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->lambda$startActivitySafely$10(Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->ordinal:I

    const-string v1, "launcher.state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/launcher3/LauncherState;->values()[Lcom/android/launcher3/LauncherState;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher$NonConfigInstance;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/launcher3/Launcher$NonConfigInstance;->config:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v4}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/android/launcher3/statemanager/BaseState;->shouldDisableRestore()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1, v0, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_3

    const-string v0, "launcher.drawer.page"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHiddenAppsPagedView:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    invoke-virtual {v0}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->o()V

    :cond_3
    const-string v0, "launcher.request_args"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    :cond_4
    const-string v0, "launcher.request_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    const-string v0, "launcher.activity_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ActivityResultInfo;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    const-string v0, "launcher.widget_panel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p0, v3}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->show(Lcom/android/launcher3/Launcher;Z)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_5
    return-void
.end method

.method public static synthetic s(Ljava/util/ArrayList;Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$onProvideKeyboardShortcuts$18(Ljava/util/ArrayList;Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;)V

    return-void
.end method

.method private scheduleDeferredCheck()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeferredOverlayCallbacks:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDeferredOverlayCallbacks:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method private setWorkspaceLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    return-void
.end method

.method private showAllAppsWorkTabFromIntent(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->showAllAppsFromIntent(Z)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->switchToTab(I)V

    return-void
.end method

.method private switchOverlay(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ll0/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ll0/b;->onActivityDestroyed(Landroid/app/Activity;)V

    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll0/b;

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-interface {p1}, Ll0/b;->onAttachedToWindow()V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->checkIfOverlayStillDeferred()V

    return-void
.end method

.method public static synthetic t(Lcom/android/launcher3/AbstractFloatingView;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->lambda$preAddApps$13(Lcom/android/launcher3/AbstractFloatingView;)V

    return-void
.end method

.method public static synthetic u(Lcom/android/launcher3/Launcher;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$createAppWidgetHolder$6(I)V

    return-void
.end method

.method private updateDisallowBack()V
    .locals 3

    sget-boolean v0, Lcom/android/launcher3/Launcher;->DESKTOP_MODE_1_SUPPORTED:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/launcher3/Launcher;->DESKTOP_MODE_2_SUPPORTED:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherRootView;->setDisallowBackGesture(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateNotificationDots(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->updateNotificationDots(Ljava/util/function/Predicate;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->updateNotificationDots(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static synthetic v(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->lambda$completeTwoStageWidgetDrop$5(ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V

    return-void
.end method

.method public static synthetic w(Lcom/android/launcher3/Launcher;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->updateNotificationDots(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static synthetic x(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->lambda$handleActivityResult$3()V

    return-void
.end method

.method public static synthetic y(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->lambda$onInitialBindComplete$14()V

    return-void
.end method

.method public static synthetic z(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->lambda$addAppWidgetImpl$8()V

    return-void
.end method


# virtual methods
.method addAppWidgetFromDropImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    return-void
.end method

.method addAppWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p4, p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->MULTI_SELECT_EDIT_MODE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/r0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/r0;-><init>(Lcom/android/launcher3/Launcher;)V

    :goto_0
    invoke-virtual {p4, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 p1, 0x0

    invoke-virtual {p0, p5, p1, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public addFolder(Lcom/android/launcher3/CellLayout;IIIIZ)Lcom/android/launcher3/folder/BaseFolderIcon;
    .locals 7

    new-instance v6, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v6}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    if-eqz p6, :cond_0

    iget-object p6, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object p6, p6, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, p6, Lcom/android/launcher3/InvariantDeviceProfile;->bigCellWidthRatio:I

    iput v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p6, p6, Lcom/android/launcher3/InvariantDeviceProfile;->bigCellHeightRatio:I

    iput p6, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput p6, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    move-object v1, v6

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    invoke-static {p0, p1, v6}, Lcom/android/launcher3/folder/BaseFolderIcon;->inflateFolderAndIcon(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-interface {p2, p1, v6}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    return-object p1
.end method

.method public addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object p4

    invoke-virtual {p4, v1, v1, p3, p2}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapPresenterToModel(IIII)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iput p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v2

    aget v1, p4, v1

    aget p4, p4, v0

    invoke-virtual {v2, v1, p4, p3, p2}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapPresenterToModel(IIII)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object p3

    iget p4, p3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iput p4, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget p4, p3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iput p4, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p3, p3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    iput p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    :goto_0
    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput p5, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput p6, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eq p2, v0, :cond_3

    const/4 p3, 0x4

    if-eq p2, p3, :cond_2

    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown item type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    check-cast p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    goto :goto_2

    :cond_3
    check-cast p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->processShortcutFromDrop(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V

    :goto_2
    return-void
.end method

.method protected announceForAccessibility(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public areFreeformTasksVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/allapps/AllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V

    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const-string p1, "DisplayAllApps"

    invoke-static {p1, p0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public bindAllWidgets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->setAllWidgets(Ljava/util/List;)V

    return-void
.end method

.method public bindAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-interface {v1, v0, p1}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntArray;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/IntArray;->removeAllValues(Lcom/android/launcher3/util/IntArray;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Lcom/android/launcher3/util/IntArray;)V

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p0, p3, p2}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    :cond_2
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(Z)V

    return-void
.end method

.method public bindDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->setDeepShortcutMap(Ljava/util/HashMap;)V

    return-void
.end method

.method public bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->updateProgressBar(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public bindItems(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;ZZ)V

    return-void
.end method

.method public bindItems(Ljava/util/List;ZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->canAnimatePageChange()Z

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v6

    const/4 v9, -0x1

    :goto_0
    if-ge v7, v4, :cond_e

    move-object/from16 v10, p1

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    iget v12, v11, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v13, -0x65

    if-ne v12, v13, :cond_0

    iget-object v12, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-nez v12, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v12, v11, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v12, :cond_6

    const/4 v13, 0x1

    if-eq v12, v13, :cond_6

    const/4 v13, 0x2

    if-eq v12, v13, :cond_4

    const/4 v13, 0x4

    if-eq v12, v13, :cond_3

    const/4 v13, 0x5

    if-eq v12, v13, :cond_3

    const/4 v13, 0x6

    if-eq v12, v13, :cond_6

    const/16 v13, 0xa

    if-eq v12, v13, :cond_2

    const/16 v13, 0x64

    if-ne v12, v13, :cond_1

    move-object v12, v11

    check-cast v12, Lcom/nothing/launcher/card/s;

    invoke-virtual {v0, v12}, Lcom/android/launcher3/Launcher;->inflateCardWidget(Lcom/nothing/launcher/card/s;)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_7

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Item Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v12, v11

    check-cast v12, Lcom/android/launcher3/model/data/FolderInfo;

    move-object v12, v6

    goto :goto_1

    :cond_3
    move-object v12, v11

    check-cast v12, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {v0, v12}, Lcom/android/launcher3/Launcher;->inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_7

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    if-nez v12, :cond_5

    move-object v12, v3

    :cond_5
    move-object v13, v11

    check-cast v13, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-static {v0, v12, v13}, Lcom/android/launcher3/folder/BaseFolderIcon;->inflateFolderAndIcon(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object v12

    goto :goto_1

    :cond_6
    move-object v12, v11

    check-cast v12, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0, v12}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v12

    :cond_7
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v13

    iget v14, v11, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v15, -0x64

    if-ne v14, v15, :cond_a

    iget-object v14, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v15, v13, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    invoke-virtual {v14, v15}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v14

    if-eqz v14, :cond_a

    iget v15, v13, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v5, v13, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    invoke-virtual {v14, v15, v5}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v5

    if-eqz v5, :cond_a

    iget v5, v13, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v12, v13, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    invoke-virtual {v14, v5, v12}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bindItems failed when removing colliding item="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Launcher"

    invoke-static {v13, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_9
    const-string v5, "null"

    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Collision while binding workspace item: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ". Collides with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v12

    invoke-virtual {v12, v11, v5}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-interface {v3, v12, v11}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    if-eqz p2, :cond_b

    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v12, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v12, v5}, Landroid/view/View;->setScaleY(F)V

    invoke-direct {v0, v12, v7}, Lcom/android/launcher3/Launcher;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v9, v13, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    :cond_b
    if-nez v8, :cond_c

    move-object v8, v12

    :cond_c
    iget-object v5, v11, Lcom/android/launcher3/model/data/ItemInfo;->toCenter:Landroid/graphics/Point;

    if-eqz v5, :cond_d

    instance-of v5, v12, Lcom/android/launcher3/folder/BigFolderIcon;

    if-eqz v5, :cond_d

    move-object v5, v0

    check-cast v5, Lq2/m;

    invoke-virtual {v5}, Lq2/m;->getResizeManager()La4/g;

    move-result-object v5

    check-cast v12, Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-virtual {v5, v12, v11}, La4/g;->f(Lcom/android/launcher3/folder/BigFolderIcon;Lcom/android/launcher3/model/data/ItemInfo;)V

    iput-object v6, v11, Lcom/android/launcher3/model/data/ItemInfo;->toCenter:Landroid/graphics/Point;

    :cond_d
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_e
    if-eqz p2, :cond_11

    const/4 v4, -0x1

    if-le v9, v4, :cond_11

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    if-eqz p3, :cond_f

    if-eqz v8, :cond_f

    new-instance v1, Lcom/android/launcher3/Launcher$6;

    invoke-direct {v1, v0, v8}, Lcom/android/launcher3/Launcher$6;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_f
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v1

    iget-object v5, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5, v9}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v5

    new-instance v6, Lcom/android/launcher3/p1;

    invoke-direct {v6, v4}, Lcom/android/launcher3/p1;-><init>(Landroid/animation/AnimatorSet;)V

    const-wide/16 v7, 0x1f4

    if-eqz v2, :cond_10

    if-eq v9, v1, :cond_10

    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v2, Lcom/android/launcher3/Launcher$7;

    invoke-direct {v2, v0, v5, v6}, Lcom/android/launcher3/Launcher$7;-><init>(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V

    invoke-virtual {v1, v2, v7, v8}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_10
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v6, v7, v8}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_11
    if-eqz p3, :cond_12

    if-eqz v8, :cond_12

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_12
    :goto_4
    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->requestLayout()V

    return-void
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-interface {v0, p1, p0}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->updateRestoreItems(Ljava/util/HashSet;Lcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method

.method public bindScreens(Lcom/android/launcher3/util/IntArray;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreens()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Lcom/android/launcher3/util/IntArray;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->unlockWallpaperFromDefaultPageOnNextLayout()V

    return-void
.end method

.method public bindStringCache(Lcom/android/launcher3/model/StringCache;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mStringCache:Lcom/android/launcher3/model/StringCache;

    return-void
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->widgetsRestored(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Ljava/util/function/Predicate;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onAppsRemoved(Ljava/util/function/Predicate;)V

    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V

    return-void
.end method

.method public bindWorkspaceItemsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-interface {v0, p1, p0}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->updateWorkspaceItems(Ljava/util/List;Lcom/android/launcher3/views/ActivityContext;)V

    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V

    :cond_0
    return-void
.end method

.method public canUseMultipleShadesForPopup()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearPendingBinds()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->disableDeferUpdatesSilently(I)V

    :cond_0
    return-void
.end method

.method public clearPendingExecutor(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    :cond_0
    return-void
.end method

.method protected closeOpenViews(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    return-void
.end method

.method protected closeOpenViewsExcept(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

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

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .locals 7

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p4, p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p4

    :cond_0
    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {p3, p0, p1, p4}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p3

    :cond_1
    new-instance v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, p4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v6, p1, v0, p4, p3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput p1, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput p1, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput p1, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput p1, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {p4}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, v6, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    instance-of p1, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget p1, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->sourceContainer:I

    :goto_0
    iput p1, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    goto :goto_1

    :cond_2
    instance-of p1, p2, Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz p1, :cond_3

    move-object p1, p2

    check-cast p1, Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {p1}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetSourceContainer()I

    move-result p1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v3, p1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iget v4, p1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v5, p1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    invoke-direct {p0, p3, v6}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-interface {p4, p3, v6}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    const p4, 0x7f12013b

    invoke-virtual {p0, p4}, Lcom/android/launcher3/Launcher;->announceForAccessibility(I)V

    instance-of p4, p3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz p4, :cond_6

    check-cast p3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget p4, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v0, p1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    invoke-virtual {p0, p4, v0}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object p4

    if-nez p4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "container = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " screenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher"

    invoke-static {v0, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_5

    new-instance p1, Lcom/android/launcher3/Launcher$4;

    invoke-direct {p1, p0, p3, p4}, Lcom/android/launcher3/Launcher$4;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {p3, p1}, Landroid/appwidget/AppWidgetHostView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p3}, Landroid/appwidget/AppWidgetHostView;->requestLayout()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    new-instance v0, Lcom/android/launcher3/Launcher$5;

    invoke-direct {v0, p0, p4, p3}, Lcom/android/launcher3/Launcher$5;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_6
    :goto_2
    sget-object p0, Ly4/g;->a:Ly4/g;

    invoke-virtual {p0, p2, v6}, Ly4/g;->a(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method protected completeAddShortcut(Landroid/content/Intent;IIIILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v9, p2

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/util/PendingRequestArgs;->getRequestCode()I

    move-result v1

    const/4 v10, 0x1

    if-ne v1, v10, :cond_8

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v11, v0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    move/from16 v12, p3

    invoke-virtual {v0, v9, v12}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/pm/PinRequestHelper;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/pm/PinRequestHelper;->createWorkspaceItemFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v14

    const-string v1, "Launcher"

    if-nez v14, :cond_1

    const-string v0, "Unable to parse a valid shortcut result"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v15, 0x0

    if-gez v9, :cond_6

    invoke-virtual {v0, v14}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v8

    if-ltz p4, :cond_4

    if-ltz p5, :cond_4

    aput p4, v11, v15

    aput p5, v11, v10

    new-instance v7, Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/launcher3/DropTarget$DragObject;-><init>(Landroid/content/Context;)V

    iput-object v14, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v6, 0x0

    const/16 v16, 0x1

    move-object v2, v8

    move/from16 v3, p2

    move-object v4, v13

    move-object v5, v11

    move-object/from16 v17, v7

    move/from16 v7, v16

    move-object/from16 p1, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v5, v11

    move-object/from16 v7, v17

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    move v1, v10

    goto :goto_0

    :cond_4
    move-object/from16 p1, v8

    invoke-virtual {v13, v11, v10, v10}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_5

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v14, v1}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    aget v5, v11, v15

    aget v6, v11, v10

    move-object v2, v14

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v14}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v9}, Lcom/android/launcher3/Launcher;->findFolderIcon(I)Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    move-object/from16 v1, p6

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v0, v14, v1, v15}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find folder with id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to add shortcut."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return-void
.end method

.method completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {p3}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/v0;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/android/launcher3/v0;-><init>(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V

    move v7, p1

    move-object v8, v0

    move-object v6, v1

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->deleteAppWidgetId(I)V

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move v7, p1

    move-object v6, v0

    move-object v8, v6

    :goto_1
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/launcher3/dragndrop/DragView;

    const/4 v9, 0x1

    move-object v3, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_2
    return-void
.end method

.method protected createAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 1

    new-instance v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method

.method protected createAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .locals 2

    invoke-static {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;->newFactory(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/f1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/f1;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;->newInstance(Landroid/content/Context;Ljava/util/function/IntConsumer;)Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object p0

    return-object p0
.end method

.method protected createOnboardingPrefs(Landroid/content/SharedPreferences;)Lcom/android/launcher3/util/OnboardingPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "+",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/OnboardingPrefs;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/OnboardingPrefs;-><init>(Lcom/android/launcher3/views/ActivityContext;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/nothing/launcher/views/NTBubbleTextView;

    invoke-virtual {p1, p2}, Lcom/nothing/launcher/views/NTBubbleTextView;->updateIconSizeAndPadding(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object p1
.end method

.method createShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected createStartupLatencyLogger(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 0

    new-instance p0, Lcom/android/launcher3/logging/StartupLatencyLogger;

    invoke-direct {p0, p1}, Lcom/android/launcher3/logging/StartupLatencyLogger;-><init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    return-object p0
.end method

.method public createTouchControllers()[Lcom/android/launcher3/util/TouchController;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/util/TouchController;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/launcher3/touch/AllAppsSwipeController;

    invoke-direct {v1, p0}, Lcom/android/launcher3/touch/AllAppsSwipeController;-><init>(Lcom/android/launcher3/Launcher;)V

    const/4 p0, 0x1

    aput-object v1, v0, p0

    return-object v0
.end method

.method public deferOverlayCallbacksUntilNextResumeOrStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    return-void
.end method

.method public dispatchDeviceProfileChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->dispatchDeviceProfileChanged()V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-interface {p0}, Ll0/b;->i()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    const-string v0, "Main"

    const-string v1, "Key event"

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/testing/TestLogging;->recordKeyEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/KeyEvent;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-nez v1, :cond_0

    const v1, 0x7f120124

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherState;->getDescription(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mTouchInProgress:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mTouchInProgress:Z

    :goto_0
    const-string v0, "Main"

    const-string v1, "Touch event"

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/testing/TestLogging;->recordMotionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    array-length v0, p4

    if-lez v0, :cond_4

    const/4 v0, 0x0

    aget-object v1, p4, v0

    const-string v2, "--all"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Workspace Items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    const-string v3, "    "

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Homescreen "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    move v4, v0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Hotseat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Misc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/BaseActivity;->dumpMisc(Ljava/lang/String;Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmWorkspaceLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmPendingRequestArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPendingActivityResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmRotationHelper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmAppWidgetHolder.isListening: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->isListening()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/views/BaseDragLayer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/statemanager/StateManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/popup/PopupDataProvider;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p0, p1, p3}, Lcom/android/launcher3/DeviceProfile;->dump(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)V

    :try_start_0
    invoke-static {p3}, Lcom/android/launcher3/logging/FileLog;->flushAll(Ljava/io/PrintWriter;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_5
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-interface {p0, p1, p3}, Ll0/b;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public findFolderIcon(I)Lcom/android/launcher3/folder/BaseFolderIcon;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/BaseFolderIcon;

    return-object p0
.end method

.method public finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .locals 5

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "finishBindingItems"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForRemainingPages()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/launcher3/util/ActivityResultInfo;->requestCode:I

    iget v4, v2, Lcom/android/launcher3/util/ActivityResultInfo;->resultCode:I

    iget-object v2, v2, Lcom/android/launcher3/util/ActivityResultInfo;->data:Landroid/content/Intent;

    invoke-direct {p0, v3, v4, v2}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, p1, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(II)V

    new-instance p1, Lcom/android/launcher3/util/IntSet;

    invoke-direct {p1}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object p1

    const v1, 0x7f0e007b

    iget-object v2, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    mul-int/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Lcom/android/launcher3/util/ViewCache;->setCacheSize(II)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object p1

    const v1, 0x7f0e0086

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/util/ViewCache;->setCacheSize(II)V

    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(Z)V

    return-void
.end method

.method public bridge synthetic getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    return-object p0
.end method

.method public getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    return-object p0
.end method

.method protected getAllAppsEntryEvent()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logging/StatsLogManager$EventEnum;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_ENTRY_WITH_DEVICE_SEARCH:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_ENTRY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method protected getAllAppsExitEvent()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logging/StatsLogManager$EventEnum;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_EXIT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    return-object p0
.end method

.method public getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-object p0
.end method

.method public getCellLayout(II)Lcom/android/launcher3/CellLayout;
    .locals 1

    const/16 v0, -0x65

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

    return-object p0
.end method

.method protected getDefaultOverlay()Ll0/b;
    .locals 1

    new-instance v0, Lcom/android/launcher3/Launcher$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$2;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method

.method public getDefaultWorkspaceDragOptions()Lcom/android/launcher3/dragndrop/DragOptions;
    .locals 0

    new-instance p0, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    return-object p0
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    return-object p0
.end method

.method public getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    check-cast p0, Lcom/android/launcher3/dragndrop/NTDragLayer;

    return-object p0
.end method

.method public bridge synthetic getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p0

    return-object p0
.end method

.method public getDropTargetBar()Lcom/android/launcher3/DropTargetBar;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    return-object p0
.end method

.method public getDropTargetHandler()Lcom/android/launcher3/DropTargetHandler;
    .locals 1

    new-instance v0, Lcom/android/launcher3/DropTargetHandler;

    invoke-direct {v0, p0}, Lcom/android/launcher3/DropTargetHandler;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method

.method public getFirstMatchForAppClose(ILjava/lang/String;Landroid/os/UserHandle;Z)Landroid/view/View;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/android/launcher3/g1;

    invoke-direct {v0, p1}, Lcom/android/launcher3/g1;-><init>(I)V

    new-instance p1, Lcom/android/launcher3/h1;

    invoke-direct {p1, p3, p2}, Lcom/android/launcher3/h1;-><init>(Landroid/os/UserHandle;Ljava/lang/String;)V

    const/4 p2, 0x2

    const/4 p3, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    sget-object p4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mHiddenAppsPagedView:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    invoke-virtual {p4}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p4

    const/4 v2, 0x0

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mHiddenAppsView:Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    invoke-virtual {p4}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->getRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-array p2, p2, [Ljava/util/function/Predicate;

    aput-object v0, p2, v1

    aput-object p1, p2, p3

    invoke-static {v3, p2}, Lcom/android/launcher3/Launcher;->getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p2

    if-lez p2, :cond_0

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, p1, v1, p2, p3}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mHiddenAppsView:Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result p0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    return-object v2

    :cond_0
    return-object p1

    :cond_1
    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-array p2, p2, [Ljava/util/function/Predicate;

    aput-object v0, p2, v1

    aput-object p1, p2, p3

    invoke-static {v3, p2}, Lcom/android/launcher3/Launcher;->getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p2

    if-lez p2, :cond_2

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, p1, v1, p2, p3}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getHeaderBottom()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_2

    return-object v2

    :cond_2
    return-object p1

    :cond_3
    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p4

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v3, p2, [Ljava/util/function/Predicate;

    aput-object v0, v3, v1

    aput-object p1, v3, p3

    invoke-static {v2, v3}, Lcom/android/launcher3/Launcher;->getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isForceInvisible()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, p3

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    invoke-virtual {p4, v2}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    goto :goto_1

    :cond_5
    return-object v2

    :cond_6
    :goto_1
    new-instance p4, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {p4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v2, Lcom/android/launcher3/e1;

    invoke-direct {v2, p4}, Lcom/android/launcher3/e1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/util/function/Predicate;

    aput-object v0, p0, v1

    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    aput-object v0, p0, p3

    aput-object p1, p0, p2

    const/4 p2, 0x3

    invoke-static {p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    aput-object p1, p0, p2

    invoke-static {p4, p0}, Lcom/android/launcher3/Launcher;->getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getFocusHandler()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    return-object p0
.end method

.method public getFolderBoundingBox()Landroid/graphics/Rect;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageAreaRelativeToDragLayer()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getHiddenAppsPagedView()Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mHiddenAppsPagedView:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    return-object p0
.end method

.method public getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mHiddenAppsView:Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    return-object p0
.end method

.method public getHotseat()Lcom/android/launcher3/Hotseat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    return-object p0
.end method

.method public getModel()Lcom/android/launcher3/LauncherModel;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object p0
.end method

.method public getModelWriter()Lcom/android/launcher3/model/ModelWriter;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    return-object p0
.end method

.method public getNormalOverviewScaleAndOffset()[F
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected getOnBackAnimationCallback()Landroid/window/OnBackAnimationCallback;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x22
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->isInAutoCancelActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/a1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/a1;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/l1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/l1;-><init>(Lcom/android/launcher3/dragndrop/DragController;)V

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->canHandleBack()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lcom/android/launcher3/Launcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$1;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method

.method public getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "+",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mOldConfig:Landroid/content/res/Configuration;

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    return p0
.end method

.method public getOverlayManager()Ll0/b;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    return-object p0
.end method

.method public getOverviewPanel()Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    return-object p0
.end method

.method public getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    :goto_0
    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v2, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntSet;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object p1

    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_3

    aget v6, p1, v5

    invoke-virtual {v1, v6}, Lcom/android/launcher3/util/IntArray;->add(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result v0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget-object p0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p0, :cond_5

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/i1;->a:Lcom/android/launcher3/i1;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    :cond_5
    return-object v2
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    return-object p0
.end method

.method protected getPopupTarget(FF)Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07045a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float v1, v0, v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    const/4 v3, 0x0

    cmpg-float p1, p1, v3

    if-ltz p1, :cond_0

    cmpg-float p1, p2, v3

    if-gez p1, :cond_1

    :cond_0
    div-int/lit8 p1, v2, 0x2

    div-int/lit8 p1, p0, 0x2

    int-to-float p2, p1

    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    sub-float v4, p2, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    int-to-float v2, v2

    int-to-float p0, p0

    sub-float/2addr p0, v1

    add-float/2addr p2, v0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-direct {p1, v3, v4, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public getRotationHelper()Lcom/android/launcher3/states/RotationHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    return-object p0
.end method

.method public getScrimView()Lcom/android/launcher3/views/ScrimView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    return-object p0
.end method

.method public getSearchConfig()Lcom/android/launcher3/allapps/BaseSearchConfig;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mBaseSearchConfig:Lcom/android/launcher3/allapps/BaseSearchConfig;

    return-object p0
.end method

.method public getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public getStateManager()Lcom/android/launcher3/statemanager/StateManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object p0
.end method

.method public getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager;->withDefaultInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    return-object p0
.end method

.method public getStringCache()Lcom/android/launcher3/model/StringCache;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStringCache:Lcom/android/launcher3/model/StringCache;

    return-object p0
.end method

.method public getSupportedShortcuts()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory;",
            ">;"
        }
    .end annotation

    const/16 p0, 0x9

    new-array p0, p0, [Lcom/android/launcher3/popup/SystemShortcut$Factory;

    sget-object v0, Lcom/android/launcher3/popup/SystemShortcut;->WIDGETS:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lcom/nothing/launcher/popup/l;->k:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Lcom/nothing/launcher/popup/l;->l:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/SystemShortcut;->APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Lcom/nothing/launcher/popup/l;->j:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x4

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/launcher3/popup/SystemShortcut;->INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x5

    aput-object v0, p0, v1

    sget-object v0, Lcom/nothing/launcher/popup/l;->i:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x6

    aput-object v0, p0, v1

    sget-object v0, Lcom/nothing/launcher/popup/l;->n:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x7

    aput-object v0, p0, v1

    sget-object v0, Lcom/nothing/launcher/popup/l;->m:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/16 v1, 0x8

    aput-object v0, p0, v1

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public getWorkspace()Lcom/android/launcher3/Workspace;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    return-object p0
.end method

.method protected handleCardResult(IILandroid/content/Intent;Lcom/android/launcher3/util/PendingRequestArgs;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected handleGestureContract(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, Lcom/android/launcher3/GestureNavContract;->fromIntent(Landroid/content/Intent;)Lcom/android/launcher3/GestureNavContract;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    invoke-static {p0, p1}, Lcom/android/launcher3/views/FloatingSurfaceView;->show(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/GestureNavContract;)V

    :cond_0
    return-void
.end method

.method protected inflateCardWidget(Lcom/nothing/launcher/card/s;)Landroid/view/View;
    .locals 0
    .param p1    # Lcom/nothing/launcher/card/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)Z
    .locals 3

    invoke-virtual {p1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getMultiWindowDisplaySize()Lcom/android/launcher3/util/WindowBounds;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDeviceProfileInitiated()V

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/launcher3/celllayout/CellPosMapper$TwoPanelCellPosMapper;

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-direct {p1, v0}, Lcom/android/launcher3/celllayout/CellPosMapper$TwoPanelCellPosMapper;-><init>(I)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/launcher3/celllayout/CellPosMapper;->DEFAULT:Lcom/android/launcher3/celllayout/CellPosMapper;

    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1, p0}, Lcom/android/launcher3/LauncherModel;->getWriter(ZZLcom/android/launcher3/celllayout/CellPosMapper;Lcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/ModelWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    return v2
.end method

.method protected initDragController()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/dragndrop/LauncherDragController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/LauncherDragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    return-void
.end method

.method public invalidateParent(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object p0

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public isDraggingEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz p0, :cond_0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTouchInProgress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/Launcher;->mTouchInProgress:Z

    return p0
.end method

.method public isWorkspaceLoading()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    return p0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAllAppsTransition(F)V
    .locals 0

    return-void
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-interface {p0}, Ll0/b;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOnBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object p0

    invoke-interface {p0}, Landroid/window/OnBackAnimationCallback;->onBackInvoked()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    sget-boolean v0, Lcom/android/launcher3/Launcher;->sIsNewProcess:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/launcher3/util/LockedUserState;->get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/LockedUserState;->isUserUnlockedAtLauncherStartup()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->COLD:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->COLD_DEVICE_REBOOTING:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->WARM:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->createStartupLatencyLogger(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher3/Launcher;->sIsNewProcess:Z

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_ACTIVITY_ON_CREATE:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const-string v0, "DisplayWorkspaceFirstFrame"

    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    const-string v0, "DisplayAllApps"

    invoke-static {v0, v3}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    :cond_2
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const/4 v4, 0x5

    const-string v5, "Launcher.onCreate"

    invoke-virtual {v0, v5, v4}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    new-instance v5, Lcom/android/launcher3/states/RotationHelper;

    invoke-direct {v5, p0}, Lcom/android/launcher3/states/RotationHelper;-><init>(Lcom/android/launcher3/BaseActivity;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)Z

    invoke-virtual {v5, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->addOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->createAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->initDragController()V

    new-instance v4, Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-direct {v4, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    new-instance v4, Lcom/android/launcher3/statemanager/StateManager;

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-direct {v4, p0, v5}, Lcom/android/launcher3/statemanager/StateManager;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)V

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->createOnboardingPrefs(Landroid/content/SharedPreferences;)Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;

    new-instance v4, Lcom/android/launcher3/allapps/BaseSearchConfig;

    invoke-direct {v4}, Lcom/android/launcher3/allapps/BaseSearchConfig;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mBaseSearchConfig:Lcom/android/launcher3/allapps/BaseSearchConfig;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->setupViews()V

    new-instance v4, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v4, p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->createAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v4}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->startListening()V

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v4}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->startScrollableObserver()V

    new-instance v4, Lcom/android/launcher3/popup/PopupDataProvider;

    new-instance v5, Lcom/android/launcher3/z0;

    invoke-direct {v5, p0}, Lcom/android/launcher3/z0;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-direct {v4, v5}, Lcom/android/launcher3/popup/PopupDataProvider;-><init>(Ljava/util/function/Consumer;)V

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    sget-object v4, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v4, p0}, Lcom/android/launcher3/util/ActivityTracker;->handleCreate(Lcom/android/launcher3/BaseActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    const-string v5, "launcher.state"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->restoreState(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    if-eqz p1, :cond_4

    const-string v5, "launcher.current_screen_ids"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v5}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

    invoke-virtual {v5}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logWorkspaceLoadStartTime()Lcom/android/launcher3/logging/StartupLatencyLogger;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v5, p0, v3}, Lcom/android/launcher3/LauncherModel;->addCallbacksAndLoad(Lcom/android/launcher3/model/BgDataModel$Callbacks;Z)Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/p0;

    invoke-direct {v4, v3}, Lcom/android/launcher3/p0;-><init>(Ljava/lang/Boolean;)V

    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_5
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setDefaultKeyMode(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->initPowerManager()V

    sget-object v3, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/ScreenOnTracker;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/ScreenOnTracker;->addListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v3

    const v4, 0x7f0402a9

    invoke-static {p0, v4}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v3, :cond_7

    invoke-interface {v3, p1}, Lcom/android/launcher3/LauncherCallbacks;->onCreate(Landroid/os/Bundle;)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDefaultOverlay()Ll0/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    sget-object p1, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    const-class v3, Li0/c;

    invoke-virtual {p1, p0, v3, v1}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Li0/f;Ljava/lang/Class;Z)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/states/RotationHelper;->initialize()V

    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/pm/UserCache;

    new-instance v0, Lcom/android/launcher3/s0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/s0;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/pm/UserCache;->addUserChangeListener(Ljava/lang/Runnable;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mUserChangedCallbackCloseable:Lcom/android/launcher3/util/SafeCloseable;

    sget-boolean p1, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_8
    const p1, 0x7f120124

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SHOW_DOT_PAGINATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0e010c

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onDeferredResumed()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->logStopAndResume(Z)V

    sget-object v1, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->validateModelDataOnResume()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-static {v1}, Lcom/android/launcher3/notification/NotificationListener;->addNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setActivityResumed(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDestroy()V

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ActivityTracker;->onActivityDestroyed(Lcom/android/launcher3/BaseActivity;)V

    sget-object v0, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ScreenOnTracker;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/ScreenOnTracker;->removeListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->removeFolderListeners()V

    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->removePluginListener(Li0/f;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/states/RotationHelper;->destroy()V

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->stopScrollableObserver()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->clearPendingBinds()V

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->removeOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-interface {v0, p0}, Ll0/b;->onActivityDestroyed(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mUserChangedCallbackCloseable:Lcom/android/launcher3/util/SafeCloseable;

    invoke-interface {p0}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-interface {v0}, Ll0/b;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/app/Activity;->closeContextMenu()V

    return-void
.end method

.method public onDragLayerHierarchyChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->updateDisallowBack()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->setCurrentTransitionRequest(I)V

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :cond_0
    return-void
.end method

.method protected onHandleConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->dispatchDeviceProfileChanged()V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->reapplyUi()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->recreateControllers()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->rebindCallbacks()V

    return-void
.end method

.method public onIdpChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onHandleConfigurationChanged()V

    return-void
.end method

.method public onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZ)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    new-instance p1, Lcom/android/launcher3/util/IntSet;

    invoke-direct {p1}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->clearPendingBinds()V

    new-instance p1, Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-direct {p1, p2}, Lcom/android/launcher3/util/ViewOnDrawExecutor;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->enableDeferUpdates(I)V

    new-instance v0, Lcom/android/launcher3/q0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/q0;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->onLoadAnimationCompleted()V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachTo(Lcom/android/launcher3/Launcher;)V

    sget-boolean p1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const-string p2, "DisplayWorkspaceFirstFrame"

    invoke-static {p2, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logCardinality(I)Lcom/android/launcher3/logging/StartupLatencyLogger;

    move-result-object p1

    if-eqz p4, :cond_3

    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/Launcher$8;

    invoke-direct {p2, p0}, Lcom/android/launcher3/Launcher$8;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->closeOpenViews()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x33

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedActions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    iget v2, v1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->keyCode:I

    if-ne v2, p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->invokeFromKeyboard(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->openWidgets(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    return v1

    :cond_2
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return v1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x52

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->closeOpenViews()V

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TaplTarget"

    const-string p2, "Opening options popup on key up"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, p1}, Lcom/android/launcher3/Launcher;->showDefaultOptions(FF)V

    :cond_1
    return v0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOnBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object p0

    invoke-interface {p0}, Landroid/window/OnBackAnimationCallback;->onBackInvoked()V

    return v0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->dispatchDeviceProfileChanged()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 9

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launcher.onNewIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaplTarget"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "Launcher.onNewIntent"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v4, 0x400000

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sget-object v6, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/util/ActivityTracker;->handleNewIntent(Lcom/android/launcher3/BaseActivity;)Z

    move-result v7

    if-eqz v5, :cond_a

    const-string v5, "Launcher"

    if-nez v7, :cond_5

    const/16 v6, 0x100

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Launcher;->closeOpenViewsExcept(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNewIntent Current state: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v6}, Lcom/android/launcher3/statemanager/StateManager;->shouldAnimateStateChange()Z

    move-result v8

    invoke-virtual {v6, v5, v8}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_3
    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    :cond_4
    if-eqz v4, :cond_7

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/x0;

    invoke-direct {v4, v1}, Lcom/android/launcher3/x0;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v1, v4, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v1, v4, :cond_7

    :cond_6
    const-string v1, " Home Button is not Work , need clear callbacks ! "

    invoke-static {v5, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/launcher3/util/ActivityTracker;->clearCallbacks()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->shouldAnimateStateChange()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v1, :cond_8

    invoke-interface {v1, v7}, Lcom/android/launcher3/LauncherCallbacks;->onHomeIntent(Z)V

    :cond_8
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isForceInvisible()Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    move v2, v3

    :goto_3
    invoke-interface {v1, v2}, Ll0/b;->j(Z)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->handleGestureContract(Landroid/content/Intent;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ALL_APPS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->showAllAppsFromIntent(Z)V

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "launcher.intent_action_all_apps_toggle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->toggleAllAppsFromIntent(Z)V

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.SHOW_WORK_APPS"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->showAllAppsWorkTabFromIntent(Z)V

    :cond_d
    :goto_4
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onOverlayVisibilityChanged(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lt1/k$b;->build()Lt1/k;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPELEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPERIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_1
    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public onPageEndTransition()V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->pauseModelPush(I)V

    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onPause()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lb3/a;->b(IJ)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    iput-wide v1, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DropTargetBar;->animateToVisibility(Z)V

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-interface {v0, p0}, Ll0/b;->onActivityPaused(Landroid/app/Activity;)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setActivityResumed(Z)V

    return-void
.end method

.method public onPluginConnected(Li0/c;Landroid/content/Context;)V
    .locals 0

    new-instance p2, Lcom/android/launcher3/k1;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/k1;-><init>(Lcom/android/launcher3/Launcher;Li0/c;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/Launcher;->switchOverlay(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Li0/d;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Li0/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->onPluginConnected(Li0/c;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Li0/c;)V
    .locals 0

    new-instance p1, Lcom/android/launcher3/j1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/j1;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->switchOverlay(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Li0/d;)V
    .locals 0

    check-cast p1, Li0/c;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onPluginDisconnected(Li0/c;)V

    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f120061

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d

    const/16 v4, 0x1000

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f120283

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x33

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedActions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/d1;

    invoke-direct {v2, v0}, Lcom/android/launcher3/d1;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    const v2, 0x7f120124

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Lcom/android/launcher3/util/IntSet;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/launcher3/y0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/y0;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "Launcher.onResume"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onResume()V

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->scheduleDeferredCheck()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-interface {v1, p0}, Ll0/b;->onActivityResumed(Landroid/app/Activity;)V

    :goto_0
    const/4 v1, 0x0

    const v2, 0x176375

    invoke-static {p0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragView;->removeAllViews(Lcom/android/launcher3/views/ActivityContext;)V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/launcher3/Launcher$NonConfigInstance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/Launcher$NonConfigInstance;-><init>(Lcom/android/launcher3/Launcher$1;)V

    new-instance v1, Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mOldConfig:Landroid/content/res/Configuration;

    invoke-direct {v1, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, v0, Lcom/android/launcher3/Launcher$NonConfigInstance;->config:Landroid/content/res/Configuration;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v0

    const-string v1, "launcher.current_screen_ids"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->FOLDER_STATE:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->FOLDER_SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState: force change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to NORMAL state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher"

    invoke-static {v2, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget v0, v0, Lcom/android/launcher3/LauncherState;->ordinal:I

    const-string v1, "launcher.state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    const-string v1, "launcher.widget_panel"

    if-eqz v0, :cond_2

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isForceInvisible()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    const v1, 0x176274

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->finishAutoCancelActionMode()Z

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v0, :cond_4

    const-string v1, "launcher.request_args"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    iget v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    const-string v1, "launcher.request_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v0, :cond_5

    const-string v1, "launcher.activity_result"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHiddenAppsPagedView:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    const-string v1, "launcher.drawer.page"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-interface {v0, p0, p1}, Ll0/b;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onScreenOnChanged(Z)V
    .locals 1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onUiChangedWhileSleeping()V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "Launcher.onStart"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onStart()V

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-interface {v1, p0}, Ll0/b;->onActivityStarted(Landroid/app/Activity;)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setActivityStarted(Z)V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onStateBack()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherState;->onBackPressed(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public onStateSetEnd(Lcom/android/launcher3/LauncherState;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setStateIsNormal(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    sget v4, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    invoke-virtual {p1, v4}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->finishAutoCancelActionMode()Z

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->removeActivityFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget v0, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {p0, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    if-ne p1, v1, :cond_1

    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/states/RotationHelper;->setCurrentStateRequest(I)V

    :cond_1
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrevLauncherState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsExitEvent()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/c1;

    invoke-direct {v1, v0}, Lcom/android/launcher3/c1;-><init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    :cond_2
    return-void
.end method

.method public bridge synthetic onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onStateSetEnd(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateSetStart(Lcom/android/launcher3/LauncherState;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStateSetStart(Lcom/android/launcher3/statemanager/BaseState;)V

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->scheduleDeferredCheck()V

    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->addActivityFlags(I)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_2

    :cond_1
    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->pauseModelPush(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->setCurrentStateRequest(I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setShouldAutoHide(Z)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPrevLauncherState:Lcom/android/launcher3/LauncherState;

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    if-nez p1, :cond_3

    new-instance p1, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {p1}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsEntryEvent()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lt1/k$b;->build()Lt1/k;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsEntryEvent()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->updateDisallowBack()V

    return-void
.end method

.method public bridge synthetic onStateSetStart(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onStateSetStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStop()V

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->checkIfOverlayStillDeferred()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Ll0/b;

    invoke-interface {v0, p0}, Ll0/b;->onActivityStopped(Landroid/app/Activity;)V

    :goto_0
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->hideKeyboard()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->logStopAndResume(Z)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setActivityStarted(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->removeNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    invoke-static {}, Lcom/android/launcher3/views/FloatingIconView;->resetIconLoadResult()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->isScreenOff()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onTrimMemory(I)V

    const/16 p0, 0x14

    if-lt p1, p0, :cond_0

    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    :cond_0
    return-void
.end method

.method public onWidgetsTransition(F)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetWorkspaceScale:F

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    sget-object v0, Lcom/android/launcher3/Launcher;->WORKSPACE_WIDGET_SCALE:Landroid/util/FloatProperty;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v0, Lcom/android/launcher3/Launcher;->HOTSEAT_WIDGET_SCALE:Landroid/util/FloatProperty;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public pauseExpensiveViewUpdates()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-interface {v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->pauseAnimations()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/m1;->a:Lcom/android/launcher3/m1;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method public preAddApps()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter;->commitDelete()V

    const/16 v0, 0x80

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/launcher3/q1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/q1;-><init>(Lcom/android/launcher3/AbstractFloatingView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/util/PackageUserKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherModel;->refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/util/PackageUserKey;)V

    return-void
.end method

.method public removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z
    .locals 3
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0, p2, p4}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    instance-of v0, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/android/launcher3/model/data/FolderInfo;

    instance-of p4, p1, Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz p4, :cond_2

    move-object p4, p1

    check-cast p4, Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p4}, Lcom/android/launcher3/folder/BaseFolderIcon;->removeListeners()V

    :cond_2
    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p4, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;)V

    goto :goto_1

    :cond_3
    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_5

    check-cast p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object p0

    invoke-virtual {p1, p2, p0, p4}, Lcom/android/launcher3/model/ModelWriter;->deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherWidgetHolder;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public resumeExpensiveViewUpdates()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-interface {v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->skipAnimationsToEnd()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/n1;->a:Lcom/android/launcher3/n1;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method public returnToHomescreen()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->returnToHomescreen()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public setLauncherOverlay(Ll0/b$a;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setLauncherOverlay(Ll0/b$a;)V

    return-void
.end method

.method public setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setPagesToBindSynchronously(Lcom/android/launcher3/util/IntSet;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/util/IntSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPagesToBindSynchronously:Lcom/android/launcher3/util/IntSet;

    return-void
.end method

.method public setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    return-void
.end method

.method protected setupViews()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_VIEW_INFLATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    const v0, 0x7f0e00f6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->inflateRootView(I)V

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->updateDisallowBack()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    const v0, 0x7f0b0156

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getFocusIndicatorHelper()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const v1, 0x7f0b044f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->initParentViews(Landroid/view/View;)V

    const v0, 0x7f0b02bd

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    const v0, 0x7f0b01dc

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Hotseat;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setWorkspace(Lcom/android/launcher3/Workspace;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->setup(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/Workspace;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->lockWallpaperToDefaultPage()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const v1, 0x7f0b0157

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DropTargetBar;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    const v0, 0x7f0b01d3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHiddenAppsPagedView:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    const v0, 0x7f0b01d0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHiddenAppsView:Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setAllAppsTransitionController(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    const v0, 0x7f0b0320

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ScrimView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DropTargetBar;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mHiddenAppsPagedView:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setupViews(Lcom/android/launcher3/views/ScrimView;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHiddenAppsPagedView:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHiddenAppsPagedView:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    invoke-virtual {v0}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->n()V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SHOW_DOT_PAGINATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setShouldAutoHide(Z)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    const v1, 0x7f0402a9

    invoke-static {p0, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, -0x1000000

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-interface {v0, p0}, Lcom/android/launcher3/pageindicators/PageIndicator;->setPaintColor(I)V

    :cond_1
    return-void
.end method

.method protected showAllAppsFromIntent(Z)V
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    return-void
.end method

.method public showDefaultOptions(FF)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->getPopupTarget(FF)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->getOptions(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/views/ActivityContext;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    new-instance v7, Lcom/android/launcher3/w0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/w0;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {p0, v7}, Lcom/android/launcher3/BaseDraggingActivity;->addOnResumeCallback(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

    :cond_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/views/ActivityContext;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of p2, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    new-instance p2, Lcom/android/launcher3/r1;

    invoke-direct {p2, p1}, Lcom/android/launcher3/r1;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    :cond_2
    return-object p0
.end method

.method public startBinding()V
    .locals 4

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "startBinding"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startBinding closeOpenViews needAnim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher"

    invoke-static {v3, v2}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x2289d8b

    invoke-static {p0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->clearDropTargets()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->removeAllWorkspaceScreens()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->clearViews()V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/Hotseat;->resetLayout(Z)V

    :cond_0
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p7}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Landroid/content/ActivityNotFoundException;

    invoke-direct {p0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw p0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "source"

    const-string v0, "launcher-search"

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz p4, :cond_1

    invoke-interface {p4, p1, p2, p3}, Lcom/android/launcher3/LauncherCallbacks;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)Z

    move-result p4

    if-nez p4, :cond_2

    :cond_1
    const/4 p4, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    :cond_2
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public supportsAdaptiveIconAnimation(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected toggleAllAppsFromIntent(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->showAllAppsFromIntent(Z)V

    :goto_0
    return-void
.end method

.method public updateOpenFolderPosition([ILandroid/graphics/Rect;II)V
    .locals 7

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p0

    iget-boolean v5, v4, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int v6, v5, p3

    mul-int/lit8 p0, p0, 0x4

    if-ge v6, p0, :cond_0

    sub-int/2addr v5, p3

    div-int/lit8 v1, v5, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-lt p3, p0, :cond_1

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p0

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-lt p4, p0, :cond_2

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p0, p2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile;->getAbsoluteOpenFolderBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, p3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget p2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p4

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_1
    aput v1, p1, v0

    aput p0, p1, v2

    return-void
.end method

.method public useFadeOutAnimationForLauncherStart(Landroid/os/CancellationSignal;)V
    .locals 0

    return-void
.end method
