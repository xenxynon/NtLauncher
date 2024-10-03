.class Lcom/android/launcher3/folder/PreviewBackground$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/PreviewBackground;->animateScale(FLjava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewBackground;

.field final synthetic val$scale0:F

.field final synthetic val$scale1:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale1:F

    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale0:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale1:F

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale0:F

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void
.end method
