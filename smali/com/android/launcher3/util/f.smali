.class public final synthetic Lcom/android/launcher3/util/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/util/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/f;

    invoke-direct {v0}, Lcom/android/launcher3/util/f;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/f;->a:Lcom/android/launcher3/util/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    check-cast p2, [Lcom/android/launcher3/util/WindowBounds;

    invoke-static {p1, p2}, Lcom/android/launcher3/util/DisplayController;->h(Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;)V

    return-void
.end method
