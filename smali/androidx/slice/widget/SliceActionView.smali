.class public Landroidx/slice/widget/SliceActionView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceActionView$ImageToggle;,
        Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;
    }
.end annotation


# static fields
.field static final STATE_CHECKED:[I

.field private static final TAG:Ljava/lang/String; = "SliceActionView"


# instance fields
.field private mActionView:Landroid/view/View;

.field private mEventInfo:Landroidx/slice/widget/EventInfo;

.field private mIconSize:I

.field private mImageSize:I

.field private mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

.field private mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSliceAction:Landroidx/slice/core/SliceActionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroidx/slice/widget/SliceActionView;->STATE_CHECKED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceActionView;->mIconSize:I

    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    return-void
.end method

.method private sendActionInternal()V
    .locals 4

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, v3, Landroidx/slice/widget/EventInfo;->state:I

    :cond_2
    move-object v0, v2

    :cond_3
    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceActionView;->setLoading(Z)V

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    if-eqz v0, :cond_5

    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    if-eqz v2, :cond_4

    iget v2, v2, Landroidx/slice/widget/EventInfo;->rowIndex:I

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    :goto_1
    iget-object v3, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v3}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    :cond_5
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_7

    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    if-eqz v2, :cond_7

    iget-object v3, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v3}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object p0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    instance-of v2, p0, Landroid/widget/Checkable;

    if-eqz v2, :cond_6

    move-object v2, p0

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_6
    const-string p0, "SliceActionView"

    const-string v1, "PendingIntent for slice cannot be sent"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public getAction()Landroidx/slice/core/SliceActionImpl;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    return-object p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/SliceActionView;->sendActionInternal()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/SliceActionView;->sendActionInternal()V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendAction()V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->toggle()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/slice/widget/SliceActionView;->sendActionInternal()V

    :goto_0
    return-void
.end method

.method public setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Landroidx/slice/widget/SliceView$OnSliceActionListener;ILandroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V
    .locals 2
    .param p1    # Landroidx/slice/core/SliceActionImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    :cond_1
    iput-object p1, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    iput-object p2, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    iput-object p3, p0, Landroidx/slice/widget/SliceActionView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iput-object v1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    iput-object p5, p0, Landroidx/slice/widget/SliceActionView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isDefaultToggle()Z

    move-result p2

    const/4 p3, -0x1

    const/4 p5, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Landroidx/slice/view/R$layout;->abc_slice_switch:I

    invoke-virtual {p2, v0, p0, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isChecked()Z

    move-result p5

    invoke-virtual {p2, p5}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget p5, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    invoke-virtual {p2, p5}, Landroid/widget/Switch;->setMinimumHeight(I)V

    iget p5, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    invoke-virtual {p2, p5}, Landroid/widget/Switch;->setMinimumWidth(I)V

    if-eq p4, p3, :cond_2

    invoke-virtual {p2}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p3}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p3}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iput-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Landroidx/slice/widget/SliceActionView$ImageToggle;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/slice/widget/SliceActionView$ImageToggle;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/slice/widget/SliceActionView$ImageToggle;->setChecked(Z)V

    goto :goto_0

    :cond_4
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p2}, Landroidx/slice/core/SliceActionImpl;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eq p4, p3, :cond_5

    iget-object p3, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p3}, Landroidx/slice/core/SliceActionImpl;->getImageMode()I

    move-result p3

    if-nez p3, :cond_5

    if-eqz p2, :cond_5

    invoke-static {p2, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_5
    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget p3, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p3, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getImageMode()I

    move-result p2

    if-nez p2, :cond_6

    iget p2, p0, Landroidx/slice/widget/SliceActionView;->mIconSize:I

    div-int/lit8 p5, p2, 0x2

    :cond_6
    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p2, p5, p5, p5, p5}, Landroid/view/View;->setPadding(IIII)V

    const p2, 0x101045c

    iget-object p3, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p2}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    :goto_1
    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_2
    iget-object p0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setLoading(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroidx/slice/view/R$layout;->abc_slice_progress_view:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-static {v1, v2}, Landroidx/slice/widget/SliceViewUtil;->tintIndeterminateProgressBar(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0}, Landroid/widget/Checkable;->toggle()V

    :cond_0
    return-void
.end method
