.class public Lcom/nothing/launcher/views/NTBubbleTextView;
.super Lcom/android/launcher3/BubbleTextView;
.source "SourceFile"


# instance fields
.field private final activityContext:Lcom/android/launcher3/views/ActivityContext;

.field private bigFolderIcon:Lcom/android/launcher3/folder/BigFolderIcon;

.field private longClickListener:Landroid/view/View$OnLongClickListener;

.field private showPressAnim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/nothing/launcher/views/NTBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "lookupContext(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    iput-object p1, p0, Lcom/nothing/launcher/views/NTBubbleTextView;->activityContext:Lcom/android/launcher3/views/ActivityContext;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nothing/launcher/views/NTBubbleTextView;->showPressAnim:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/launcher/views/NTBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final disablePressAnim()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nothing/launcher/views/NTBubbleTextView;->showPressAnim:Z

    return-void
.end method

.method public final getBigFolderIcon()Lcom/android/launcher3/folder/BigFolderIcon;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/views/NTBubbleTextView;->bigFolderIcon:Lcom/android/launcher3/folder/BigFolderIcon;

    return-object p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/views/NTBubbleTextView;->longClickListener:Landroid/view/View$OnLongClickListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onLongClick(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public final setBigFolderIcon(Lcom/android/launcher3/folder/BigFolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/views/NTBubbleTextView;->bigFolderIcon:Lcom/android/launcher3/folder/BigFolderIcon;

    return-void
.end method

.method public final setDefaultLongPressTimeoutFactor()V
    .locals 1

    const/high16 v0, 0x3f200000    # 0.625f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeoutFactor(F)V

    return-void
.end method

.method protected setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/nothing/launcher/views/NTBubbleTextView;->showPressAnim:Z

    invoke-virtual {p1, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updatePressAnim(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    return-void
.end method

.method public final setIconSize(I)V
    .locals 2

    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    iget-object p1, p0, Lcom/nothing/launcher/views/NTBubbleTextView;->activityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget p0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    int-to-float p0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p0, v1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float p1, p1

    div-float/2addr p0, p1

    iput p0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->radiusScale:F

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLongClickable(Z)V

    :cond_0
    iput-object p1, p0, Lcom/nothing/launcher/views/NTBubbleTextView;->longClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public final updateIconSizeAndPadding(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/views/NTBubbleTextView;->activityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-static {p1}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj3/a;->h()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    :goto_0
    iput v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-static {p1}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lj3/a;->f()I

    move-result p1

    goto :goto_1

    :cond_1
    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-void
.end method
