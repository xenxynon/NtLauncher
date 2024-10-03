.class public final Lcom/android/launcher3/graphics/FolderScrim;
.super Lcom/android/launcher3/graphics/Scrim;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/Scrim;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/Scrim;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0600da

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimColor:I

    return-void
.end method


# virtual methods
.method public setScrimProgress(F)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimProgress:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iput p1, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimProgress:F

    iget p1, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimProgress:F

    mul-float/2addr p1, v0

    invoke-static {p1}, La6/a;->b(F)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimAlpha:I

    iget-object p0, p0, Lcom/android/launcher3/graphics/Scrim;->mRoot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
