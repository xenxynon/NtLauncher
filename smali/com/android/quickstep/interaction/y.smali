.class public final synthetic Lcom/android/quickstep/interaction/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

.field public final synthetic h:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/y;->g:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iput p2, p0, Lcom/android/quickstep/interaction/y;->h:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/y;->g:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget p0, p0, Lcom/android/quickstep/interaction/y;->h:F

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->l(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
