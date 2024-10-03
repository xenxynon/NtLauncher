.class public Lcom/android/quickstep/TouchInteractionService$TISBinder;
.super Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TouchInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TISBinder"
.end annotation


# instance fields
.field private mOnOverviewTargetChangeListener:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTis:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/quickstep/TouchInteractionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mOnOverviewTargetChangeListener:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mTis:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/TouchInteractionService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic R(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/a;Lcom/android/wm/shell/bubbles/f;Lcom/android/wm/shell/splitscreen/a;Lc1/a;Lf1/a;Ld1/a;Lcom/android/wm/shell/recents/a;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lw0/a;La1/a;Lo0/b;Lb1/a;Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static/range {p0 .. p13}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onInitialize$0(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/a;Lcom/android/wm/shell/bubbles/f;Lcom/android/wm/shell/splitscreen/a;Lc1/a;Lf1/a;Ld1/a;Lcom/android/wm/shell/recents/a;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lw0/a;La1/a;Lo0/b;Lb1/a;Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic S(ZLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onOverviewShown$5(ZLcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic T(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onTaskbarToggled$2(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic U(ZZLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onOverviewHidden$6(ZZLcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic V(IIIZLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$disable$19(IIIZLcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void
.end method

.method public static synthetic W(Lcom/android/quickstep/TouchInteractionService$TISBinder;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantAvailable$9(ZZ)V

    return-void
.end method

.method public static synthetic X(IZLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onRotationProposal$18(IZLcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void
.end method

.method public static synthetic Y(Lcom/android/quickstep/GestureState;)Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$setSwipeUpProxy$24(Lcom/android/quickstep/GestureState;)Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z(Ljava/util/function/Consumer;Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$executeForTaskbarManager$22(Ljava/util/function/Consumer;Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic a0(Lcom/android/quickstep/TouchInteractionService$TISBinder;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/a;Lcom/android/wm/shell/bubbles/f;Lcom/android/wm/shell/splitscreen/a;Lc1/a;Lf1/a;Ld1/a;Lcom/android/wm/shell/recents/a;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lw0/a;La1/a;Lo0/b;Lb1/a;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onInitialize$1(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/a;Lcom/android/wm/shell/bubbles/f;Lcom/android/wm/shell/splitscreen/a;Lc1/a;Lf1/a;Ld1/a;Lcom/android/wm/shell/recents/a;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lw0/a;La1/a;Lo0/b;Lb1/a;)V

    return-void
.end method

.method public static synthetic b0(FLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onNavButtonsDarkIntensityChanged$21(FLcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void
.end method

.method public static synthetic c0(Lcom/android/quickstep/TouchInteractionService$TISBinder;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$executeForTaskbarManager$23(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic d0(Landroid/graphics/Region;Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onActiveNavBarRegionChanges$14(Landroid/graphics/Region;Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic e0(IILcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onSystemBarAttributesChanged$20(IILcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void
.end method

.method private executeForTaskbarManager(Ljava/util/function/Consumer;)V
    .locals 2
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/taskbar/TaskbarManager;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/j9;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/j9;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private executeForTouchInteractionService(Ljava/util/function/Consumer;)V
    .locals 0
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/TouchInteractionService;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mTis:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TouchInteractionService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f0(ZLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$enterStageSplitFromRunningApp$16(ZLcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic g0(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onOverviewToggle$4(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic h0(FLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantVisibilityChanged$10(FLcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic i0(ILcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onSystemUiStateChanged$12(ILcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic j0(ZLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantAvailable$7(ZLcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void
.end method

.method public static synthetic k0(Lcom/android/quickstep/TouchInteractionService$TISBinder;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantVisibilityChanged$11(F)V

    return-void
.end method

.method public static synthetic l0(Lcom/android/quickstep/TouchInteractionService$TISBinder;ZZLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantAvailable$8(ZZLcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method private static synthetic lambda$disable$19(IIIZLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarManager;->disableNavBarElements(IIIZ)V

    return-void
.end method

.method private static synthetic lambda$enterStageSplitFromRunningApp$16(ZLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->access$700(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->enterStageSplitFromRunningApp(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$executeForTaskbarManager$22(Ljava/util/function/Consumer;Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->access$200(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$executeForTaskbarManager$23(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/w8;

    invoke-direct {v0, p1}, Lcom/android/quickstep/w8;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onActiveNavBarRegionChanges$14(Landroid/graphics/Region;Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->access$500(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setDeferredGestureRegion(Landroid/graphics/Region;)V

    return-void
.end method

.method private synthetic lambda$onActiveNavBarRegionChanges$15(Landroid/graphics/Region;)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/t8;

    invoke-direct {v0, p1}, Lcom/android/quickstep/t8;-><init>(Landroid/graphics/Region;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onAssistantAvailable$7(ZLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->onLongPressHomeEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onAssistantAvailable$8(ZZLcom/android/quickstep/TouchInteractionService;)V
    .locals 1

    invoke-static {p3}, Lcom/android/quickstep/TouchInteractionService;->access$500(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setAssistantAvailable(Z)V

    invoke-static {p3}, Lcom/android/quickstep/TouchInteractionService;->access$900(Lcom/android/quickstep/TouchInteractionService;)V

    new-instance p1, Lcom/android/quickstep/y8;

    invoke-direct {p1, p2}, Lcom/android/quickstep/y8;-><init>(Z)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onAssistantAvailable$9(ZZ)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/u8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/quickstep/u8;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;ZZ)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onAssistantVisibilityChanged$10(FLcom/android/quickstep/TouchInteractionService;)V
    .locals 1

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->access$500(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setAssistantVisibility(F)V

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->access$900(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method private synthetic lambda$onAssistantVisibilityChanged$11(F)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/o8;

    invoke-direct {v0, p1}, Lcom/android/quickstep/o8;-><init>(F)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onInitialize$0(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/a;Lcom/android/wm/shell/bubbles/f;Lcom/android/wm/shell/splitscreen/a;Lc1/a;Lf1/a;Ld1/a;Lcom/android/wm/shell/recents/a;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lw0/a;La1/a;Lo0/b;Lb1/a;Lcom/android/quickstep/TouchInteractionService;)V
    .locals 16

    move-object/from16 v0, p13

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/quickstep/SystemUiProxy;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-virtual/range {v2 .. v15}, Lcom/android/quickstep/SystemUiProxy;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/a;Lcom/android/wm/shell/bubbles/f;Lcom/android/wm/shell/splitscreen/a;Lc1/a;Lf1/a;Ld1/a;Lcom/android/wm/shell/recents/a;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lw0/a;La1/a;Lo0/b;Lb1/a;)V

    const-string v1, "TISBinder#onInitialize()"

    invoke-static {v0, v1}, Lcom/android/quickstep/TouchInteractionService;->access$1000(Lcom/android/quickstep/TouchInteractionService;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/quickstep/TouchInteractionService;->access$1100(Lcom/android/quickstep/TouchInteractionService;Z)V

    return-void
.end method

.method private synthetic lambda$onInitialize$1(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/a;Lcom/android/wm/shell/bubbles/f;Lcom/android/wm/shell/splitscreen/a;Lc1/a;Lf1/a;Ld1/a;Lcom/android/wm/shell/recents/a;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lw0/a;La1/a;Lo0/b;Lb1/a;)V
    .locals 15

    new-instance v14, Lcom/android/quickstep/v8;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/quickstep/v8;-><init>(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/a;Lcom/android/wm/shell/bubbles/f;Lcom/android/wm/shell/splitscreen/a;Lc1/a;Lf1/a;Ld1/a;Lcom/android/wm/shell/recents/a;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lw0/a;La1/a;Lo0/b;Lb1/a;)V

    move-object v0, p0

    invoke-direct {p0, v14}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onNavButtonsDarkIntensityChanged$21(FLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->onNavButtonsDarkIntensityChanged(F)V

    return-void
.end method

.method private static synthetic lambda$onOverviewHidden$6(ZZLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/android/quickstep/TouchInteractionService;->access$300(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onOverviewShown$5(ZLcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "recentapps"

    invoke-static {p0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->access$300(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->access$300(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p0

    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    return-void
.end method

.method private static synthetic lambda$onOverviewToggle$4(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 1

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->access$500(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "recentapps"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->access$300(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    return-void
.end method

.method private static synthetic lambda$onRotationProposal$18(IZLcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->onRotationProposal(IZ)V

    return-void
.end method

.method private static synthetic lambda$onSystemBarAttributesChanged$20(IILcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->onSystemBarAttributesChanged(II)V

    return-void
.end method

.method private static synthetic lambda$onSystemUiStateChanged$12(ILcom/android/quickstep/TouchInteractionService;)V
    .locals 2

    const-string v0, "TouchInteractionService"

    const-string v1, "TISBinder.onSystemUiStateChanged"

    invoke-static {v0, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->access$500(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result v0

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->access$500(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setSystemUiFlags(I)V

    invoke-static {p1, v0}, Lcom/android/quickstep/TouchInteractionService;->access$800(Lcom/android/quickstep/TouchInteractionService;I)V

    return-void
.end method

.method private synthetic lambda$onSystemUiStateChanged$13(I)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/p8;

    invoke-direct {v0, p1}, Lcom/android/quickstep/p8;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onTaskbarToggled$2(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->access$200(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->toggleTaskbarStash()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTaskbarToggled$3()V
    .locals 1

    sget-object v0, Lcom/android/quickstep/c9;->g:Lcom/android/quickstep/c9;

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$preloadOverviewForSUWAllSet$17(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/quickstep/TouchInteractionService;->access$600(Lcom/android/quickstep/TouchInteractionService;ZZ)V

    return-void
.end method

.method private static synthetic lambda$setSwipeUpProxy$24(Lcom/android/quickstep/GestureState;)Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic m0(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onTaskbarToggled$3()V

    return-void
.end method

.method public static synthetic n0(Lcom/android/quickstep/TouchInteractionService$TISBinder;Landroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onActiveNavBarRegionChanges$15(Landroid/graphics/Region;)V

    return-void
.end method

.method public static synthetic o0(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$preloadOverviewForSUWAllSet$17(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method public static synthetic p0(Lcom/android/quickstep/TouchInteractionService$TISBinder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onSystemUiStateChanged$13(I)V

    return-void
.end method


# virtual methods
.method public disable(IIIZ)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/r8;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/quickstep/r8;-><init>(IIIZ)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public enterStageSplitFromRunningApp(Z)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    new-instance v0, Lcom/android/quickstep/a9;

    invoke-direct {v0, p1}, Lcom/android/quickstep/a9;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getOverviewCommandHelper()Lcom/android/quickstep/OverviewCommandHelper;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mTis:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TouchInteractionService;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->access$300(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p0

    return-object p0
.end method

.method public getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mTis:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TouchInteractionService;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->access$200(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object p0

    return-object p0
.end method

.method public onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/h9;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/h9;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Landroid/graphics/Region;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAssistantAvailable(ZZ)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/k9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/k9;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/x8;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/x8;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;F)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInitialize(Landroid/os/Bundle;)V
    .locals 17
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "extra_sysui_proxy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v4

    const-string v1, "extra_shell_pip"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/pip/a$a;->R(Landroid/os/IBinder;)Lcom/android/wm/shell/pip/a;

    move-result-object v5

    const-string v1, "extra_shell_bubbles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/bubbles/f$a;->R(Landroid/os/IBinder;)Lcom/android/wm/shell/bubbles/f;

    move-result-object v6

    const-string v1, "extra_shell_split_screen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/a$a;->R(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/a;

    move-result-object v7

    const-string v1, "extra_shell_one_handed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lc1/a$a;->R(Landroid/os/IBinder;)Lc1/a;

    move-result-object v8

    const-string v1, "extra_shell_shell_transitions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lf1/a$a;->R(Landroid/os/IBinder;)Lf1/a;

    move-result-object v9

    const-string v1, "extra_shell_starting_window"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ld1/a$a;->R(Landroid/os/IBinder;)Ld1/a;

    move-result-object v10

    const-string v1, "unlock_animation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    move-result-object v12

    const-string v1, "extra_shell_recent_tasks"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/recents/a$a;->R(Landroid/os/IBinder;)Lcom/android/wm/shell/recents/a;

    move-result-object v11

    const-string v1, "extra_shell_back_animation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lw0/a$a;->R(Landroid/os/IBinder;)Lw0/a;

    move-result-object v13

    const-string v1, "extra_shell_desktop_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, La1/a$a;->R(Landroid/os/IBinder;)La1/a;

    move-result-object v14

    const-string v1, "extra_unfold_animation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lo0/b$a;->R(Landroid/os/IBinder;)Lo0/b;

    move-result-object v15

    const-string v1, "extra_shell_drag_and_drop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lb1/a$a;->R(Landroid/os/IBinder;)Lb1/a;

    move-result-object v16

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/i9;

    move-object v2, v1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/quickstep/i9;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/a;Lcom/android/wm/shell/bubbles/f;Lcom/android/wm/shell/splitscreen/a;Lc1/a;Lf1/a;Ld1/a;Lcom/android/wm/shell/recents/a;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lw0/a;La1/a;Lo0/b;Lb1/a;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService;->access$102(Z)Z

    return-void
.end method

.method public onNavButtonsDarkIntensityChanged(F)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/n8;

    invoke-direct {v0, p1}, Lcom/android/quickstep/n8;-><init>(F)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onNavigationBarSurface(Landroid/view/SurfaceControl;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    :cond_0
    return-void
.end method

.method public onOverviewHidden(ZZ)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    new-instance v0, Lcom/android/quickstep/b9;

    invoke-direct {v0, p1, p2}, Lcom/android/quickstep/b9;-><init>(ZZ)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    new-instance v0, Lcom/android/quickstep/z8;

    invoke-direct {v0, p1}, Lcom/android/quickstep/z8;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected onOverviewTargetChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mOnOverviewTargetChangeListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mOnOverviewTargetChangeListener:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onOverviewToggle()V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "Main"

    const-string v1, "onOverviewToggle"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/d9;->g:Lcom/android/quickstep/d9;

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onRotationProposal(IZ)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/s8;

    invoke-direct {v0, p1, p2}, Lcom/android/quickstep/s8;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->INSTANCE:Lcom/android/quickstep/util/ProxyScreenStatusProvider;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/quickstep/l9;

    invoke-direct {v1, v0}, Lcom/android/quickstep/l9;-><init>(Lcom/android/quickstep/util/ProxyScreenStatusProvider;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScreenTurningOff()V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->INSTANCE:Lcom/android/quickstep/util/ProxyScreenStatusProvider;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/quickstep/m9;

    invoke-direct {v1, v0}, Lcom/android/quickstep/m9;-><init>(Lcom/android/quickstep/util/ProxyScreenStatusProvider;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->INSTANCE:Lcom/android/quickstep/util/ProxyScreenStatusProvider;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/quickstep/n9;

    invoke-direct {v1, v0}, Lcom/android/quickstep/n9;-><init>(Lcom/android/quickstep/util/ProxyScreenStatusProvider;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSystemBarAttributesChanged(II)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/q8;

    invoke-direct {v0, p1, p2}, Lcom/android/quickstep/q8;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSystemUiStateChanged(I)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/g9;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/g9;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskbarToggled()V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_KEYBOARD_TASKBAR_TOGGLE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/m8;

    invoke-direct {v1, p0}, Lcom/android/quickstep/m8;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public preloadOverviewForSUWAllSet()V
    .locals 1

    sget-object v0, Lcom/android/quickstep/e9;->g:Lcom/android/quickstep/e9;

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTouchInteractionService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setGestureBlockedTaskId(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mTis:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TouchInteractionService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->access$500(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setGestureBlockingTaskId(I)V

    return-void
.end method

.method public setOverviewTargetChangeListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mOnOverviewTargetChangeListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setSwipeUpProxy(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/quickstep/GestureState;",
            "Lcom/android/launcher3/anim/AnimatedFloat;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->mTis:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TouchInteractionService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/quickstep/f9;->a:Lcom/android/quickstep/f9;

    :goto_0
    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->access$402(Lcom/android/quickstep/TouchInteractionService;Ljava/util/function/Function;)Ljava/util/function/Function;

    return-void
.end method
