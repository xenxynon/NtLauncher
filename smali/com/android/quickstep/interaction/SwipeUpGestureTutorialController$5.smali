.class Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->createFingerDotHomeSwipeAnimator(F)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

.field final synthetic val$fingerDotStartTranslationY:F


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$5;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iput p2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$5;->val$fingerDotStartTranslationY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$5;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    new-instance v0, Landroid/graphics/PointF;

    iget p0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$5;->val$fingerDotStartTranslationY:F

    const v1, 0x441c4000    # 625.0f

    div-float/2addr p0, v1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->animateFakeTaskViewHome(Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    return-void
.end method
