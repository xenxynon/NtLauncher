.class public Lcom/android/launcher3/views/IconButtonView;
.super Lcom/nothing/launcher/views/NTBubbleTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/IconButtonView$IconDrawable;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private final mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010002

    aput v2, v0, v1

    sput-object v0, Lcom/android/launcher3/views/IconButtonView;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/IconButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/launcher/views/NTBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/launcher3/util/MultiTranslateDelegate;

    const/4 v1, 0x6

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/util/MultiTranslateDelegate;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/android/launcher3/views/IconButtonView;->mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;

    sget-object v0, Lcom/android/launcher3/views/IconButtonView;->ATTRS:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    :goto_0
    if-nez p3, :cond_1

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p1

    :try_start_0
    new-instance v0, Lcom/android/launcher3/views/IconButtonView$IconDrawable;

    invoke-virtual {p1}, Lcom/android/launcher3/icons/BaseIconFactory;->getWhiteShadowLayer()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/android/launcher3/views/IconButtonView$IconDrawable;-><init>(Landroid/graphics/Bitmap;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/nothing/launcher/views/NTBubbleTextView;->setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    return-void

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
.end method


# virtual methods
.method public getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/IconButtonView;->mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;

    return-object p0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setForegroundTint(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/views/IconButtonView$IconDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/launcher3/views/IconButtonView$IconDrawable;

    invoke-static {p0}, Lcom/android/launcher3/views/IconButtonView$IconDrawable;->access$000(Lcom/android/launcher3/views/IconButtonView$IconDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/android/launcher3/views/IconButtonView$IconDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->getWhiteShadowLayer()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Lcom/android/launcher3/views/IconButtonView$IconDrawable;-><init>(Landroid/graphics/Bitmap;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/nothing/launcher/views/NTBubbleTextView;->setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p0
.end method

.method public setTranslationXForTaskbarAllAppsIcon(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/views/IconButtonView;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    return-void
.end method
