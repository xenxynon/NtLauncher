.class public final synthetic Lcom/android/launcher3/touch/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/touch/p;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/touch/p;

    invoke-direct {v0}, Lcom/android/launcher3/touch/p;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/p;->a:Lcom/android/launcher3/touch/p;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;FF)V
    .locals 0

    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method
