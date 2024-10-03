.class public Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
.super Landroid/appwidget/AppWidgetProviderInfo;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;


# instance fields
.field private mIsMinSizeFulfilled:Z

.field public maxSpanX:I

.field public maxSpanY:I

.field public minSpanX:I

.field public minSpanY:I

.field public spanX:I

.field public spanY:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .locals 2

    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {p1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_0
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-object p1
.end method

.method private getSpan(IIIF)I
    .locals 0

    add-int/2addr p2, p1

    add-int/2addr p2, p3

    int-to-float p0, p2

    int-to-float p1, p3

    add-float/2addr p4, p1

    div-float/2addr p0, p4

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getSpanX(Landroid/graphics/Rect;IIF)I
    .locals 1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpan(IIIF)I

    move-result p0

    return p0
.end method

.method private getSpanY(Landroid/graphics/Rect;IIF)I
    .locals 1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpan(IIIF)I

    move-result p0

    return p0
.end method

.method private getSpanY(Lj3/a;Landroid/graphics/Rect;IIF)I
    .locals 0

    invoke-static {p1, p3}, La5/a;->a(Lj3/a;I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanY(Landroid/graphics/Rect;IIF)I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUser()Landroid/os/UserHandle;
    .locals 0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public getWidgetFeatures()I
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initSpans(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    iget v0, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v8, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v1, p1

    invoke-virtual {v7, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/launcher3/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v11, v10, Lcom/android/launcher3/DeviceProfile;->widgetPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget-object v2, v10, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, v9, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-direct {v6, v11, v1, v2, v3}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanX(Landroid/graphics/Rect;IIF)I

    move-result v1

    const/4 v12, 0x0

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget v1, v6, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v2, v10, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, v9, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-direct {v6, v11, v1, v2, v3}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanY(Landroid/graphics/Rect;IIF)I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    sget-boolean v15, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v15, :cond_2

    iget v1, v6, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    if-lez v1, :cond_0

    iget-object v2, v10, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, v9, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-direct {v6, v11, v1, v2, v3}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanX(Landroid/graphics/Rect;IIF)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    move/from16 v16, v0

    iget v3, v6, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    if-lez v3, :cond_1

    iget-object v0, v10, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanY(Lj3/a;Landroid/graphics/Rect;IIF)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_1
    move v5, v8

    move/from16 v8, v16

    goto :goto_0

    :cond_2
    move v5, v8

    move v8, v0

    :goto_0
    iget v0, v6, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v1, v10, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, v9, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-direct {v6, v11, v0, v1, v2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanX(Landroid/graphics/Rect;IIF)I

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    iget v3, v6, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v0, v10, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move v10, v5

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanY(Lj3/a;Landroid/graphics/Rect;IIF)I

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v15, :cond_3

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v1, v6, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    if-lt v1, v13, :cond_4

    if-gt v1, v8, :cond_4

    iget v2, v6, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    if-lt v2, v14, :cond_4

    if-gt v2, v5, :cond_4

    move v0, v2

    goto :goto_1

    :cond_3
    move v5, v10

    :cond_4
    move/from16 v1, v16

    :goto_1
    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v6, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v6, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v8, v6, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanX:I

    iput v5, v6, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanY:I

    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-gt v2, v3, :cond_5

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-gt v2, v3, :cond_5

    const/4 v12, 0x1

    :cond_5
    iput-boolean v12, v6, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mIsMinSizeFulfilled:Z

    iget v2, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v6, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget v1, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    return-void
.end method

.method public isConfigurationOptional()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->isReconfigurable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCustomWidget()Z
    .locals 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "#custom-widget-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isMinSizeFulfilled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mIsMinSizeFulfilled:Z

    return p0
.end method

.method public isReconfigurable()Z
    .locals 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
