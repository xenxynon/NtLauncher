.class public Lcom/android/launcher3/icons/BitmapInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/BitmapInfo$Extender;
    }
.end annotation


# static fields
.field public static final LOW_RES_ICON:Landroid/graphics/Bitmap;

.field public static final LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;


# instance fields
.field private badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

.field public final color:I

.field public flags:I
    .annotation build Lcom/android/launcher3/icons/BitmapInfo$BitmapInfoFlags;
    .end annotation
.end field

.field public final icon:Landroid/graphics/Bitmap;

.field protected mMono:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mMonoFlag:I

.field protected mWhiteShadowLayer:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    return-void
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public static of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method


# virtual methods
.method protected applyFlags(Landroid/content/Context;Lcom/android/launcher3/icons/FastBitmapDrawable;I)V
    .locals 2

    sget v0, Lcom/android/launcher3/icons/R$attr;->disabledIconAlpha:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->getFloat(Landroid/content/Context;IF)F

    move-result v0

    iput v0, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mDisabledAlpha:F

    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_0
    iget p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/lit8 p3, p0, 0x2

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isThemed()Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/android/launcher3/icons/R$drawable;->ic_instant_app_badge_themed:I

    goto :goto_1

    :cond_1
    sget p0, Lcom/android/launcher3/icons/R$drawable;->ic_instant_app_badge:I

    :goto_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_2
    and-int/lit8 p3, p0, 0x1

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isThemed()Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Lcom/android/launcher3/icons/R$drawable;->ic_work_app_badge_themed:I

    goto :goto_1

    :cond_3
    sget p0, Lcom/android/launcher3/icons/R$drawable;->ic_work_app_badge:I

    goto :goto_1

    :cond_4
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_5

    sget-object p0, Ly3/b;->a:Ly3/b;

    const/16 p3, 0x3e7

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isThemed()Z

    move-result v0

    invoke-virtual {p0, p3, p1, v0}, Ly3/b;->a(Landroid/os/UserHandle;Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public canPersist()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public clone()Lcom/android/launcher3/icons/BitmapInfo;
    .locals 3

    new-instance v0, Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/BitmapInfo;->copyInternalsTo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->clone()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method protected copyInternalsTo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    iput v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    iget p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMonoFlag:I

    iput p0, p1, Lcom/android/launcher3/icons/BitmapInfo;->mMonoFlag:I

    return-object p1
.end method

.method public getMono()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final isLowRes()Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNTMono()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMonoFlag:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNullOrLowRes()Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->isLowRes()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;-><init>(Lcom/android/launcher3/icons/BitmapInfo;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/launcher3/icons/ThemedIconDrawable;->newDrawable(Lcom/android/launcher3/icons/BitmapInfo;Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Lcom/android/launcher3/icons/BitmapInfo;)V

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/icons/BitmapInfo;->applyFlags(Landroid/content/Context;Lcom/android/launcher3/icons/FastBitmapDrawable;I)V

    return-object v0
.end method

.method public setMonoIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/android/launcher3/icons/BaseIconFactory;->getWhiteShadowLayer()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMonoFlag:I

    return-void
.end method

.method public setMonoIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/android/launcher3/icons/BaseIconFactory;->getWhiteShadowLayer()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMonoFlag:I

    return-void
.end method

.method public withBadgeInfo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->clone()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    iput-object p1, p0, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    return-object p0
.end method

.method public withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p1    # Lcom/android/launcher3/util/FlagOp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->clone()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    iget v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    invoke-interface {p1, v0}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    return-object p0
.end method
