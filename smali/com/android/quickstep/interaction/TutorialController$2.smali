.class Lcom/android/quickstep/interaction/TutorialController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/TutorialController;->playFeedbackAnimation(Landroid/animation/Animator;Landroid/graphics/drawable/AnimatedVectorDrawable;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/TutorialController;

.field final synthetic val$edgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field final synthetic val$gestureAnimation:Landroid/animation/Animator;

.field final synthetic val$onStartRunnable:Ljava/lang/Runnable;

.field final synthetic val$useGestureAnimationDelay:Z


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/TutorialController;Landroid/graphics/drawable/AnimatedVectorDrawable;ZLjava/lang/Runnable;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialController$2;->this$0:Lcom/android/quickstep/interaction/TutorialController;

    iput-object p2, p0, Lcom/android/quickstep/interaction/TutorialController$2;->val$edgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-boolean p3, p0, Lcom/android/quickstep/interaction/TutorialController$2;->val$useGestureAnimationDelay:Z

    iput-object p4, p0, Lcom/android/quickstep/interaction/TutorialController$2;->val$onStartRunnable:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/quickstep/interaction/TutorialController$2;->val$gestureAnimation:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController$2;->this$0:Lcom/android/quickstep/interaction/TutorialController;

    iget-object p1, p1, Lcom/android/quickstep/interaction/TutorialController;->mEdgeGestureVideoView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController$2;->val$edgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController$2;->val$gestureAnimation:Landroid/animation/Animator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController$2;->this$0:Lcom/android/quickstep/interaction/TutorialController;

    iget-object p1, p1, Lcom/android/quickstep/interaction/TutorialController;->mEdgeGestureVideoView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController$2;->val$edgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController$2;->val$edgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_0
    iget-boolean p1, p0, Lcom/android/quickstep/interaction/TutorialController$2;->val$useGestureAnimationDelay:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController$2;->val$onStartRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
