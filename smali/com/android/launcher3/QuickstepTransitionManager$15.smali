.class Lcom/android/launcher3/QuickstepTransitionManager$15;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->addCujInstrumentation(Landroid/animation/Animator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic val$cuj:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$15;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$15;->val$cuj:I

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationCancel(Landroid/animation/Animator;)V

    iget p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$15;->val$cuj:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$15;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$15$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/QuickstepTransitionManager$15$1;-><init>(Lcom/android/launcher3/QuickstepTransitionManager$15;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$15;->val$cuj:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    return-void
.end method
