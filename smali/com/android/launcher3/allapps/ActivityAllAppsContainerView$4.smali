.class Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->addSpringFromFlingUpdateListener(Landroid/animation/ValueAnimator;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

.field final synthetic val$progress:F

.field final synthetic val$velocity:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;FF)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;->val$progress:F

    iput p3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;->val$velocity:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;->val$progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    long-to-float p1, v2

    const v0, 0x3fd9999a    # 1.7f

    mul-float/2addr p1, v0

    div-float/2addr v1, p1

    iget p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;->val$velocity:F

    add-float/2addr v1, p1

    const/4 p1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/high16 v0, 0x44960000    # 1200.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x3e8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->access$200(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;I)V

    return-void
.end method
