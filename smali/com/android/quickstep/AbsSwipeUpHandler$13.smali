.class Lcom/android/quickstep/AbsSwipeUpHandler$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

.field final synthetic val$quickstepLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

.field final synthetic val$splashView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/view/ViewGroup;Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$13;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$13;->val$splashView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$13;->val$quickstepLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler$13;->lambda$onAnimationEnd$0(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private static synthetic lambda$onAnimationEnd$0(Landroid/view/ViewGroup;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$13;->val$splashView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$13;->val$quickstepLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/BaseDepthController;->pauseBlursOnWindows(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$13;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$13;->val$splashView:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/quickstep/q1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/q1;-><init>(Landroid/view/ViewGroup;)V

    invoke-static {p1, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->access$800(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/lang/Runnable;)V

    return-void
.end method
