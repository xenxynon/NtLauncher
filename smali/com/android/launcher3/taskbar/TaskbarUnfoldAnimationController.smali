.class public Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;
    }
.end annotation


# instance fields
.field private final mMoveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

.field private final mNaturalUnfoldTransitionProgressProvider:Lt0/e;

.field private final mScopedUnfoldTransitionProgressProvider:Lt0/h;

.field private mTaskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

.field private mTaskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

.field private final mTransitionListener:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lt0/h;Landroid/view/WindowManager;Lq0/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;-><init>(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$1;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTransitionListener:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mScopedUnfoldTransitionProgressProvider:Lt0/h;

    new-instance v0, Lt0/e;

    invoke-direct {v0, p1, p4, p2}, Lt0/e;-><init>(Landroid/content/Context;Lq0/e;Lm0/o;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mNaturalUnfoldTransitionProgressProvider:Lt0/e;

    new-instance p1, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    new-instance p2, Lcom/android/quickstep/util/LauncherViewsMoveFromCenterTranslationApplier;

    invoke-direct {p2}, Lcom/android/quickstep/util/LauncherViewsMoveFromCenterTranslationApplier;-><init>()V

    invoke-direct {p1, p3, p2}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;-><init>(Landroid/view/WindowManager;Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$TranslationApplier;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mMoveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->lambda$init$0()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mMoveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)Lcom/android/launcher3/taskbar/TaskbarViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTaskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)Lcom/android/launcher3/taskbar/TaskbarDragLayerController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTaskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    return-object p0
.end method

.method private synthetic lambda$init$0()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mScopedUnfoldTransitionProgressProvider:Lt0/h;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lt0/h;->setReadyToHandleTransition(Z)V

    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "TaskbarUnfoldAnimationController:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mNaturalUnfoldTransitionProgressProvider:Lt0/e;

    invoke-virtual {v0}, Lt0/e;->c()V

    iget-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTaskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    new-instance v1, Lcom/android/launcher3/taskbar/a4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/a4;-><init>(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->addOneTimePreDrawListener(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mNaturalUnfoldTransitionProgressProvider:Lt0/e;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTransitionListener:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;

    invoke-virtual {v0, v1}, Lt0/e;->b(Lm0/o$a;)V

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTaskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mScopedUnfoldTransitionProgressProvider:Lt0/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lt0/h;->setReadyToHandleTransition(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mNaturalUnfoldTransitionProgressProvider:Lt0/e;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTransitionListener:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;

    invoke-virtual {v0, v1}, Lt0/e;->d(Lm0/o$a;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mNaturalUnfoldTransitionProgressProvider:Lt0/e;

    invoke-virtual {v0}, Lt0/e;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTaskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    return-void
.end method
