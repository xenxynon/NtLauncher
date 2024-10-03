.class public Lcom/android/launcher3/taskbar/TaskbarControllers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;,
        Lcom/android/launcher3/taskbar/TaskbarControllers$BackgroundRendererController;
    }
.end annotation


# instance fields
.field public final bubbleControllers:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;",
            ">;"
        }
    .end annotation
.end field

.field public final keyboardQuickSwitchController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

.field private mAreAllControllersInitialized:Z

.field private mBackgroundRendererControllers:[Lcom/android/launcher3/taskbar/TaskbarControllers$BackgroundRendererController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCornerRoundness:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mPostInitCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

.field public final navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

.field public final rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

.field public final stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

.field public final taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field public final taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

.field public final taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

.field public final taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field public final taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

.field public final taskbarEduTooltipController:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

.field public final taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

.field public final taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

.field public final taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

.field public final taskbarOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

.field public final taskbarPinningController:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

.field public final taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

.field public final taskbarRecentAppsController:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

.field public final taskbarScrimViewController:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

.field public final taskbarSpringOnStashController:Lcom/android/launcher3/taskbar/TaskbarSpringOnStashController;

.field public final taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

.field public final taskbarTranslationController:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

.field public final taskbarUnfoldAnimationController:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

.field public final taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

.field public uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voiceInteractionWindowController:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/systemui/shared/rotation/RotationButtonController;Lcom/android/launcher3/taskbar/TaskbarDragLayerController;Lcom/android/launcher3/taskbar/TaskbarViewController;Lcom/android/launcher3/taskbar/TaskbarScrimViewController;Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;Lcom/android/launcher3/taskbar/TaskbarKeyguardController;Lcom/android/launcher3/taskbar/StashedHandleViewController;Lcom/android/launcher3/taskbar/TaskbarStashController;Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;Lcom/android/launcher3/taskbar/TaskbarPopupController;Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarInsetsController;Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;Lcom/android/launcher3/taskbar/TaskbarTranslationController;Lcom/android/launcher3/taskbar/TaskbarSpringOnStashController;Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;Ljava/util/Optional;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
            "Lcom/android/launcher3/taskbar/TaskbarDragController;",
            "Lcom/android/launcher3/taskbar/TaskbarNavButtonController;",
            "Lcom/android/launcher3/taskbar/NavbarButtonsViewController;",
            "Lcom/android/systemui/shared/rotation/RotationButtonController;",
            "Lcom/android/launcher3/taskbar/TaskbarDragLayerController;",
            "Lcom/android/launcher3/taskbar/TaskbarViewController;",
            "Lcom/android/launcher3/taskbar/TaskbarScrimViewController;",
            "Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;",
            "Lcom/android/launcher3/taskbar/TaskbarKeyguardController;",
            "Lcom/android/launcher3/taskbar/StashedHandleViewController;",
            "Lcom/android/launcher3/taskbar/TaskbarStashController;",
            "Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;",
            "Lcom/android/launcher3/taskbar/TaskbarPopupController;",
            "Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;",
            "Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;",
            "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;",
            "Lcom/android/launcher3/taskbar/TaskbarInsetsController;",
            "Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;",
            "Lcom/android/launcher3/taskbar/TaskbarTranslationController;",
            "Lcom/android/launcher3/taskbar/TaskbarSpringOnStashController;",
            "Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;",
            "Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;",
            "Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;",
            "Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mBackgroundRendererControllers:[Lcom/android/launcher3/taskbar/TaskbarControllers$BackgroundRendererController;

    sget-object v2, Lcom/android/launcher3/taskbar/TaskbarUIController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;

    iput-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mPostInitCallbacks:Ljava/util/List;

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    new-instance v1, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v2, Lcom/android/launcher3/taskbar/i1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/i1;-><init>(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    invoke-direct {v1, v2}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mCornerRoundness:Lcom/android/launcher3/anim/AnimatedFloat;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarScrimViewController:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarUnfoldAnimationController:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->voiceInteractionWindowController:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarTranslationController:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarSpringOnStashController:Lcom/android/launcher3/taskbar/TaskbarSpringOnStashController;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarRecentAppsController:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduTooltipController:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->keyboardQuickSwitchController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPinningController:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->bubbleControllers:Ljava/util/Optional;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarControllers;->updateCornerRoundness()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->lambda$init$0(Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarControllers;->lambda$onDestroy$1(Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V

    return-void
.end method

.method private synthetic lambda$init$0(Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    return-void
.end method

.method private static synthetic lambda$onDestroy$1(Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->onDestroy()V

    return-void
.end method

.method private updateCornerRoundness()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mBackgroundRendererControllers:[Lcom/android/launcher3/taskbar/TaskbarControllers$BackgroundRendererController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mCornerRoundness:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v4, v4, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-interface {v3, v4}, Lcom/android/launcher3/taskbar/TaskbarControllers$BackgroundRendererController;->setCornerRoundness(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarControllers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    aput-object p1, p0, v3

    const-string p1, "All taskbar controllers have already been destroyed."

    aput-object p1, p0, v2

    const-string p1, "%s\t%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mAreAllControllersInitialized:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s\tmAreAllControllersInitialized=%b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    array-length v1, v0

    :goto_0
    const-string v2, "\t"

    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, p2}, Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/taskbar/TaskbarUIController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getSharedState()Lcom/android/launcher3/taskbar/TaskbarSharedState;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    return-object p0
.end method

.method getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method public getTaskbarCornerRoundness()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mCornerRoundness:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V
    .locals 9
    .param p1    # Lcom/android/launcher3/taskbar/TaskbarSharedState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mAreAllControllersInitialized:Z

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {v1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->init()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarScrimViewController:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarUnfoldAnimationController:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->init(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarSpringOnStashController:Lcom/android/launcher3/taskbar/TaskbarSpringOnStashController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarSpringOnStashController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-boolean v2, p1, Lcom/android/launcher3/taskbar/TaskbarSharedState;->setupUIVisible:Z

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;ZLcom/android/launcher3/taskbar/TaskbarSharedState;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    iget-boolean p1, p1, Lcom/android/launcher3/taskbar/TaskbarSharedState;->allAppsVisible:Z

    invoke-virtual {v1, p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->voiceInteractionWindowController:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarRecentAppsController:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarTranslationController:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduTooltipController:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->keyboardQuickSwitchController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPinningController:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->bubbleControllers:Ljava/util/Optional;

    new-instance v1, Lcom/android/launcher3/taskbar/j1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/j1;-><init>(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/16 p1, 0x12

    new-array p1, p1, [Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    aput-object v1, p1, v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const/4 v2, 0x1

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    const/4 v3, 0x2

    aput-object v1, p1, v3

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    const/4 v4, 0x3

    aput-object v1, p1, v4

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarScrimViewController:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    const/4 v6, 0x4

    aput-object v5, p1, v6

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    const/4 v7, 0x5

    aput-object v6, p1, v7

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarUnfoldAnimationController:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    const/4 v7, 0x6

    aput-object v6, p1, v7

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    const/4 v7, 0x7

    aput-object v6, p1, v7

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    const/16 v7, 0x8

    aput-object v6, p1, v7

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/16 v7, 0x9

    aput-object v6, p1, v7

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/16 v7, 0xa

    aput-object v6, p1, v7

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    const/16 v7, 0xb

    aput-object v6, p1, v7

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    const/16 v7, 0xc

    aput-object v6, p1, v7

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->voiceInteractionWindowController:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    const/16 v7, 0xd

    aput-object v6, p1, v7

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarTranslationController:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    const/16 v8, 0xe

    aput-object v7, p1, v8

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduTooltipController:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    const/16 v8, 0xf

    aput-object v7, p1, v8

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->keyboardQuickSwitchController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    const/16 v8, 0x10

    aput-object v7, p1, v8

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPinningController:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    const/16 v8, 0x11

    aput-object v7, p1, v8

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    new-array p1, v4, [Lcom/android/launcher3/taskbar/TaskbarControllers$BackgroundRendererController;

    aput-object v1, p1, v0

    aput-object v5, p1, v2

    aput-object v6, p1, v3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mBackgroundRendererControllers:[Lcom/android/launcher3/taskbar/TaskbarControllers$BackgroundRendererController;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mCornerRoundness:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mAreAllControllersInitialized:Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mPostInitCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mPostInitCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->onConfigurationChanged(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->onConfigurationChanged()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->keyboardQuickSwitchController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->onConfigurationChanged(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mAreAllControllersInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {v1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarUnfoldAnimationController:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->voiceInteractionWindowController:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarRecentAppsController:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->keyboardQuickSwitchController:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->bubbleControllers:Ljava/util/Optional;

    sget-object v2, Lcom/android/launcher3/taskbar/k1;->g:Lcom/android/launcher3/taskbar/k1;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mBackgroundRendererControllers:[Lcom/android/launcher3/taskbar/TaskbarControllers$BackgroundRendererController;

    return-void
.end method

.method public runAfterInit(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mAreAllControllersInitialized:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mPostInitCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setUiController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V
    .locals 1
    .param p1    # Lcom/android/launcher3/taskbar/TaskbarUIController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onDestroy()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iget v0, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->sysuiStateFlags:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->updateStateForSysuiFlags(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->onUiControllerChanged()V

    return-void
.end method
