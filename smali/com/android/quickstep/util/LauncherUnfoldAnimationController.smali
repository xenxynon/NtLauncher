.class public Lcom/android/quickstep/util/LauncherUnfoldAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;,
        Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;,
        Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener;
    }
.end annotation


# static fields
.field private static final HOTSEAT_SCALE_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/Hotseat;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_WIDTH_INSET_FRACTION:F = 0.04f

.field private static final TRACE_WAIT_TO_HANDLE_UNFOLD_TRANSITION:Ljava/lang/String; = "LauncherUnfoldAnimationController#waitingForTheNextFrame"

.field private static final WORKSPACE_SCALE_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/Workspace<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mExternalTransitionStatusProvider:Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;

.field private mIsTablet:Ljava/lang/Boolean;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mNaturalOrientationProgressProvider:Lt0/e;

.field private mPreemptiveProgressProvider:Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;

.field private final mProgressProvider:Lt0/h;

.field private mQsbInsettable:Lcom/android/launcher3/util/HorizontalInsettableView;

.field private final mUnfoldMoveFromCenterHotseatAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;

.field private final mUnfoldMoveFromCenterWorkspaceAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->WORKSPACE_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->WORKSPACE_SCALE_PROPERTY:Landroid/util/FloatProperty;

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->HOTSEAT_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->HOTSEAT_SCALE_PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/WindowManager;Lm0/o;Lq0/e;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;-><init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController$1;)V

    iput-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mExternalTransitionStatusProvider:Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;

    iput-object v1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mPreemptiveProgressProvider:Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;

    iput-object v1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mIsTablet:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->PREEMPTIVE_UNFOLD_ANIMATION_START:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;-><init>(Lm0/o;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mPreemptiveProgressProvider:Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;

    invoke-virtual {v2}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->init()V

    new-instance v2, Lt0/h;

    iget-object v3, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mPreemptiveProgressProvider:Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;

    invoke-direct {v2, v3}, Lt0/h;-><init>(Lm0/o;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lt0/h;

    invoke-direct {v2, p3}, Lt0/h;-><init>(Lm0/o;)V

    :goto_0
    iput-object v2, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lt0/h;

    invoke-interface {p3, v0}, Lt0/b;->addCallback(Ljava/lang/Object;)V

    new-instance p3, Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;

    invoke-direct {p3, p1, p2, p4}, Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/WindowManager;Lq0/e;)V

    iput-object p3, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mUnfoldMoveFromCenterHotseatAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;

    new-instance v0, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;

    invoke-direct {v0, p1, p2, p4}, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/WindowManager;Lq0/e;)V

    iput-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mUnfoldMoveFromCenterWorkspaceAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;

    new-instance p2, Lt0/e;

    iget-object v2, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lt0/h;

    invoke-direct {p2, p1, p4, v2}, Lt0/e;-><init>(Landroid/content/Context;Lq0/e;Lm0/o;)V

    iput-object p2, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mNaturalOrientationProgressProvider:Lt0/e;

    invoke-virtual {p2}, Lt0/e;->c()V

    iget-object p4, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lt0/h;

    invoke-virtual {p4, v0}, Lt0/h;->addCallback(Lm0/o$a;)V

    iget-object p4, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lt0/h;

    new-instance v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;-><init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;Lcom/android/quickstep/util/LauncherUnfoldAnimationController$1;)V

    invoke-virtual {p4, v0}, Lt0/h;->addCallback(Lm0/o$a;)V

    new-instance p4, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener;

    invoke-direct {p4, p0, v1}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener;-><init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;Lcom/android/quickstep/util/LauncherUnfoldAnimationController$1;)V

    invoke-virtual {p2, p4}, Lt0/e;->b(Lm0/o$a;)V

    invoke-virtual {p2, p3}, Lt0/e;->b(Lm0/o$a;)V

    invoke-interface {p1, p0}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->lambda$preemptivelyStartAnimationOnNextFrame$0()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/util/HorizontalInsettableView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mQsbInsettable:Lcom/android/launcher3/util/HorizontalInsettableView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method static synthetic access$500()Landroid/util/FloatProperty;
    .locals 1

    sget-object v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->WORKSPACE_SCALE_PROPERTY:Landroid/util/FloatProperty;

    return-object v0
.end method

.method static synthetic access$600()Landroid/util/FloatProperty;
    .locals 1

    sget-object v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->HOTSEAT_SCALE_PROPERTY:Landroid/util/FloatProperty;

    return-object v0
.end method

.method private synthetic lambda$preemptivelyStartAnimationOnNextFrame$0()V
    .locals 4

    const-wide/16 v0, 0x1000

    const-string v2, "LauncherUnfoldAnimationController#waitingForTheNextFrame"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mPreemptiveProgressProvider:Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/unfold/PreemptiveUnfoldTransitionProgressProvider;->preemptivelyStartTransition(Ljava/lang/Float;)V

    return-void
.end method

.method private preemptivelyStartAnimationOnNextFrame()V
    .locals 4

    const-wide/16 v0, 0x1000

    const-string v2, "LauncherUnfoldAnimationController#waitingForTheNextFrame"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/util/w;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/w;-><init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)V

    invoke-static {v0, v1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lt0/h;

    invoke-virtual {v0}, Lt0/h;->destroy()V

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mNaturalOrientationProgressProvider:Lt0/e;

    invoke-virtual {v0}, Lt0/e;->destroy()V

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->PREEMPTIVE_UNFOLD_ANIMATION_START:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mIsTablet:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-boolean v1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v1, v0, :cond_2

    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mExternalTransitionStatusProvider:Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;

    invoke-virtual {v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;->hasRun()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->preemptivelyStartAnimationOnNextFrame()V

    :cond_1
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mExternalTransitionStatusProvider:Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;

    invoke-virtual {v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$TransitionStatusProvider;->onFolded()V

    :cond_2
    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mIsTablet:Ljava/lang/Boolean;

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lt0/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lt0/h;->setReadyToHandleTransition(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mQsbInsettable:Lcom/android/launcher3/util/HorizontalInsettableView;

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/util/HorizontalInsettableView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/HorizontalInsettableView;

    iput-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mQsbInsettable:Lcom/android/launcher3/util/HorizontalInsettableView;

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lt0/h;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lt0/h;->setReadyToHandleTransition(Z)V

    return-void
.end method

.method public updateRegisteredViewsIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mUnfoldMoveFromCenterHotseatAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;

    invoke-virtual {v0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->updateRegisteredViewsIfNeeded()V

    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mUnfoldMoveFromCenterWorkspaceAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseUnfoldMoveFromCenterAnimator;->updateRegisteredViewsIfNeeded()V

    return-void
.end method
