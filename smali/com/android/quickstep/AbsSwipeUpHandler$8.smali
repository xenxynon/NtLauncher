.class Lcom/android/quickstep/AbsSwipeUpHandler$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;->animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$8;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$8;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->access$702(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
