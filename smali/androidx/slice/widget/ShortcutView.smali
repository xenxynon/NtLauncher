.class public Landroidx/slice/widget/ShortcutView;
.super Landroidx/slice/widget/SliceChildView;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutView"


# instance fields
.field private mActionItem:Landroidx/slice/SliceItem;

.field private mIcon:Landroidx/slice/SliceItem;

.field private mLabel:Landroidx/slice/SliceItem;

.field private mLargeIconSize:I

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mLoadingActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSmallIconSize:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/ShortcutView;->mSmallIconSize:I

    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_shortcut_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/ShortcutView;->mLargeIconSize:I

    return-void
.end method

.method private useAppDataAsFallbackItems(Landroid/content/Context;)V
    .locals 11

    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroidx/slice/Slice$Builder;

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Landroidx/slice/widget/SliceViewUtil;->createIconFromDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/String;

    const-string v7, "large"

    invoke-virtual {v4, v5, v7, v6}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {v4}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    :cond_1
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    if-nez v4, :cond_2

    new-instance v4, Landroidx/slice/Slice$Builder;

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v3, [Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {v4}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    :cond_2
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-nez v4, :cond_3

    new-instance v4, Landroidx/slice/SliceItem;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    new-instance p1, Landroidx/slice/Slice$Builder;

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v8, "action"

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    :cond_3
    return-void
.end method


# virtual methods
.method public getLoadingActions()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/ShortcutView;->mLoadingActions:Ljava/util/Set;

    return-object p0
.end method

.method public getMode()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public performClick()Z
    .locals 7

    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3, v3}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/slice/widget/EventInfo;

    const/4 v4, 0x3

    const/4 v5, -0x1

    invoke-direct {v0, v4, v2, v5, v1}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Landroidx/slice/SliceItem;

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v4}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string v5, "slice"

    iget-object v6, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v6}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v4, v5, v3, v6}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_1
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-interface {p0, v0, v1}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "ShortcutView"

    const-string v1, "PendingIntent for slice cannot be sent"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return v2
.end method

.method public resetView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/slice/widget/ShortcutView;->mLoadingActions:Ljava/util/Set;

    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->resetView()V

    iput-object p1, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/slice/widget/ShortcutContent;

    invoke-direct {v0, p1}, Landroidx/slice/widget/ShortcutContent;-><init>(Landroidx/slice/widget/ListContent;)V

    invoke-virtual {v0}, Landroidx/slice/widget/ShortcutContent;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/widget/ShortcutContent;->getIcon()Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/widget/ShortcutContent;->getLabel()Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/slice/widget/ShortcutView;->useAppDataAsFallbackItems(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {v0}, Landroidx/slice/widget/ShortcutContent;->getColorItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/widget/SliceViewUtil;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    :goto_0
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    const-string v3, "no_tint"

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v2, p0, Landroidx/slice/widget/ShortcutView;->mLargeIconSize:I

    goto :goto_1

    :cond_5
    iget v2, p0, Landroidx/slice/widget/ShortcutView;->mSmallIconSize:I

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    invoke-static {v3, v2, v4, v1, p0}, Landroidx/slice/widget/SliceViewUtil;->createCircledIcon(Landroid/content/Context;ILandroidx/core/graphics/drawable/IconCompat;ZLandroid/view/ViewGroup;)V

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/ShortcutView;->mUri:Landroid/net/Uri;

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
