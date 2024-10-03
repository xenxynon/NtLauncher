.class public Lcom/android/launcher3/util/DisplayController$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/DisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public final currentSize:Landroid/graphics/Point;

.field public final cutout:Landroid/graphics/Rect;

.field private final densityDpi:I

.field public final fontScale:F

.field private final mPerDisplayBounds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher3/util/window/CachedDisplayInfo;",
            "[",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

.field public final navigationMode:Lcom/android/launcher3/util/NavigationMode;

.field public final normalizedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

.field public final realBounds:Lcom/android/launcher3/util/WindowBounds;

.field public final rotation:I

.field public final supportedBounds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    invoke-direct {v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/window/WindowManagerProxy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/util/window/WindowManagerProxy;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/util/window/WindowManagerProxy;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/window/CachedDisplayInfo;",
            "[",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->mPerDisplayBounds:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplayInfo(Landroid/content/Context;)Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/window/CachedDisplayInfo;->normalize()Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/util/DisplayController$Info;->normalizedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget v4, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    iput v4, p0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iget-object v4, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iput-object v4, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget-object v4, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->cutout:Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/android/launcher3/util/DisplayController$Info;->cutout:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v5, v4, Landroid/content/res/Configuration;->fontScale:F

    iput v5, p0, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    iget v5, v4, Landroid/content/res/Configuration;->densityDpi:I

    iput v5, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    new-instance v5, Lcom/android/launcher3/util/DisplayController$PortraitSize;

    iget v6, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {v5, v6, v4}, Lcom/android/launcher3/util/DisplayController$PortraitSize;-><init>(II)V

    iput-object v5, p0, Lcom/android/launcher3/util/DisplayController$Info;->mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/android/launcher3/util/WindowBounds;

    invoke-virtual {p2, p1, v2}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getRealBounds(Landroid/content/Context;Lcom/android/launcher3/util/window/CachedDisplayInfo;)Lcom/android/launcher3/util/WindowBounds;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/util/DisplayController$Info;->realBounds:Lcom/android/launcher3/util/WindowBounds;

    if-nez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected normalizedDisplayInfo found, invalidating cache: "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v5, "DisplayController"

    invoke-static {v5, p3}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/android/launcher3/util/h;->a:Lcom/android/launcher3/util/h;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->estimateInternalDisplayBounds(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [Lcom/android/launcher3/util/WindowBounds;

    if-nez p3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "normalizedDisplayInfo not found in estimation: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    iget p1, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    aget-object p1, p3, p1

    invoke-virtual {v4, p1}, Lcom/android/launcher3/util/WindowBounds;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x4

    new-array p2, p1, [Lcom/android/launcher3/util/WindowBounds;

    const/4 v0, 0x0

    invoke-static {p3, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    aput-object v4, p2, p1

    invoke-virtual {v1, v3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/util/i;

    invoke-direct {p2, p0}, Lcom/android/launcher3/util/i;-><init>(Lcom/android/launcher3/util/DisplayController$Info;)V

    invoke-interface {p1, p2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/util/DisplayController$Info;->lambda$new$0(Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/util/DisplayController$Info;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->mPerDisplayBounds:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/util/DisplayController$Info;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/util/DisplayController$Info;)Lcom/android/launcher3/util/DisplayController$PortraitSize;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/util/DisplayController$Info;[Lcom/android/launcher3/util/WindowBounds;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/DisplayController$Info;->lambda$new$1([Lcom/android/launcher3/util/WindowBounds;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Invalid Cache) perDisplayBounds - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayController"

    invoke-static {p1, p0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$1([Lcom/android/launcher3/util/WindowBounds;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getDensityDpi()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    return p0
.end method

.method public isTablet(Lcom/android/launcher3/util/WindowBounds;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public smallestSizeDp(Lcom/android/launcher3/util/WindowBounds;)F
    .locals 1

    iget-object v0, p1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p1, p1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    invoke-static {p1, p0}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result p0

    return p0
.end method
