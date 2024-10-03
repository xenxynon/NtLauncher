.class public final Lw2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/graphics/RectF;FFFF)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    neg-float v0, p3

    neg-float v1, p4

    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget v0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p3, p4}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method
