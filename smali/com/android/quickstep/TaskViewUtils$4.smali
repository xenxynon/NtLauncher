.class Lcom/android/quickstep/TaskViewUtils$4;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isQuickSwitch:Z

.field final synthetic val$targets:Lcom/android/quickstep/RemoteAnimationTargets;


# direct methods
.method constructor <init>(ZLcom/android/quickstep/RemoteAnimationTargets;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/TaskViewUtils$4;->val$isQuickSwitch:Z

    iput-object p2, p0, Lcom/android/quickstep/TaskViewUtils$4;->val$targets:Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$4;->val$targets:Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteAnimationTargets;->release()V

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/TaskViewUtils$4;->val$isQuickSwitch:Z

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    invoke-static {p0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    :cond_0
    return-void
.end method
