.class public Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mLimit:F

.field private final mView:Landroid/view/View;


# virtual methods
.method public getProgress()F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget p0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mLimit:F

    div-float/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr v0, p0

    return v0
.end method

.method public setProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mView:Landroid/view/View;

    iget p0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mLimit:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    mul-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
