.class public Lcom/android/launcher3/widget/picker/WidgetsListHeader;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;


# static fields
.field private static final EXPANDED_DRAWABLE_STATE:[I


# instance fields
.field protected mAppIcon:Landroid/widget/ImageView;

.field private mEnableIconUpdateAnimation:Z

.field public mExpandToggle:Landroid/widget/ImageView;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mIconSize:I

.field private mIsExpanded:Z

.field private mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mSubtitle:Landroid/widget/TextView;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a8

    aput v2, v0, v1

    sput-object v0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->EXPANDED_DRAWABLE_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mEnableIconUpdateAnimation:Z

    iput-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIsExpanded:Z

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/R$styleable;->WidgetsListRowHeader:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    iget p2, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/picker/WidgetsListHeader;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIsExpanded:Z

    return p0
.end method

.method private applyDrawables(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconSize:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconSize:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mEnableIconUpdateAnimation:Z

    if-eqz p0, :cond_0

    check-cast v0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;->animateIconUpdate(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyFromItemInfoWithIcon(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->isSearchEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    instance-of v1, v0, Lcom/nothing/launcher/widgets/b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nothing/launcher/widgets/b;

    invoke-virtual {v0}, Lcom/nothing/launcher/widgets/b;->i()Lcom/nothing/launcher/widgets/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/launcher/widgets/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setTitles(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V

    invoke-virtual {p1}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->isWidgetListShown()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    sget-object v0, Lg4/j;->b:Lg4/j$a;

    invoke-virtual {v0}, Lg4/j$a;->a()Lcom/nothing/launcher/widgets/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg4/j$a;->a()Lcom/nothing/launcher/widgets/e;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->verifyHighRes()V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setIcon(Lcom/android/launcher3/model/data/PackageItemInfo;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setTitles(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V

    invoke-virtual {p1}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->isWidgetListShown()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public isExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIsExpanded:Z

    return p0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIsExpanded:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->EXPANDED_DRAWABLE_STATE:[I

    invoke-static {p1, v0}, Landroid/widget/LinearLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->mStateSet:[I

    invoke-static {p1, p0}, Landroid/widget/LinearLayout;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mAppIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mSubtitle:Landroid/widget/TextView;

    const v0, 0x7f0b03e0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mExpandToggle:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsListHeader$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader$1;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListHeader;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public reapplyItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mEnableIconUpdateAnimation:Z

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    instance-of v1, p1, Lcom/android/launcher3/model/data/PackageItemInfo;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setIcon(Lcom/android/launcher3/model/data/PackageItemInfo;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mEnableIconUpdateAnimation:Z

    :cond_1
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iput-boolean p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIsExpanded:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    return-void
.end method

.method setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->applyDrawables(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-virtual {p1, p0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public setIcon(Lcom/android/launcher3/model/data/PackageItemInfo;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lq4/h;->a(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListDrawableState(Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    return-void
.end method

.method protected setTitles(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->isSearchEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    instance-of v1, v0, Lcom/nothing/launcher/widgets/b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nothing/launcher/widgets/b;

    invoke-virtual {v0}, Lcom/nothing/launcher/widgets/b;->i()Lcom/nothing/launcher/widgets/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/launcher/widgets/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    check-cast v1, Lcom/nothing/launcher/widgets/b;

    invoke-virtual {v1}, Lcom/nothing/launcher/widgets/b;->i()Lcom/nothing/launcher/widgets/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nothing/launcher/widgets/a;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->getSubtitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mSubtitle:Landroid/widget/TextView;

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mSubtitle:Landroid/widget/TextView;

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public verifyHighRes()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/icons/IconCache;->updateIconInBackground(Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/icons/cache/HandlerRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    :cond_1
    return-void
.end method
