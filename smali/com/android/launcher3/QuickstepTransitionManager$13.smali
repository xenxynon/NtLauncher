.class Lcom/android/launcher3/QuickstepTransitionManager$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->getClosingWindowAnimators(Landroid/animation/AnimatorSet;[Landroid/view/RemoteAnimationTarget;Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/RectF;F)Lcom/android/quickstep/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic val$anim:Lcom/android/quickstep/util/RectFSpringAnim;

.field final synthetic val$velocityPxPerS:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/util/RectFSpringAnim;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$anim:Lcom/android/quickstep/util/RectFSpringAnim;

    iput-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$velocityPxPerS:Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$anim:Lcom/android/quickstep/util/RectFSpringAnim;

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->access$400(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$velocityPxPerS:Landroid/graphics/PointF;

    invoke-virtual {p1, v1, v0, p0}, Lcom/android/quickstep/util/RectFSpringAnim;->start(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)V

    return-void
.end method
