.class public final Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/SplitAnimationController$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SplitAnimInitProps"
.end annotation


# instance fields
.field private final fadeWithThumbnail:Z

.field private final iconDrawable:Landroid/graphics/drawable/Drawable;

.field private final iconView:Landroid/view/View;

.field private final isStagedTask:Z

.field private final originalBitmap:Landroid/graphics/Bitmap;

.field private final originalView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ZZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean p4, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->fadeWithThumbnail:Z

    iput-boolean p5, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->isStagedTask:Z

    iput-object p6, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconView:Landroid/view/View;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ZZLandroid/view/View;ILjava/lang/Object;)Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalView:Landroid/view/View;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalBitmap:Landroid/graphics/Bitmap;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->fadeWithThumbnail:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->isStagedTask:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconView:Landroid/view/View;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->copy(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ZZLandroid/view/View;)Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalView:Landroid/view/View;

    return-object p0
.end method

.method public final component2()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final component3()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->fadeWithThumbnail:Z

    return p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->isStagedTask:Z

    return p0
.end method

.method public final component6()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconView:Landroid/view/View;

    return-object p0
.end method

.method public final copy(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ZZLandroid/view/View;)Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;
    .locals 7

    new-instance p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ZZLandroid/view/View;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;

    iget-object v1, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalView:Landroid/view/View;

    iget-object v3, p1, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalView:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->fadeWithThumbnail:Z

    iget-boolean v3, p1, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->fadeWithThumbnail:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->isStagedTask:Z

    iget-boolean v3, p1, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->isStagedTask:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconView:Landroid/view/View;

    iget-object p1, p1, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconView:Landroid/view/View;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getFadeWithThumbnail()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->fadeWithThumbnail:Z

    return p0
.end method

.method public final getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getIconView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconView:Landroid/view/View;

    return-object p0
.end method

.method public final getOriginalBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getOriginalView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalView:Landroid/view/View;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->fadeWithThumbnail:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    move v2, v3

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->isStagedTask:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconView:Landroid/view/View;

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final isStagedTask()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->isStagedTask:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplitAnimInitProps(originalView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iconDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fadeWithThumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->fadeWithThumbnail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isStagedTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->isStagedTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", iconView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;->iconView:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
