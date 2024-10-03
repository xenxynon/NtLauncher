.class Lcom/android/launcher3/CellLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field final synthetic val$finalPreviewOffsetX:F

.field final synthetic val$finalPreviewOffsetY:F

.field final synthetic val$initPreviewOffsetX:F

.field final synthetic val$initPreviewOffsetY:F

.field final synthetic val$item:Lcom/android/launcher3/Reorderable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;FFFFLcom/android/launcher3/Reorderable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$4;->this$0:Lcom/android/launcher3/CellLayout;

    iput p2, p0, Lcom/android/launcher3/CellLayout$4;->val$initPreviewOffsetX:F

    iput p3, p0, Lcom/android/launcher3/CellLayout$4;->val$finalPreviewOffsetX:F

    iput p4, p0, Lcom/android/launcher3/CellLayout$4;->val$initPreviewOffsetY:F

    iput p5, p0, Lcom/android/launcher3/CellLayout$4;->val$finalPreviewOffsetY:F

    iput-object p6, p0, Lcom/android/launcher3/CellLayout$4;->val$item:Lcom/android/launcher3/Reorderable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/CellLayout$4;->val$initPreviewOffsetX:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/launcher3/CellLayout$4;->val$finalPreviewOffsetX:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/CellLayout$4;->val$initPreviewOffsetY:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/CellLayout$4;->val$finalPreviewOffsetY:F

    mul-float/2addr p1, v2

    add-float/2addr v0, p1

    iget-object p0, p0, Lcom/android/launcher3/CellLayout$4;->val$item:Lcom/android/launcher3/Reorderable;

    invoke-interface {p0}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/util/MultiTranslateDelegate;->setTranslation(IFF)V

    return-void
.end method
